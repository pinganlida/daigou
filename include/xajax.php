<?php
/**********************
 * xajax test
*/
include './xajax_core/xajax.inc.php';
$xajax = new xajax();

$xajax->register(XAJAX_FUNCTION, 'doAdd');
$xajax->register(XAJAX_FUNCTION, 'doReset');

$xajax->processRequest();

function doAdd($a, $b)
{
	$response = new xajaxResponse();
	$response->assign('answer', 'innerHTML', $a + $b);
	$response->assign('reset', 'style.display', 'block');
	return $response;
}

function doReset()
{
	$response = new xajaxResponse();
	$response->clear('answer', 'innerHTML');
	$response->assign('reset', 'style.display', 'none');
	return $response;
}


/**********************************/
?>