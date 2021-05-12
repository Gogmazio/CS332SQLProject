<html>
<body>
<?php
 $link = mysqli_connect(‘mariadb’, ‘username’, ‘password’, ‘dbname’);
 if (!$link) {
  die('Could not connect: '.mysql_error());
 }
 echo "Connected successfully<p>";

 $query = "SELECT S.section_Num, S.meeting_Day, S.start_Time, S.end_Time FROM Course C, Section S, Professor P WHERE P.SSN = ".$_POST['SSN']." AND P.SSN = S.prof_SSN AND C.course_Num = S.cour_Num";
 $result = $link->query($query);
 $nor = $result->num_rows;

 for($i=0;$i<$nor;$i++){
  $row = $result->fetch_assoc();
  echo $row["section_Num"]." ";
  echo $row["meeting_Day"]." ";
  echo $row["start_Time"]." ";
  echo $row["end_Time"]."<br>";
 }

 $result->free_result();
 $link->close();
?>
</body>
</html>
