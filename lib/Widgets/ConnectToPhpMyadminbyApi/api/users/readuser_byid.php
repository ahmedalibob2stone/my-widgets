
<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once "../../library/function.php";

if(
isset($_GET["user_id"])
&& is_numeric($_GET["user_id"])&& is_auth()


)

{

$user_id =htmlspecialchars(strip_tags($_GET["user_id"]));
$selectArray=array();
array_push($selectArray ,$user_id);

 $sql ="select * from users where user_id=?";
$result = dbExec($sql,$selectArray);
$arrjson =array();
if($result->rowCount()>0)

{
while($row = $result->fetch(PDO::FETCH_ASSOC))

{
$arrjson =$row;

}
}
 $resJson =array("result" =>"success","code" =>"200" ,"200","message"=> $arrjson);
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

}else{
 $resJson =array("result" =>"fail","code" =>"400","message"=>"error");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

 }

?>