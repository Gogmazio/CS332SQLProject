<html>
<body>
<?php
 $link = mysqli_connect('mariadb', 'username', 'password', 'dbname');
 if (!$link) {
  die('Could not connect: '.mysql_error());
 }
 echo "Connected successfully<p>";

 $query = "SELECT S.section_Num, E.grade FROM Section S, Course C, Enrollment_Records E, Student_Records SR  WHERE SR.CWID = ".$_POST['CWID']." AND SR.CWID = E.stu_CWID AND S.section_Num = E.sec_Num AND C.course_Num = S.cour_Num;";
 $result = $link->query($query);
 $nor = $result->num_rows;

 for($i=0;$i<$nor;$i++){
  $row = $result->fetch_assoc();
  echo $row["section_Num"]." ";
  echo $row["grade"]."<br>";
 }

 $result->free_result();
 $link->close();
?>
</body>
</html>