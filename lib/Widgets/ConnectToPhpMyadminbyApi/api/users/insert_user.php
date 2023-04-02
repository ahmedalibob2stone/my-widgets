
<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once "../../library/functions.php";

if(
isset($_POST["user_name"])

&& isset($_POST["user_pwd"])
&& isset($_POST["user_mobile"])
&& is_auth()

)

{
$user_name =$_POST["user_name"];
$user_pwd =$_POST["user_pwd"];
$user_mobile =$_POST["user_mobile"];
$user_active =isset($_POST["user_active"])? $_POST["user_active"]:"0";
$user_note =isset($_POST["user_note"])? $_POST["user_note"]:"";



$insertArray=array();
array_push($insertArray,htmlspecialchars(strip_tags($user_name)));
array_push($insertArray,htmlspecialchars(strip_tags($user_pwd)));
array_push($insertArray,htmlspecialchars(strip_tags($user_mobile)));
array_push($insertArray,htmlspecialchars(strip_tags($user_active)));
array_push($insertArray,htmlspecialchars(strip_tags($user_note)));
$sql="insert into users(user_name ,user_pwd, user_mobile,user_active,user_note,user_datetime,user_lastdate)
values(? , ? ,? ,? ,? ,now() ,now() )";


$result = dbExec($sql, $insertArray);

 $resJson =array("result" =>"success","code" =>"200","message"=>"done");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);
}else{
 $resJson =array("result" =>"fail","code" =>"400","message"=>"error");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

 }

