<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
	$dbname = "test";
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
    $phno = $_POST['phoneno'];
    $query = 'SELECT * FROM userinfo WHERE phoneno='.$phno;
    $result = mysqli_fetch_assoc(mysqli_query($conn, $query));
    $cart_item = unserialize($result['cart'])
?>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Order</title>
  <link rel="stylesheet" href="CSS/cart.css"/>
  <link rel="stylesheet" href="CSS/test.css"/>
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
        <h1>Ordered Items</h1>
<?php

if(isset($cart_item)){
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
            </tr>	
        <?php
            
            foreach ($cart_item as $id=>$item){
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
            <h1>Order Details</h1>
            <table class="tbl-cart" cellpadding="10" cellspacing="1">
        <tbody>
            <tr>
                <th style="text-align:left;background: #edeff2;">Details</th>
                <th style="text-align:left;background: #edeff2;"></th>
            </tr>	
                <tr>
                <td>First Name</td>
               <td style="text-align:right;"><?php echo $result['fname']?></td>
                </tr>
            <tr>
                <td>Last name</td>
                <td style="text-align:right;"><?php echo $result['lname']?></td>
            </tr>
            <tr>
                <td>Address</td>
                <td style="text-align:right;"><?php echo $result['address']?></td>
            </tr>
            </tbody>
            </table>	
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