
<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once "../../library/function.php";

if(
isset($_POST["user_id"])&& is_numeric($_POST["user_id"])

&&isset($_POST["user_name"])

&& isset($_POST["user_pwd"])
&& isset($_POST["user_mobile"])&& is_auth()

)

{
$user_name =$_POST["user_name"];
$user_pwd =$_POST["user_pwd"];
$user_mobile =$_POST["user_mobile"];
$user_active =isset($_POST["user_active"])? $_POST["user_active"]:"0";
$user_note =isset($_POST["user_note"])? $_POST["user_note"]:"";

$use_id =$_POST["user_id"];


$updateArrray=array();
array_push($updateArrray,htmlspecialchars(strip_tags($user_name)));
array_push($updateArrray,htmlspecialchars(strip_tags($user_pwd)));
array_push($updateArrray,htmlspecialchars(strip_tags($user_mobile)));
array_push($updateArrray,htmlspecialchars(strip_tags($user_active)));
array_push($updateArrray,htmlspecialchars(strip_tags($user_note)));
array_push($updateArrray,htmlspecialchars(strip_tags($user_id)));

$sql="update  users set user_name=?,user_mobile=?,user_pwd=?,user_active=?,user_note=?,user_lastdate=now(),
where user_id=?";


$result = dbExec($sql, $updateArrray);

 $resJson =array("result" =>"success","code" =>"200","message"=>"done");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);
}else{
 $resJson =array("result" =>"fail","code" =>"400","message"=>"error");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

 }

?>