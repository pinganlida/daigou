<?php
//example of insert
// $sql = "insert into product (name,description) values ('添加商品测试','添加商品描述测试')";
// $newid = $db->query_insert($sql);
//echo "newid = ".$newid;

echo $db->rownumber("product");
?>