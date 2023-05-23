<?php 
// DB credentials.
define('DB_HOST','quickie.com.do');
define('DB_USER','quickied_ticket');
define('DB_PASS','qGykRJs2FeMM');
define('DB_NAME','quickiedo_ticket');
// Establish database connection.z
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
$conn = mysqli_connect("localhost","quickiedo","Puff202020***","quickiedo_event");
?>