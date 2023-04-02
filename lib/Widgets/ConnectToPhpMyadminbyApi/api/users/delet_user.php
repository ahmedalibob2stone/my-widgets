
<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once "../../library/function.php";

if(
isset($_GET["user_id"])
&& is_numeric($_GET["user_id"])
&& is_auth()


)

{

$user_id =htmlspecialchars(strip_tags($_GET["user_id"]));
$user_id =htmlspecialchars(strip_tags($_GET["user_id"]));
$deletArray=array();
array_push($deletArray ,$user_id);

 $sql ="delet  from users where user_id=?";
$result = dbExec($sql,$selectArray);

 $resJson =array("result" =>"success","code" =>"200" ,"200","message"=> "done");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

}else{
 $resJson =array("result" =>"fail","code" =>"400","message"=>"error");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

 }

?>