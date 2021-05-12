<html>
<body>
<?php
 $link = mysqli_connect('mariadb', 'username', 'password', 'dbname');
 if (!$link) {
  die('Could not connect: '.mysql_error());
 }
 echo "Connected successfully<p>";

 echo ($_POST['c_Num']."-".$_POST['s_Num']."<br>");
 $query = "SELECT COUNT(*) as total FROM Section S, Enrollment_Records E WHERE S.section_Num = '".$_POST['c_Num']."-".$_POST['s_Num']."' AND E.grade = 'A' AND E.sec_Num = S.section_Num";
 $result = $link->query($query);
 $row = $result->fetch_assoc();
 echo ("A: ".$row[total]."<br>");
 $result->free_result();

 $query = "SELECT COUNT(*) as total FROM Section S, Enrollment_Records E WHERE S.section_Num = '".$_POST['c_Num']."-".$_POST['s_Num']."' AND E.grade = 'B' AND E.sec_Num = S.section_Num";
 $result = $link->query($query);
 $row = $result->fetch_assoc();
 echo ("B: ".$row[total]."<br>");
 $result->free_result();

 $query = "SELECT COUNT(*) as total FROM Section S, Enrollment_Records E WHERE S.section_Num = '".$_POST['c_Num']."-".$_POST['s_Num']."' AND E.grade = 'C' AND E.sec_Num = S.section_Num";
 $result = $link->query($query);
 $row = $result->fetch_assoc();
 echo ("C: ".$row[total]."<br>");
 $result->free_result();

 $query = "SELECT COUNT(*) as total FROM Section S, Enrollment_Records E WHERE S.section_Num = '".$_POST['c_Num']."-".$_POST['s_Num']."' AND E.grade = 'D' AND E.sec_Num = S.section_Num";
 $result = $link->query($query);
 $row = $result->fetch_assoc();
 echo ("D: ".$row[total]."<br>");

 $result->free_result();
 $query = "SELECT COUNT(*) as total FROM Section S, Enrollment_Records E WHERE S.section_Num = '".$_POST['c_Num']."-".$_POST['s_Num']."' AND E.grade = 'F' AND E.sec_Num = S.section_Num";
 $result = $link->query($query);
 $row = $result->fetch_assoc();
 echo ("F: ".$row[total]."<br>");

 $result->free_result();
 $link->close();
?>
</body>
</html>
