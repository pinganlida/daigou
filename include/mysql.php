<?php
class mysqlconnect{
	public $link;
	private $host = "localhost";
	private $username = "root";
	private $password = "guitar";
	private $port = "3306";
	
	function mysqlconnect(){
		if($this->link==null)
			$this->link=mysql_connect($this->host,$this->username,$this->password,$this->port) or die("failed to connect database!");
		else
			$this->link=mysql_pconnect($this->host,$this->username,$this->password,$this->port) or die("failed to connect database!");
		mysql_query("SET NAMES 'GBK'");
		mysql_select_db("daigou",$this->link);
		
	}
	
	function disconnect(){
		mysql_close($this->link);
	}
	
	function query_array($sql){
		$result=mysql_query($sql);
		if(!$result)	
			die ("database query error!");
		$i=0;
		while($row = mysql_fetch_array($result)){
			$arr[$i] = $row;
			$i++;
		}		
		mysql_free_result($result);
		return $arr;
		
	}
	
	
	
}
?>