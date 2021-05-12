<html>
	<body>
		<?php
			$link = mysqli_connect('mariadb', 'username', 'password', 'dbname');
			if (!$link) {
			die('Could not connect: '.mysql_error());
			}
			echo "Connected successfully<p>";
			
			$query = "SELECT S.section_Num, S.classroom, S.meeting_Day, S.start_Time, S.end_Time, S.number_Of_Seats FROM Section S, Course C WHERE S.cour_Num = C.course_Num AND C.course_Num = '".$_POST['c_Num']."'";
			$result = $link->query($query);
			$nor = $result->num_rows;
	
			for($i=0;$i<$nor;$i++){
				$row = $result->fetch_assoc();
				echo $row["section_Num"]." ";
				echo $row["classroom"]." ";
				echo $row["meeting_Day"]." ";
				echo $row["start_Time"]." ";
				echo $row["end_Time"]." ";
				echo $row["number_Of_Seats"]."<br>";
			}

			$result->free_result();
			$link->close();
		?>
	</body>
</html>
