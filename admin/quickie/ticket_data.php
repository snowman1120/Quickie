<?php 
include('includes/dbconnection.php');
include('includes/checklogin.php');
check_login();
if(isset($_POST['submit']))
{
  $adminid=$_SESSION['odmsaid'];
  $ticketname=$_POST['ticketname'];
  $eventEndDate=$_POST['eventEndDate'];
  $tickettime=$_POST['tickettime'];
  $description=$_POST['description'];
  $starttime=$_POST['starttime'];
  $eventStartDate=$_POST['eventStartDate'];
  $endtime=$_POST['endtime'];
  $venue=$_POST['venue'];
  $gender=$_POST['gender'];
  $filetype=$_FILES['ticketfile']['type'];
  $ticketcount=$_POST['ticketcount'];
  if($filetype == 'video/avi'){
    echo "<script>alert('Only upload MP4 file')</script>";
  }
  else{
    $ticketfile=$_FILES["ticketfile"]["name"];
    move_uploaded_file($_FILES["ticketfile"]["tmp_name"],"assets/upload/".$_FILES["ticketfile"]["name"]);
    $sql="INSERT INTO  eventData(ticketname,description,eventStartDate,eventEndDate,starttime,endtime,venue,gender,ticketfile,filetype,ticketcount) VALUES(:ticketname,:description,:eventStartDate,:eventEndDate,:starttime,:endtime,:venue,:gender,:ticketfile,:filetype,:ticketcount)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':ticketname',$ticketname,PDO::PARAM_STR);
    $query->bindParam(':eventEndDate',$eventEndDate,PDO::PARAM_STR);
    $query->bindParam(':venue',$venue,PDO::PARAM_STR);
    $query->bindParam(':eventStartDate',$eventStartDate,PDO::PARAM_STR);
    $query->bindParam(':starttime',$starttime,PDO::PARAM_STR);
    $query->bindParam(':description',$description,PDO::PARAM_STR);
    $query->bindParam(':endtime',$endtime,PDO::PARAM_STR);
    $query->bindParam(':gender',$gender,PDO::PARAM_STR);
    $query->bindParam(':ticketfile',$ticketfile,PDO::PARAM_STR);
    $query->bindParam(':filetype',$filetype,PDO::PARAM_STR);
    $query->bindParam(':ticketcount',$ticketcount,PDO::PARAM_STR);
    $query->execute();
    echo "<script>
      alert('succefully register');
      window.location.href = 'dashboard.php'
      </script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="assets/css/style.css">

  <style>
    .ticket-form{
      width:60%;
      margin-left:20%;
      margin-top:5%;
    }
    .ticket-fileUpload{
      width:20%;
      height:46px;
      background-color:#57c7d4;
      color:#fff;
      border:none
    }
  </style>
  <script src='/assets/js/demo.js'>
<?php @include("includes/head.php");?>
<body>
  <div class="container-scroller">
    <?php @include("includes/header.php");?>
      <div class = 'ticket-form'>
        <div class = 'form-group first"'>
          <form role="form" id=""  method="post" enctype="multipart/form-data" class="">
            <div class = 'form-group first group1'>
              <div><p>EventName</p> <input type = 'text' class="form-control form-control-lg" name="ticketname" id="input1" placeholder="name" required></div>
              <div style="margin-top:20px"><p>Event Description</p> <textarea name="description" id="description" style="width:100%;height:30vh;margin-top:10px"></textarea>  </div>
            </div>
            <div class = 'form-group first group2' class = 'group2' style="display:none">
              <div style="float:left;width:50%"><p>StartDate</p><input type = 'date' class="form-control form-control-lg" name="eventStartDate" id="input2-1" placeholder="mm/dd/yy" required></div>
            <div style="width:50%;display:inline-block"><p>EndDate</p><input type = 'date' class="form-control form-control-lg" name="eventEndDate" id="input2-2" placeholder="mm/dd/yy" required></div>
            </div>
            <div class = 'form-group first group3' style="display:none">
              <div style="float:left;width:50%"><p>StartTime</p><input type = 'time' class="form-control form-control-lg" name="starttime" id="input3-1" required></div>
              <div style="display:inline-block;width:50%"><p>EndTime</p><input type = 'time' class="form-control form-control-lg" name="endtime" id="input3-2" required></div>
            </div>
            <div class = 'form-group first group4' class='group4' style="display:none">
              <p>Venue</p><input type = 'text' class="form-control form-control-lg" name="venue" id="input4" placeholder="venue" required>
            </div>
            <div class = 'form-group first group5' class='group5' style="display:none">
              <p>Gender</p><select class="form-control form-control-lg" name="gender" id="input5" placeholder="gender" required>
                <option>Male</option>
                <option>Female</option>
                <option>Both</option>
              </select>
            </div>
            <div class = 'form-group first group6' class='group6' style="display:none">
              <p>Ticket Count</p>
              <input type = 'text' class="form-control form-control-lg" name="ticketcount" id="input6" placeholder="count" required>
            </div>
            <div class = 'form-group first group7' class='group7' style="display:none">
              <p>AttachFile</p>
              <input type="file" name="ticketfile" class="file-upload-default" id='input7'>
              <input type="text" class="form-control file-upload-info " disabled placeholder="Upload Image" style="width:80%;float:left">
              <a class="btn btn-gradient-primary file-upload-browse" style="height:46px;width:20%">Upload</a>
            </div>
            <a class="btn btn-gradient-primary" onclick="next()" id='next' style="float:right">
              <i class="fa fa-plus "></i> NEXT
            </a>
            <p id ='complete' style="display:none;font-size:20px;font-family:none;text-align:center">All Field Completed</p>
            <button class="btn btn-gradient-primary" type="submit" id='submit' name="submit" style="float:right;display:none">
              <i class="fa fa-plus "></i> Submit
            </button>
          </form>
        </div>
      </div>
    <script src="assets/js/file-upload.js"></script>
    <?php @include("includes/foot.php");?>
</div>
<!--  Author Name: Artem Sergiev From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
<script type="text/javascript">
  function next(){
    for(var i = 1;i<8;i++){
      var elem = document.getElementsByClassName('group'+i)[0]
      var afterElem = i != 7 && document.getElementsByClassName(`group${i+1}`)[0]
      if(elem.style.display != 'none'){
        var input = document.getElementById('input'+i)
        if(i != 3 && i != 2 && input.value != ''){
          if(i == 7){
            document.getElementById('next').style.display='none'
            document.getElementById('complete').style.display='block'
            document.getElementById('submit').style.display='block'
          }
          else{
            afterElem.style.display = 'block'
          }
          elem.style.display = 'none'
        }
        else if(i == 2){
          var startDate = document.getElementById('input'+i+'-1')
          var endDate = document.getElementById('input'+i+'-2')
          if(startDate.value != '' && endDate.value != ''){
            elem.style.display = 'none'
            afterElem.style.display = 'block'
          }
        }
        else if(i == 3) {
          var starttime = document.getElementById('input'+i+'-1')
          var endtime = document.getElementById('input'+i+'-2')
          if(starttime.value != '' && endtime.value != ''){
            elem.style.display = 'none'
            afterElem.style.display = 'block'
          }
        }
        break
      }
    }
  }      
</script>
</body>
</html>