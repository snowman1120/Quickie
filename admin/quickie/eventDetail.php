<?php
include('includes/checklogin.php');
check_login();
// Code for deleting product from cart

?>
<!DOCTYPE html>
<html lang="en">
<?php @include("includes/head.php");?>
<head>
  <style>
    .event_info{
      width:40%;
      height:calc(100vh - 70px);
      float:left;
      background:#0d1b28;
      color:#fff;
      font-family:none;
      border-top:1px solid;
      border-right:1px solid
    }
    .location_map{
      width:60%;
      margin-left:40%;
    }
    .info-item{
      position:relative;
      width:100%;
      height:10%;
    }
    .event-info-title{
      position:absolute;
      top:50%;
      transform:translateY(-50%);
      text-align:center;
      font-size:20px;
      width:40%;
    }
    .event-info-content{
      position:absolute;
      top:50%;
      left:50%;
      transform:translateY(-50%);
    }
    .attachmentfile{
      height:90%;
      margin-top:5%
    }
  </style>
      <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
</head>
<body>
<!--  Author Name: Artem Sergiev From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
  <div>
  <?php @include("includes/header.php");?>
    <?php
      if(isset($_GET['id']))
      {
        $rid=intval($_GET['id']);
        $sql="SELECT * FROM eventData where ID=$rid";
        $query = $dbh -> prepare($sql);
        $query->execute();
        $row=$query->fetchAll(PDO::FETCH_OBJ)[0];
      }
    ?>
    <div class='event_info'>
      <div class="info-item">
        <div class='event-info-title'>
          <div>Event Name</div>
        </div>
        <div class='event-info-content'>
          <div><?php echo htmlentities($row->ticketname) ?></div>
        </div>
      </div>
      <div style="position:relative">
        <div class='event-info-title'>description</div>
        <div style="word-break:break-word;text-align:left;margin-left:50%"><?php echo htmlentities($row->description) ?></div>
      </div>
      <div class="info-item">
        <div class='event-info-title'>Gender</div>
        <div class='event-info-content'><?php echo htmlentities($row->gender) ?></div>
      </div>
      <div class="info-item">
        <div class='event-info-title'>Venue</div>
        <div class='event-info-content'><?php echo htmlentities($row->venue) ?></div>
      </div>
      <div class="info-item">
        <div class='event-info-title'>Count</div>
        <div class='event-info-content'><?php echo htmlentities($row->ticketcount) ?></div>
      </div>
      <div class="info-item">
        <div class='event-info-title'>Start Time</div>
        <div class='event-info-content'><?php echo htmlentities($row->eventStartDate); echo htmlentities($row->starttime) ?></div>
      </div>
      <div class="info-item">
        <div class='event-info-title'>End Time</div>
        <div class='event-info-content'><?php echo htmlentities($row->eventEndDate); echo htmlentities($row->endtime) ?></div>
      </div>
      <div style="width:100%;text-align:center;height:40%;position:relative;background:#0d1b28">
        <?php if($row->filetype[0] == 'v') { ?>
          <video class="attachmentfile" style="width:100%" controls><source src='assets/upload/<?php echo htmlentities($row->ticketfile); ?>' type='video/mp4'></video><?php } ?>
        <?php if($row->filetype[0] == 'i') { ?>
          <img class="attachmentfile" src='assets/upload/<?php echo htmlentities($row->ticketfile); ?>' style="width:75%;border-radius:0%"><?php } ?>
      </div>
    </div>
    <div class='location_map'>
    <div id='map' style="width:100%;height:100%"></div>
    </div>
  </div>
  <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script>
    var elem = document.getElementsByClassName('event_info')[0].scrollHeight
    console.log(elem)
    document.getElementsByClassName('location_map')[0].style.height = elem + 10 + 'px'
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
      center: new google.maps.LatLng(51.5, -0.2), zoom: 10
  }
  var map = new google.maps.Map(mapCanvas, mapOptions);
  </script>
  <?php @include("includes/foot.php");?>
</body>
</html>



