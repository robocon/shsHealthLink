<?php 
require_once 'config.php';

$sql = "SELECT * FROM `opcard` WHERE hn = '47-1' ";
$q = $dbi->query($sql);
$p = $q->fetch_assoc();

$gender = 'unknown';
if($p['sex']=='ญ'){
    $gender = 'female';
}elseif ($p['sex']=='ช') {
    $gender = 'male';
}


$name = array();
$name[] = array(
    'use'=>'official',
    'family'=>$p['surname'],
    'given'=>$p['name'],
    'prefix'=>$p['yot']
);

if(!empty($p['name_eng'])){
    $name_eng = array(
        'use'=>'usual',
        'family'=>$p['surname_eng'],
        'given'=>$p['name_eng'],
        'prefix'=>$p['prename']
    );

    $name[] = $name_eng;
}
$status = strtolower($p['status']);
$active = ($status=='y') ? true : false ;

list($y,$m,$d) = explode('-', $p['dbirth']);
$birthDate = ($y-543)."-$m-$d";
$res = [
    'resourceType'=>'Patient',
    'id'=>'c'.$p['idcard'],
    'identifier'=>[
        'use'=>'official',
        'system'=>'http://dopa.go.th',
        'value'=>$p['idcard']
    ],
    'active'=>$active,
    'name'=>$name,
    'gender'=>$gender,
    'birthDate'=>$birthDate,
];
header("Content-Type: application/json");
echo json_encode($res);