   <div id="loading"></div>
    <div id="page">
    </div>
    <div class="bg-white topbar">
     
    </div>
 <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 d-flex flex-row">

  <div class="navbar-menu-wrapper d-flex align-items-stretch w-100">
   
   
    <ul class="navbar-nav navbar-nav-left">
        <li class="nav-item dropdown">
            <a class="nav-link" href="dashboard.php">Event Data</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="ticket_data.php">Create Event</a>
      </li>
           <?php
        $aid=$_SESSION['odmsaid'];
        $sql="SELECT * from  tbladmin where ID=:aid";
        $query = $dbh -> prepare($sql);
        $query->bindParam(':aid',$aid,PDO::PARAM_STR);
        $query->execute();
        $results=$query->fetchAll(PDO::FETCH_OBJ);
        $cnt=1;
        if($query->rowCount() > 0)
        {  
            foreach($results as $row)
            { 
                if($row->AdminName=="Admin"  )
                { 
                    ?>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">User management</a>
            <div class="dropdown-menu  navbar-dropdown" aria-labelledby="dropdown05">
              <a class="dropdown-item" href="userregister.php">Manage users</a>
              <?php
                $aid=$_SESSION['odmsaid'];
                $sql="SELECT * from  tbladmin where ID=:aid";
                $query = $dbh -> prepare($sql);
                $query->bindParam(':aid',$aid,PDO::PARAM_STR);
                $query->execute();
                $results=$query->fetchAll(PDO::FETCH_OBJ);
                $cnt=1;
                if($query->rowCount() > 0)
                {  
                    foreach($results as $row)
                    { 
                        if($row->AdminName=="Admin" )
                        { 
                            ?>
                            <a class="dropdown-item" href="user_permission.php">User Roles</a>
                            <?php 
                        } 
                    }
                } ?> 
            </div>
          </li>
              <?php 
                } 
            }
        } ?> 
        </ul>


      
      
         <div style="position:absolute;right:0">
          <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 d-flex flex-row bg-white">
          <div class="navbar-menu-wrapper d-flex align-items-stretch w-100 " style="background:#0d1b28">
          <ul class="navbar-nav navbar-nav-right">

      <li class="nav-item nav-profile dropdown">
        <?php
        $aid=$_SESSION['odmsaid'];
        $sql="SELECT * from  tbladmin where ID=:aid";
        $query = $dbh -> prepare($sql);
        $query->bindParam(':aid',$aid,PDO::PARAM_STR);
        $query->execute();
        $results=$query->fetchAll(PDO::FETCH_OBJ);
        $cnt=1;
        if($query->rowCount() > 0)
        {
          foreach($results as $row)
          { 
            ?>
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <?php 
                if($row->Photo=="avatar15.jpg")
                { 
                  ?>
                  <img class="img-avatar" src="assets/img/avatars/avatar15.jpg" alt="">
                  <?php 
                } else { 
                  ?>
                  <img class="img-avatar" src="assets/img/profileimages/<?php  echo $row->Photo;?>" alt=""> 
                  <?php 
                } ?>
              </div>
              <div class="nav-profile-text ">
                <p class="mb-1 text-dark"><?php  echo $row->FirstName;?> <?php  echo $row->LastName;?></p>
              </div>
            </a>
            <?php
          }
        } ?>
        <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
          <a class="dropdown-item" href="profile.php">
            <i class="mdi mdi-account mr-2 text-success"></i> Profile </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="change_password.php"><i class="mdi mdi-key mr-2 text-success"></i> Change Password </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="logout.php">
              <i class="mdi mdi-logout mr-2 text-danger"></i> Signout </a>
            </div>
          </li>
        </div>
      </nav>
      </div>
        </ul>
      </div>
    </nav>


<script>
//   $(window).scroll(function () {
//   console.log($(window).scrollTop())
//   if ($(window).scrollTop() > 63) {
//     $('.navbar').addClass('navbar-fixed');
//   }
//   if ($(window).scrollTop() < 64) {
//     $('.navbar').removeClass('navbar-fixed');
//   }
// });
</script>
<style>
  .navbar-fixed {
  top: 0;
  z-index: 100;
  position: fixed;
  width: 100%;
}
</style>

