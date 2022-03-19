<?php
    include_once "../phpFunction/function.php" ;
    $conn=connect_db();
   // $matkhaumoi=$matkhaumoi."000iiizzz";
    //$matkhaumoi=md5($matkhaumoi);
    $mk="root1";
    $mk=$mk."000iiizzz";
    $mk=md5($mk);
    $sql="UPDATE KhachHang SET KH_MATKHAU='$mk' WHERE KH_MA=1";
    mysqli_query($conn,$sql);

?>