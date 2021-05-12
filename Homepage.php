<html>
<body>
<p>Test values:</p>
<p>Professor SSNs: 1234, 1357, 5678</p>
<p>Course Numbers: CPSC151, CPSC332, ENGL100, ENGL200, MATH100</p>
<p>Section Numbers: 1, 2 (for CPSC151 and ENGL100 only)</p>
<p>Professor Interface</p>
<form action="profInterfaceA.php" method="POST">
	<label for="SSN">SSN:</label><br>
	<input type="text" id="SSN" name="SSN" /><br>
	<input type="submit" name="submit" value="Submit" />
</form>	
<form action="profInterfaceB.php" method="POST">
	<label for="Course Number">Course Number:</label><br>
	<input type="text" id="c_Num" name="c_Num" /><br>
	<label for="Section Number">Section Number:</label><br>
	<input type="text" id="s_Num" name="s_Num" /><br>
	<input type="submit" name="submit" value="Submit" />
</form>
<p>Test values:</p>
<p>Course Numbers: CPSC151, CPSC332, ENGL100, ENGL200, MATH100</p>
<p>CWIDs: 1234, 3214, 4512, 1279, 9582, 0291, 1029, 1000</p>
<p>Student Interface</p>
<form action="stuInterfaceA.php" method="POST">
	<label for="Course Number">Course Number:</label><br>
	<input type="text" id="c_Num" name="c_Num" /><br>
	<input type="submit" name="submit" value="Submit" />
</form>
<form action="stuInterfaceB.php" method="POST">
	<label for="CWID">CWID:</label><br>
	<input type="text" id="CWID" name="CWID" /><br>
	<input type="submit" name="submit" value="Submit" />
</form>
</body>
</html>
