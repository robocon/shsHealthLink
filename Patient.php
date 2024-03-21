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

list($y,$m,$d) = explode('-', $p['dbirth']);

$birthDate = ($y-543)."-$m-$d";
$res = [
    'resourceType'=>'Patient',
    'id'=>$p['idcard'],
    'identifier'=>[
        'use'=>'official',
        'system'=>'http://dopa.go.th',
        'value'=>$p['idcard']
    ],
    'active'=>true,
    'name'=>[
        [
            'use'=>'official',
            'family'=>$p['surname'],
            'given'=>$p['name'],
            'prefix'=>$p['yot']
        ],
        [
            'use'=>'usual',
            'family'=>$p['surname_eng'],
            'given'=>$p['name_eng'],
            'prefix'=>$p['prename']
        ],
    ],
    'gender'=>$gender,
    'birthDate'=>$birthDate,
];

echo json_encode($res);