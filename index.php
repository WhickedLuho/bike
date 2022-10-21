<?php

require 'vendor/autoload.php';
require 'app/database/connection.php';
$smarty = new Smarty();
$smarty->setTemplateDir('public/views/');
$smarty->setCompileDir('public/views/compiler/');
$smarty->setCacheDir('public/views/compiler/cache/');

$page = 'home.tpl';
//--------------------------------------
$sql = "SELECT * FROM categories";
$result = $conn->query($sql);
$categories = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        if (strlen($row['description']) > 20)
            $row['description'] = substr($row['description'], 0, 17) . '...';
        $categories[] = $row;
    }
}
$smarty->assign('categories', $categories);
//--------------------------------------

$category_id = null;
if (!empty($_GET['category']) && (int) $_GET['category'] > 0) {
    $category_id = (int) $_GET['category'];
    $page = 'products.tpl';

    if (!empty($_GET['product']) && (int) $_GET['product'] > 0) {
        $product_id = (int) $_GET['product'];

        $get_product_by_id = array();
        $sql = "SELECT * FROM products WHERE id = $product_id";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                $row['link'] = './?category=' . $category_id . '&product=' . $row['id'];
                $get_product_by_id[] = $row;
            }
            $page = 'product.tpl';
        }

        $smarty->assign('product', current($get_product_by_id));
    }

    $get_products_by_category = array();
    $sql = "SELECT * FROM products WHERE category_ids IN ($category_id) ORDER BY discount desc, name asc LIMIT 12";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            if (strlen($row['description']) > 85)
                $row['description'] = substr($row['description'], 0, 87) . '...';

            $row['link'] = './?category=' . $category_id . '&product=' . $row['id'];
            $get_products_by_category[] = $row;
        }
    }
    $smarty->assign('products', $get_products_by_category);
}
elseif (!empty($_GET['category']) && $_GET['category'] === 'on_sale') {
    # code...
    var_dump('this is the onsale page');
}
$smarty->assign('category_id', intval($category_id));

//--------------------------------------
$sql = "SELECT * FROM products WHERE discount > 0 ORDER BY discount desc LIMIT 6";
$result = $conn->query($sql);
$discounted_products = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        if (strlen($row['description']) > 100)
            $row['description'] = substr($row['description'], 0, 97) . '...';

            $row['link'] = './?category=' . $category_id . '&product=' . $row['id'];

        $discounted_products[] = $row;
    }
}
$smarty->assign('discounted_products', $discounted_products);
//------------------------------------


$smarty->assign('page', $page);
$smarty->display('layout-base.tpl');