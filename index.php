<?php

require 'vendor/autoload.php';
require 'app/database/connection.php';
$smarty = new Smarty();
$smarty->setTemplateDir('public/views/');
$smarty->setCompileDir('public/views/compiler/');
$smarty->setCacheDir('public/views/compiler/cache/');

// var_dump('test');
// var_dump($conn);
$sql = "SELECT * FROM categories";
$result = $conn->query($sql);
$categories = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $categories[] = $row;
    }
}

$category_id = null;
if (!empty($_GET['category']) && $_GET['category'] > 0) {
    $category_id = $_GET['category'];
}
$smarty->assign('category_id', intval($category_id));
$smarty->assign('categories', $categories);

//--------------------------------------
$sql = "SELECT * FROM products WHERE discount > 0 ORDER BY discount desc LIMIT 6";
$result = $conn->query($sql);
$discounted_products = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        if (strlen($row['description']) > 100)
            $row['description'] = substr($row['description'], 0, 97) . '...';
        $discounted_products[] = $row;
    }
}
$smarty->assign('discounted_products', $discounted_products);
//------------------------------------

// var_dump(count($discounted_products));



$smarty->display('layout-base.tpl');