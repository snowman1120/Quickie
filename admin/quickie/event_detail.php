<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(!empty($_POST["fullname"])) {
  $fullname= $_POST["fullname"];
  $sql ="SELECT UserName FROM tbladmin WHERE UserName=:fullname";
  $query= $dbh -> prepare($sql);
  $query-> bindParam(':fullname', $fullname, PDO::PARAM_STR);
  $query-> execute();
  $results = $query -> fetchAll(PDO::FETCH_OBJ);
  $cnt=1;
  if($query -> rowCount() > 0)
  {
    echo "<script>alert('Username already exists. try another one');</script>";
} else{
    if(isset($_POST['signup']))
    { 
        $fname=$_POST['fullname'];
        $firstname=$_POST['firstname'];
        $lastname=$_POST['lastname'];
        $email=$_POST['emailid']; 
        $staffid=$_POST['staffid']; 
        $mobile=$_POST['mobileno'];
        $dignity=$_POST['dignity']; 
        $password=md5($_POST['password']); 
        $sql="INSERT INTO  tbladmin(Staffid,AdminName,UserName,FirstName,LastName,Email,MobileNumber,Password) VALUES(:staffid,:dignity,:fname,:firstname,:lastname,:email,:mobile,:password)";
        $query = $dbh->prepare($sql);
        $query->bindParam(':fname',$fname,PDO::PARAM_STR);
        $query->bindParam(':firstname',$firstname,PDO::PARAM_STR);
        $query->bindParam('lastname',$lastname,PDO::PARAM_STR);
        $query->bindParam(':email',$email,PDO::PARAM_STR);
        $query->bindParam(':staffid',$staffid,PDO::PARAM_STR);
        $query->bindParam(':dignity',$dignity,PDO::PARAM_STR);
        $query->bindParam(':mobile',$mobile,PDO::PARAM_STR);
        $query->bindParam(':password',$password,PDO::PARAM_STR);
        $query->execute();
        $lastInsertId = $dbh->lastInsertId();
        if($lastInsertId)
        {
            echo "<script>
                alert('Registration successfull. Now you can login');
                window.location.href = 'index.php'    
            </script>";
        }
        else 
        {
            echo "<script>alert('Something went wrong. Please try again');</script>";
        }
    }
}
}
?>
<script>
    function checkAvailability() 
    {
        $("#loaderIcon").show();
        jQuery.ajax(
        {
            url: "check_availability.php",
            data:'emailid='+$("#emailid").val(),
            type: "POST",
            success:function(data)
            {
                $("#user-availability-status").html(data);
                $("#loaderIcon").hide();
            },
            error:function (){}
        });
    }
</script>

<script>
    function checkAvailability2() 
    {
        $("#loaderIcon").show();
        jQuery.ajax(
        {
            url: "check_availability.php",
            data:'fullname='+$("#fullname").val(),
            type: "POST",
            success:function(data)
            {
                $("#user-availability-status2").html(data);
                $("#loaderIcon").hide();
            },
            error:function (){}
        });
    }
</script>
<script type="text/javascript">
    function valid()
    {
        if(document.signup.password.value!= document.signup.confirmpassword.value)
        {
            alert("Password and Confirm Password Field do not match  !!");
            document.signup.confirmpassword.focus();
            return false;
        }
        return true;
    }
</script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
      .form-control{
        border:1px solid rgb(240,240,240) !important;
        border-radius:4px !important;
        transition:all 0.5s
      }
      .form-control:focus{
        border-color:blue !important
      }
    </style>
  </head>
  <?php @include("includes/head.php");?>
  <body>
<!--  Author Name: Artem Sergiev From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                
                <h6 class="font-weight-light">Please enter below detail</h6>
                <form class="js-validation-signin px-30" method="post" name="signup" onSubmit="return valid();">
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                                <label for="login-username">Staffid</label>
                                <input type="text" class="form-control" name="staffid" placeholder="Staff ID" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                                <label for="login-username">Full Name</label>
                                <input type="text" class="form-control" name="fullname" id="fullname" placeholder="User Name" onBlur="checkAvailability2()" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                              <label for="login-password">First Name</label>
                              <input type="text" class="form-control" name="firstname" placeholder="First Name" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                                <label for="login-password">Last Name</label>
                                <input type="text" class="form-control" name="lastname" placeholder="Last Name" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                                <label for="login-password">Email Address</label>
                                <input type="email" class="form-control" name="emailid" id="emailid" onBlur="checkAvailability()" placeholder="Email Address" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                                <label for="login-password">Password</label>
                                <input type="password"  class="form-control" name="password" placeholder="Password" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="form-material floating">
                                <label for="login-password">Confirm Password</label>
                                <input type="password"  class="form-control" name="confirmpassword" placeholder="Confirm Password" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="mt-3">
                    <button type="submit" value="Register" name="signup" id="submit" class="btn btn-block btn-info btn-lg font-weight-medium auth-form-btn">SignUp</button>
                  </div>
                  <div class="text-center mt-4 font-weight-light"> Have Account <a href="index.php" class="text-info">Click here</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      
    </div>
    
    
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    
    
    
    
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    
  </body>
<!--  Author Name: Artem Sergiev From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
</html>