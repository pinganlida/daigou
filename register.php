<?php
require('./libs/Smarty.class.php');

$smarty = new Smarty;

include_once './include/include.php';


if($_POST["submit"]==null){
	//δ�ύ��ҳ�棬 ��ʾ�����û��������룬�����ʼ�	
}else{
	//�ύ���ҳ��
	
	//TODO �ж�����
	if(success){
		//����ɹ������һ����ʾҳ�棨general����ʾҳ��)
	}
	else{
		//���ʧ��,�򷵻�����ҳ�棬���ң���ʾ����ĵط�
		//�ѳ�����Ϣ�ŵ�һ���������������ҳ�棬��ʾ���û�
	}	
	
}

$smarty->assign("Name","wake me up",true);

for($i=0;$i<20;$i++){
	$list[$i] =  "hahahaha-".$i;
}





$smarty->assign("list",$list);

$smarty->assign("header2",$smarty->fetch("header2.tpl"));


$smarty->display('index.tpl');

















?>
