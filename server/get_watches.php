<?php 

    include('connection.php');

    $stmt = $conn->prepare("SELECT * FROM products WHERE product_category = 'watches' LIMIT 4");

    $stmt->execute();

    $watches_produts = $stmt->get_result(); // return array []


?>