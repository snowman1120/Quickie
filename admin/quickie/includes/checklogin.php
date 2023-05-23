<?php
DEFINE('COOKIE_BASE_DOMAIN_NAME', 'quickie.com.do');
session_start();
error_reporting(0);
include('includes/dbconnection.php');
function check_login()
{	
    var_dump($_SESSION['odmsaid']);
    // var_dump(session_id($_GET['odmsaid']));
	if(strlen($_SESSION['odmsaid'])==0)
	{	
		$host = $_SERVER['HTTPS_HOST'];
		$uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
		$extra="index.php";		
		$_SESSION["id"]="";
		header("Location: https://quickie.com.do/quickie/");
	}
}
?>