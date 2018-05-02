<?php
include('header.php');
$id=$_REQUEST['drawid'];
$query="SELECT w.id as id, w.name as winnername ,w.tel as tel ,w.prize as prize ,w.prefix as prefix from winner w inner join draw d on d.name=w.campaign where w.tel!='' and w.status='0' and d.id='$id' order by w.id asc";
$result=mysql_query($query);
?>
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.php" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Winners Details</a> </div>
    <h1>Winners Details</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">

<div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Winners Details</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Tel</th>
                  <th>Campaign</th>
                  <th>Prize</th>
                  <th>Send SMS</th>
                </tr>
              </thead>
              <tbody>
              <?php 
              $no=0;
              while($row=mysql_fetch_array($result)){?>
                <tr class="gradeX">
                <?php
                $no++;
                ?>
                  <td><?php echo $no?></td>
                  <td><?php echo $row['winnername']?></td>
                  <td><?php echo $row['tel']?></td>
                  <td><?php echo $row['prefix']?></td>
                  <td><?php echo $row['prize']?></td>
                  <td> <a href="notify.php?id=<?php echo $row['id']?>&drawid=<?php echo $id?>" class="btn btn-success" >SEND SMS</a> </td>
                </tr>
                <?php }?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

<?php include('footer.php');?>
</div>
<!--Footer-part-->
<!--end-Footer-part-->

</body>
</html>

<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script>