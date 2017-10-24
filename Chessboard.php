<!DOCTYPE html>
<html>
<head>
	<title>PHP-Generated Chessboard</title>
</head>
<body>
<?php
	$black = false;
	
	function color() {
		return $black ? "black" : "white";
	}
	
	echo "<table style=\"width: 500px; height: 500px;\">";
	for ($i=1; $i<9; $i++) {
		echo "<tr>";
		for ($j=1; $j<9; $j++) {
			echo "<td style=\"width:12.5%; height:12.5%; background-color:".color().";\"></td>";
			if ($j!=8) $black = $black ? false : true;
		}
		echo "</tr>";
	}
	echo "</table>";
?>
</body>
</html>