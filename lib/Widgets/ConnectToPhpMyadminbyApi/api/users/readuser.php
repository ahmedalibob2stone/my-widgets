
<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once "../../library/functions.php";

if(
  isset($_GET["start"])
  && is_numeric($_GET["start"])
  && isset($_GET["end"])
  && is_numeric($_GET["end"])
  && is_auth()

)

{
$start =$_GET["start"];
$end =$_GET["end"];


 $sql ="select * from users order by user_id desc limit $start , $end";
 $result = dbExec($sql, []);
 $arrJson =array();
 if($result->rowCount() > 0)

{
while($row = $result->fetch(PDO::FETCH_ASSOC))

{
  $arrJson[] =$row;

}
}
 $resJson =array("result" =>"success","code" =>"200" ,"200","message"=> $arrJson);
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

}else{
 $resJson =array("result" =>"fail","code" =>"400","message"=>"error");
 echo json_encode($resJson,JSON_UNESCAPED_UNICODE);

 }

