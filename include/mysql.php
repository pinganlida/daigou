<?php
class mysqlconnect{
	public $link;
	private $host = "localhost";
	private $username = "root";
	private $password = "guitar";
	private $port = "3306";
	private $showsql = false;
	
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
	
	//query mysql, obtain an array of result
	function query_array($sql){
		if($this->showsql)
			echo $sql;
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
	
	
	//query mysql, obtain an array of result
	function query_insert($sql){
		if($this->showsql)
			echo $sql;
		$result=mysql_query($sql);
		if(!$result)
			die ("database insert error!");
	
		return mysql_insert_id();
	
	}
	
	//get row number of a table
	function rownumber($table){
		$sql = "select count(id) FROM ".$table;
		if($this->showsql)
			echo $sql;
		$result=mysql_query($sql);
		if(!$result)
			die ("database count error!");
		
		$row = mysql_fetch_array($result);
		
		return $row[0];
	}
}
?>