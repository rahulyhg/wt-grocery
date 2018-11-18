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
                $itemArray = array($result["product_id"]=>array('id'=>$result["product_id"], 'type'=>$result["product_type"], 'price'=>$result["product_price"], 'image'=>$result["product_img"]));
                
                if(!empty($_SESSION["cart_item"])) {
                    /*if(in_array($productByCode[0]["code"],array_keys($_SESSION["cart_item"]))) {
                        foreach($_SESSION["cart_item"] as $k => $v) {
                                if($productByCode[0]["code"] == $k) {
                                    if(empty($_SESSION["cart_item"][$k]["quantity"])) {
                                        $_SESSION["cart_item"][$k]["quantity"] = 0;
                                    }
                                    $_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
                                }
                        }
                    } else*/ 
                    
                    $_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);	
                } 
                else 
                {
                    $_SESSION["cart_item"] = $itemArray;
                }
        break;
        case "remove":
            if(!empty($_SESSION["cart_item"])) {
                foreach($_SESSION["cart_item"] as $k => $v) {
                        if($_GET["id"] == $k) {
                            if ($_SESSION["cart_item"][$k]['quantity'] <= 1)
                                unset($_SESSION["cart_item"][$k]);
                            else
                                $_SESSION["cart_item"][$k]['quantity'] -= 1;
                        }   				
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

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Cart</title>
  <link rel="stylesheet" href="CSS/cart.css"/>
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
            <a href="cart.php" style="float: right;">&#x1F6D2;</a>
            <a href="order_detail.html" style="float: right">Order Details</a>
        </div>
        <h1>Cart</h1>
<?php

if(isset($_SESSION["cart_item"])){
    $total_quantity = 0;
    $total_price = 0;
?>	
    <table class="tbl-cart" cellpadding="10" cellspacing="1">
        <tbody>
            <tr>
                <th style="text-align:left;background: #edeff2;">Name</th>
                <th style="text-align:right;background: #edeff2" width="5%">Quantity</th>
                <th style="text-align:right;background: #edeff2" width="10%">Unit Price</th>
                <th style="text-align:right;background: #edeff2" width="10%">Total Price</th>
                <th style="text-align:center;background: #edeff2" width="5%">Remove</th>
            </tr>	
        <?php
            
            foreach ($_SESSION["cart_item"] as $id=>$item){
                ?>
                        <tr>
                        <td><img src="<?php echo $item["image"]; ?>" class="cart-item-image" /><?php 
                            //echo $item["name"];
                            if ($item["type"] == "tc")
                            {
                                echo "Toilet Cleaner";
                            }
                            elseif ($item["type"] == "bw")
                            {
                                echo "Body Wash";
                            } 
                            elseif ($item["type"] == "ut")
                            {
                                echo "Utensils";
                            }
                            elseif ($item["type"] == "co")
                            {
                                echo "Cooking Oil";
                            }
                            elseif ($item["type"] == "ge")
                            {
                                echo "Gardening Equipment";
                            }
                        ?></td>
                        <td style="text-align:right;"><?php echo $item['quantity'] ?></td>
                        <td  style="text-align:right;"><?php echo "Rs. ".$item["price"]; ?></td>
                        <td  style="text-align:right;"><?php echo "Rs. ".$item["price"]*$item['quantity'];  ?></td>
                        <td style="text-align:center;"><form method="post" action="cart.php?action=remove&id=<?php echo $id; ?>" ><input type="submit" value=" " class="btnRemoveAction"></form></td>
                        </tr>
                        <?php
                        $total_quantity += $item['quantity'];
                        $total_price += $item["price"]*$item['quantity'];
                }
            
        ?>
        <tr>
            <td align="right">Total:</td>
            <td align="right"><?php echo $total_quantity; ?></td>
            <td align="right" colspan="2"><strong><?php echo "Rs. ".number_format($total_price, 2); ?></strong></td>
            <td></td>
            </tr>
            </tbody>
            </table>
            <a href="submit_form.html"><button style="float:right;color: #fff;background: #e91e63;border-radius: 25px;border:0px;padding: 0.5em 0.625em;margin-top: 0.875rem;
            margin-right: 0.625rem;
	        cursor: pointer;">Order Now</button></a>		
            <?php
            } else {
            ?>
            <div class="no-records">Your Cart is Empty</div>
            <?php 
            }
            ?>
            </div>
</body>
</html>