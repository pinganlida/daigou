<?php  
/* 
���ﳵ�� 
 
1.��վ��Χ�ڣ����ﳵ--ȫ����Ч 
������ѹ��ﳵ����Ϣ������session�� 
 
2.��Ȼȫ����Ч�����ﳵ��ʵ��ֻ��һ�� 
���������ģʽ 
 
����ѡ�ͣ�session+���� 
 
���ܷ��� 
�ж���Ʒ�Ƿ���� 
�����Ʒ 
ɾ����Ʒ 
�޸���Ʒ������ 
 
ĳ��Ʒ����+1 
ĳ��Ʒ����-1 
 
�鿴���ﳵ����Ʒ���� 
            ��Ʒ���� 
            ��Ʒ���ܽ�� 
            ������Ʒ 
 
��չ��ﳵ 
*/  
session_start();  
class CartTool {  
  
    private static $ins = null;  
    private $items = array();  
      
  
  
    final protected function __construct() {  
          
    }  
  
    final protected function __clone() {  
          
    }  
  
  
    //�������� ��ȡʵ��  
    protected static function getIns() {  
        if (!(self::$ins instanceof self)) {  
            self::$ins = new self();  
        }  
        return self::$ins;  
    }  
  
    //�ѹ��ﳵ�ĵ����������session��   
  
    public static function getCart() {  
        //���cart��session�����ڣ����� Ҳ���ǵ�ǰ�������ʵ����  
        //˵��session��û�й��ﳵ  
        if(!isset($_SESSION['cart']) || !($_SESSION['cart'] instanceof self)) {  
            $_SESSION['cart'] = self::getIns();  
        }  
        return $_SESSION['cart'];  
    }   
  
    /* 
    �����Ʒ 
    param int $id ��Ʒ���� 
          string $name ��Ʒ���� 
          float $price ��Ʒ�۸� 
          int $num �������� 
    */  
    public  function addItem($id,$name,$price,$num=1) {  
        if ($this->hasItem($id)) { //�������Ʒ�Ѵ�����ֱ�Ӽ�������  
            $this->incNum($id,$num);  
            return;  
        }  
  
        $item = array();  
        //��ά����  
        $item['name'] = $name;  
        $item['price'] = $price;  
        $item['num'] = $num;  
  
        $this->items[$id] = $item;  
    }  
  
    /* 
    �޸Ĺ��ﳵ�е���Ʒ���� 
    int $id ��Ʒ���� 
    int $num ĳ��Ʒ�޸ĺ����������ֱ�Ӱ�ĳ��Ʒ 
    ��������Ϊ$num 
    */  
    public function modNum($id,$num=1) {  
        if (!$this->hasItem($id)) {  
            return false;  
        }  
        $this->items[$id]['num'] = $num;  
    }  
  
    /* 
    ��Ʒ����+1 
    */  
    public function incNum($id,$num=1) {  
        if ($this->hasItem($id)) {  
            $this->items[$id]['num'] += $num;  
        }  
    }  
  
    /* 
    ��Ʒ����+1 
    */  
    public function decNum($id,$num=1) {  
        if ($this->hasItem($id)) {  
            $this->items[$id]['num'] -= $num;  
        }  
  
        //������ٺ�����Ϊ0����������Ʒɾ��  
        if ($this->items[$id]['num'] <1) {  
            $this->delItem($id);  
        }  
    }  
  
  
    /* 
    �ж���Ʒ�Ƿ���� 
    */  
  
    public function hasItem($id) {  
        return array_key_exists($id,$this->items);  
    }  
  
    /* 
    ɾ����Ʒ 
    */  
    public function delItem($id) {  
        unset($this->items[$id]);  
    }  
  
    /* 
    ��ѯ���ﳵ����Ʒ������ 
    */  
    public function getCnt() {  
        return count($this->items);  
    }  
    /* 
    ��ѯ���ﳵ����Ʒ�ĸ��� 
    */  
    public function getNum(){  
        if ($this->getCnt() == 0) {  
            //����Ϊ0������ҲΪ0  
            return 0;  
        }  
  
        $sum = 0;  
        foreach ($this->items as $item) {  
            $sum += $item['num'];  
        }  
        return $sum;  
    }  
  
    /* 
    ���ﳵ����Ʒ���ܽ�� 
    */  
    public function getPrice() {  
        //����Ϊ0����ǮΪ0  
        if ($this->getCnt() == 0) {  
            return 0;  
        }  
  
        $price = 0.0;  
        foreach ($this->items as $item) {  
            $price += $item['num'] * $item['price'];  
        }  
        return $price;  
    }  
  
    /* 
    ���ع��ﳵ�е�������Ʒ 
    */  
    public function all() {  
        return $this->items;  
    }  
  
  
    /* 
    ��չ��ﳵ 
    */  
    public function clear() {  
        $this->items = array();  
    }  
  
} 


//print_r(CartTool::getCart());
// $cart = CartTool::getCart();

//$cart = CartTool::getCart();
// if (!isset($_GET['test'])) {
// 	$_GET['test'] = '';
// }

// if ($_GET['test'] == 'addpm') {
// 	$cart->addItem(1,'�ֻ�','1999',1);
// 	echo "�����ֻ��ɹ�";
// }elseif ($_GET['test'] == 'addfushi') {
// 	$cart->addItem(2,'���ϴ�˹','169',1);
// 	echo '���򰢵ϴ�˹�ɹ�';
// } elseif ($_GET['test'] == 'clear') {
// 	$cart->clear();
// 	echo "���ﳵ�����";
// }elseif ($_GET['test'] == 'show') {
// 	print_r($cart->all());
// 	echo "<br />";
// 	echo '��'.$cart->getCnt().'��'.$cart->getNum().'����Ʒ';
// 	echo '��'.$cart->getPrice().'Ԫ';
// } else{
// 	print_r($cart);
// }

?>