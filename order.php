<?php
    include_once "db_tools.php";
    $order_id = 1;

    if(isset($_COOKIE['order_id']))
        $order_id = $_COOKIE['order_id'] + 1;

    setcookie( "order_id", $order_id, time()+3600);
    
    $host = "localhost";
    $user = "root";
    $pwd = "";
    $db = "mcd";

    $items = $_POST['items'];
    $prices = $_POST['prices'];
    //$order_id = $_POST['order_id'];
    $amounts = $_POST['amounts'];

    try{
        //建立資料庫連結
        $conn = create_conn($host, $user, $pwd, $db);
        //新增資料
        try{
            foreach($items as $k => $item){                
                $sql = "INSERT INTO mcd_order (order_id, item, price, amount) VALUES ('$order_id', '$item', '$prices[$k]', '$amounts[$k]')";
                //$sql = "INSERT INTO mcd_order (order_id, item, price, amount) VALUES (0, '大麥克', 85, 2)";
                create_data($conn, $sql);
            }
        }catch(Exception $err){
            echo "mesage: ".$err->getMessage();                
            die();
        }
    }catch(Exception $err){
        echo "mesage: ".$err->getMessage();                
        die();
    }

    
?>