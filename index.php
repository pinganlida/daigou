<?php
 /**
 * Example Application

 * @package Example-application
 */

require('./libs/Smarty.class.php');

$smarty = new Smarty;

include_once './include/include.php';
// //$smarty->force_compile = true;
// $smarty->debugging = true;
// $smarty->caching = true;
// $smarty->cache_lifetime = 120;

$smarty->assign("Name","wake me up",true);




$smarty->display('index.tpl');
?>
