<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if(!empty($_GET["action"])) {
switch($_GET["action"]) {
    case "add":
            $query = 'SELECT * FROM products WHERE product_id='.$_GET["id"];
            $result = mysqli_fetch_assoc(mysqli_query($conn, $query));
			$itemArray = array($result["product_id"]=>array('id'=>$result["product_id"], 'type'=>$result["product_type"], 'price'=>$result["product_price"], 'image'=>$result["product_img"], 'quantity' => 1));
            $pid = $_GET['id'];
            $flag = 0;
			if(!empty($_SESSION["cart_item"])) {

                foreach($_SESSION["cart_item"] as $k => $v) {
                    if($pid == $_SESSION["cart_item"][$k]['id']) {
                        $flag = 1;
                        break;
                    }
                }
				if($flag) {
					foreach($_SESSION["cart_item"] as $k => $v) {
						if($pid == $_SESSION["cart_item"][$k]['id']) {
                                $_SESSION["cart_item"][$k]["quantity"] += 1;
                                break;
                        }
					}
                }
                else { 
			        $_SESSION["cart_item"] = array_merge($_SESSION["cart_item"], $itemArray);	
                }
            }
            else {
				$_SESSION["cart_item"] = $itemArray;
			}
	break;
	case "remove":
		if(!empty($_SESSION["cart_item"])) {
			foreach($_SESSION["cart_item"] as $k => $v) {
					if($_GET["id"] == $k)
						unset($_SESSION["cart_item"][$k]);				
					if(empty($_SESSION["cart_item"]))
						unset($_SESSION["cart_item"]);
			}
		}
	break;
	case "empty":
		unset($_SESSION["cart_item"]);
    break;
    
mysqli_close($conn);
}
}
?>
<html> 
    <head>
        <title>Utensils</title>
        <link rel="stylesheet" href="CSS/test.css">
    </head>
    <body>
        <div class="navbar">
            <a href="test.php">Home</a>
            <div class="dropdown">
                <button class="dropbtn">Categories 
                <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                <a href="toilet_cleaner.php">Toilet Cleaners</a><!-- Page 2 -->
                <a href="body_wash.php">Body Wash</a><!-- Page 3 -->
                <a href="utensils.php">Utensils</a><!-- Page 7 -->
                <a href="cooking_oil.php">Cooking Oil</a><!-- Page 9 -->
                <a href="gardening_equipment.php">Garndening Equipment</a><!-- Page 10 -->
                </div>
            </div>
            <a href="cart.php" style="float: right">&#x1F6D2;</a>
            <a href="order_detail.html" style="float: right">Order Details</a> 
        </div>

        <div class="wrapper">
		<div class="how_to_use_utensils"  style="height:70px;width:290px;position:fixed;margin:10px;bottom:40px;font-weight:bold;background-color:FFF8DC;text-align:center;padding-top:20px;">
			<a href="video_editing.html" target="_blank" id="utensils" style="color: inherit;text-decoration: none;">Don't know how to use the product ?</a>
		</div>
		
        <h1>Utensils</h1>    
        <div class="content">
            <!-- content here -->
            <div class="product-grid product-grid--flexbox">
                <div class="product-grid__wrapper">
                    <!-- Product list start here -->

                    <!-- Single product -->
                    <?php
                        $servername = "localhost";
                        $username = "root";
                        $password = "";
                        $dbname = "test";
                        // Create connection
                        $conn = mysqli_connect($servername, $username, $password, $dbname);
                        
                        $query = 'SELECT * FROM products WHERE product_type="ut"';
                        $result = mysqli_query($conn, $query);
                        while($row = mysqli_fetch_assoc($result))
                        {
                            echo '<div class="product-grid__product-wrapper">';
                            echo '<div class="product-grid__product">';
                                    echo '<div class="product-grid__img-wrapper">';			
                                        echo '<img src="'.$row["product_img"].'" alt="Utensils" class="product-grid__img" />';
                                    echo '</div>';
                                    echo '<span class="product-grid__title">Utensils</span>';
                                    echo '<span class="product-grid__price"> Rs.'.$row["product_price"].'</span>';
                                    echo '<div class="product-grid__extend-wrapper">';
                                        echo '<div class="product-grid__extend">';
                                        echo '<form method="post" action=utensils.php?action=add&id='.$row["product_id"].'>';
                                            echo '<p class="product-grid__description_utensils">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis velit itaque odit.</p>
                                            <input type="submit" class="product-grid__btn product-grid__add-to-cart" value="Add to Cart">';echo "<script src='product_description3.js'></script>";					
                                        echo '</form>';
                                            echo '</div>';
                                    echo '</div>';
                                echo '</div>';
                            echo '</div>';
                        }
                        mysqli_close($conn);   
                    ?>
                    <!-- end Single product -->
                </div>		
            </div>
        </div>
        </div>
    </body>
</html>