<?php
include('header.php');
// Be sure to include the file you've just downloaded
require_once('AfricasTalkingGateway.php');
$id=$_REQUEST['id'];
$drawid=$_REQUEST['drawid'];
// Specify your login credentials
$username   = "drawgift";
$apikey     = "0e243f895e2b851d90cad7d21ca706afd5f699b9af0e58a87cf18d432a1da867";
// NOTE: If connecting to the sandbox, please use your sandbox login credentials
// Specify the numbers that you want to send to in a comma-separated list
// Please ensure you include the country code (+254 for Kenya in this case)
//$recipients = "+254722856900,+254728944815,+254724661481,+254716671496";
$admins=mysql_query("SELECT w.id as id ,w.name as name ,w.tel as tel ,w.prize as prize ,w.prefix as prefix from winner w  where w.id='$id' order by w.id asc");

while ($tels=mysql_fetch_array($admins)) {
  # code...

$phone=$tels['tel'];
$wid=$tels['id'];
$name=$tels['name'];
$prize=$tels['prize'];
$prefix=$tels['prefix'];
$recipients=$phone;
// And of course we want our recipients to know what we really do
$message    = "Congratulations on winning Gift Voucher worth Kes. ".$prize." in the ".$prefix." draw of Galleria Shopping Malls Shop On Us Christmas Promotion! Please come collect your Voucher from Galleria Shopping Malls Management Office from Monday to Friday between 9am and 4pm.Kindly note we are closed on saturday and sunday.";

$from = "GALLERIA";
// Create a new instance of our awesome gateway class
$gateway    = new AfricasTalkingGateway($username, $apikey);
// NOTE: If connecting to the sandbox, please add the sandbox flag to the constructor:
/*************************************************************************************
             ****SANDBOX****
$gateway    = new AfricasTalkingGateway($username, $apiKey, "sandbox");
**************************************************************************************/
// Any gateway error will be captured by our custom Exception class below, 
// so wrap the call in a try-catch block
try 
{ 
  // Thats it, hit send and we'll take care of the rest. 
  $results = $gateway->sendMessage($recipients, $message,$from);
            
  foreach($results as $result) {
    // status is either "Success" or "error message"
    echo " Number: " .$result->number;
    echo " Status: " .$result->status;
    echo " MessageId: " .$result->messageId;
    echo " Cost: "   .$result->cost."\n";
  }
}
catch ( AfricasTalkingGatewayException $e )
{
  echo "Encountered an error while sending: ".$e->getMessage();
}
mysql_query("UPDATE winner set status='1' where id='$wid'");

}

//echo "<script>alert('SMS SUCCEFULLY SENT ')</script>";
   echo "<script>location.replace('list.php?drawid=$drawid')</script>";
// DONE!!! 
?>