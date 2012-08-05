<?php 
header('Content-type: application/json');

ob_start();

	$con = mysql_connect("localhost","root","");
			if (!$con)
		{
			die('Could not connect: ' . mysql_error());
		}
			$db_selected = mysql_select_db('timecapsule',$con);
			if($db_selected)
			{
				$my_query = "select * from messages";
				$result = mysql_query($my_query);
				
				$row = mysql_fetch_array($result,MYSQL_ASSOC);				
				
				echo json_encode($row);
	}
	
	ob_flush()
	?>