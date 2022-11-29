
<?php include('layouts/header.php');?>

    <!-- Home -->
    <section id="home">
        <div class="container">
            <h5>New ARRIVALS</h5>
            <h1><span>Best Prices</span> This season</h1>
            <p>Eshop offers the best products for the most affordable prices.</p>
            <button>Shop Now</button>
        </div>
    </section>

    <!-- Brand -->
    <section id="brand" class="container">
        <div class="row">
            <img src="assets/imgs/brand1.jpeg" class="img-fluid col-lg-3 col-md-6 col-sm-12">
            <img src="assets/imgs/brand2.jpeg" class="img-fluid col-lg-3 col-md-6 col-sm-12">
            <img src="assets/imgs/brand3.jpeg" class="img-fluid col-lg-3 col-md-6 col-sm-12">
            <img src="assets/imgs/brand4.jpeg" class="img-fluid col-lg-3 col-md-6 col-sm-12">
        </div>
    </section>

    <!-- New -->
    <section id="new" class="w-100">
        <div class="row p-0 m-0">
            <!-- One -->
            <div class="one col-lg-4 col-md-12 col-sm-12 p-0">
                <img src="assets/imgs/1.jpeg" alt="" class="img-fluid">
                <div class="details">
                    <h2>Extreamely Awesome Shoes</h2>
                    <button class="text-uppercase">Shop Now</button>
                </div>
            </div>
            <!-- Two -->
            <div class="one col-lg-4 col-md-12 col-sm-12 p-0">
                <img src="assets/imgs/2.jpeg" alt="" class="img-fluid">
                <div class="details">
                    <h2>Awesome Bag</h2>
                    <button class="text-uppercase">Shop Now</button>
                </div>
            </div>
            <!-- Three -->
            <div class="one col-lg-4 col-md-12 col-sm-12 p-0">
                <img src="assets/imgs/3.jpeg" alt="" class="img-fluid">
                <div class="details">
                    <h2>50% OFF Watches</h2>
                    <button class="text-uppercase">Shop Now</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Featured -->
    <section id="featured" class="my-5 pb-5">
        <div class="container text-center mt-5 py-5">
            <h3>Our Featured</h3>
            <hr class="mx-auto">
            <p>Here you can check out our featured products</p>
        </div>
        <div class="row mx-auto container-fluid">

            <?php include('server/get_featured_products.php'); ?>

            <?php while($row= $featured_products->fetch_assoc()) {?>

            <div class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img src="assets/imgs/<?php echo $row['product_image'] ;?>" class="img-fluid mb-3">
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name"><?php echo $row['product_name'];?></h5>
                <h4 class="p-price">$<?php echo $row['product_price'];?></h4>
               <a href="<?= "single_product.php?product_id=".$row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
            </div>

          <?php }?>

        </div>
    </section>

    <!-- Banner -->
    <section id="banner" class="my-5 py-5">
        <div class="container">
            <h4>MID SEASON'S SALE</h4>
            <h1>Autumn Collection<br>UP to 30% OFF</h1>
            <button class="text-uppercase">shop now</button>
        </div>
    </section>

    <!-- Clothes -->
    <section id="clothes" class="my-5">
        <div class="container text-center mt-5 py-5">
            <h3>Dresses & Coats</h3>
            <hr class="mx-auto">
            <p>Here you can check out our amazing clothes</p>
        </div>
        <div class="row mx-auto container-fluid">

        <?php include('server/get_coats.php'); ?>

        <?php while($row= $coats_products->fetch_assoc()) {?>

            <div onclick="window.location.href='single_product.php?product_id=<?=$row['product_id'];?>';" class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img src="assets/imgs/<?php echo $row['product_image'];?>" class="img-fluid mb-3">
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name"><?= $row['product_name'];?></h5>
                <h4 class="p-price">$<?= $row['product_price'];?></h4>
                <a href="<?= "single_product.php?product_id=".$row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
            </div>
            <?php }?>
        </div>
    </section>

    <!-- Watch -->
    <section id="watches" class="my-5">
        <div class="container text-center mt-5 py-5">
            <h3>Best Watches</h3>
            <hr class="mx-auto">
            <p>Check out our unique watches</p>
        </div>
        <div class="row mx-auto container-fluid">

        <?php include('server/get_watches.php'); ?>

        <?php while($row= $watches_produts->fetch_assoc()) {?>

            <div onclick="window.location.href='single_product.php?product_id=<?=$row['product_id'];?>';" class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img src="assets/imgs/<?= $row['product_image'];?>" class="img-fluid mb-3">
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name"><?= $row['product_name'];?></h5>
                <h4 class="p-price">$<?= $row['product_price'];?></h4>
                <a href="<?= "single_product.php?product_id=".$row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
                </div>
                <?php }?>
            </div>
    </section>

    <!-- Shoes -->
    <section id="shoes" class="my-5">
        <div class="container text-center mt-5 py-5">
            <h3>Shoes</h3>
            <hr class="mx-auto">
            <p>Here you can check out our amazing shoes</p>
        </div>
        <div class="row mx-auto container-fluid">


        <?php include('server/get_shoes.php'); ?>

        <?php while($row= $shoes_produts->fetch_assoc()) {?>

            <div onclick="window.location.href='single_product.php?product_id=<?=$row['product_id'];?>';" class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img src="assets/imgs/<?= $row['product_image'];?>" class="img-fluid mb-3">
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name"><?= $row['product_name'];?></h5>
                <h4 class="p-price">$<?= $row['product_price'];?></h4>
                <a href="<?= "single_product.php?product_id=".$row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
            </div>
            <?php }?>
        </div>
    </section>

<?php include('layouts/footer.php');?>