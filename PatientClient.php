<?php 
ini_set('memory_limit', '-1');
ini_set('max_execution_time', 0);
set_time_limit(0);
require_once 'config.php';

$sql = "SELECT b.*,SUBSTRING(`lastupdate`,1,10) AS `lastupdate2` FROM (
    SELECT MAX(`row_id`) AS `last_id`, `idcard`, `idguard`, COUNT(`idcard`) 
    FROM `opcard` 
    WHERE (`idcard` <> '' AND `idcard` != '0' AND `idcard` NOT LIKE '-%') 
    GROUP BY `idcard`
    ORDER BY COUNT(`idcard`) DESC
) AS a 
LEFT JOIN `opcard` AS b ON b.`row_id` = a.`last_id` ";
$q = $dbi->query($sql);
while ($p = $q->fetch_assoc()) {

    $gender = 'unknown';
    if($p['sex']=='ญ'){
        $gender = 'female';
    }elseif ($p['sex']=='ช') {
        $gender = 'male';
    }
    
    // mx07 ทำลายประวัติ
    // mx04 เสียชีวิต
    // mx05 ยุบประวัติ
    $active = 0;
    if(!empty($p['idguard'])){
        $idguard = substr(strtolower($p['idguard']),0,3);
        $falseIdguard = array('mx07','mx04','mx05');
        $active = (in_array($idguard, $falseIdguard)===true) ? 0 : 1 ;
    }
    
    $birthDate = bc_to_ad($p['dbirth']);
    if(empty($p['lastupdate']) OR empty($p['lastupadte2'])){
        $lastUpdate2 = substr($p['regisdate'], 0, 10);
        $lastUpdate = $p['regisdate'];
    }else{
        $lastUpdate2 = bc_to_ad($p['lastupdate2']);
        $lastUpdate = bc_to_ad($p['lastupdate']);
    }
    $last_update_date_time = date_format(date_create($lastUpdate), 'c');

    $sql = "INSERT INTO `client_patient` (
    `source_id`, `cid`, `active`, `name_prefix`, `name_given`, `name_family`, `gender`, `birth_date`, `last_visit_date`, `last_update_date_time`) 
    VALUES 
    (
    '".SOURCE_ID."', '".$p['idcard']."', '$active', '".$p['yot']."', '".$p['name']."', '".$p['surname']."', '$gender', '$birthDate', '$lastUpdate2', '$last_update_date_time'
    );";
    $save = $dbi->query($sql);

}

// header("Content-Type: application/json");
// echo json_encode($res);