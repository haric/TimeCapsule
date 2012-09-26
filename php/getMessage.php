<?php 
header('Content-type: application/json');

ob_start();

	$con = mysql_connect("localhost","root","root");
			if (!$con)
		{
			die('Could not connect: ' . mysql_error());
		}
			$db_selected = mysql_select_db('timecapsule',$con);
			if($db_selected)
			{
				$my_query = "select * from messages";
				$result = mysql_query($my_query);
				$rows = array();
				while($r = mysql_fetch_assoc($result)) {
					$rows[] = $r;
				}			
				
				echo json_encode($rows);
	}
	
	ob_flush()
	?>