<?php include('layouts/header.php');?><
    
?php 
    // session_start();

    if (!empty($_SESSION['cart'])) {
       
         //let user in 



    }
    else{ //send user to home page
        header('location:index.php');
    }


?>






    <!-- Checkout -->
    <section class="my-5 py-5">
        <div class="container text-center mt-3 pt-5">
            <h2 class="form-weight-bold">Check Out</h2>
            <hr class="mx-auto">
        </div>
        <div class="mx-auto container">
            <form id="checkout-form" action="server/place_order.php" method="POST">
                <p class="text-center" style="color: red;">
                <?php if (isset($_GET['message'])) {echo $_GET['message'];}?>
                <?php if(isset($_GET['message'])) {?>

                    <a class="btn btn-primary" href="login.php">Login</a>

                    <?php }?>
            
            
                </p>
                <div class="form-group checkout-small-element">
                    <label for="">Name</label>
                    <input type="text" class="form-control" placeholder="Name" id="checkout-name" name="name" required>
                </div>
                <div class="form-group checkout-small-element">
                    <label for="">Email</label>
                    <input type="email" class="form-control" placeholder="Email" id="checkout-email" name="email" required>
                </div>
                <div class="form-group checkout-small-element">
                    <label for="">Phone</label>
                    <input type="tel" class="form-control" placeholder="Phone" id="checkout-phone" name="phone" required>
                </div>
                <div class="form-group checkout-small-element">
                    <label for="">City</label>
                    <input type="text" class="form-control" placeholder="City" id="checkout-city" name="city" required>
                </div>
                <div class="form-group checkout-large-element">
                    <label for="">Address</label>
                    <input type="text" class="form-control" placeholder="Address" id="checkout-address" name="address" required>
                </div>
                <div class="form-group checkout-btn-container">
                    <p>Total amount : $ <?php echo $_SESSION['total'];?></p>
                    <input type="submit" class="btn" id="checkout-btn" value="Place Order" name="place_order">
                </div>
            </form>
        </div>
    </section>



    <!-- Footer -->
    <footer class="mt-5 py-5">
        <div class="row container mx-auto my-5">
            <div class="footer-one col-lg-3 col-md-6 col-sm-12">
                <img src="assets/imgs/logo.jpeg" alt="" class="logo">
                <p class="pt-3">We provide the best products for the most affordable prices</p>
            </div>
            <div class="footer-one col-lg-3 col-md-6 col-sm-12">
                <h5 class="pb-2">Featured</h5>
                <ul class="text-uppercase">
                    <li><a href="#">men</a></li>
                    <li><a href="#">women</a></li>
                    <li><a href="#">boys</a></li>
                    <li><a href="#">girls</a></li>
                    <li><a href="#">new arrivals</a></li>
                    <li><a href="#">clothes</a></li>
                </ul>
            </div>
            <div class="footer-one col-lg-3 col-md-6 col-sm-12">
                <h5 class="pb-2">Contact Us</h5>
                <div>
                    <h6 class="text-uppercase">Address</h6>
                    <p>52/236 moo 10, Huai Bong, Chaloem Phra Kiat District, Saraburi, Thailand, 18000</p>
                </div>
                <div>
                    <h6 class="text-uppercase">Phone</h6>
                    <p>094-9804149</p>
                </div>
                <div>
                    <h6 class="text-uppercase">Email</h6>
                    <p>chiradetkho123@gmail.com</p>
                </div>
            </div>
            <div class="footer-one col-lg-3 col-md-6 col-sm-12">
                <h5 class="pb-2">Facebook</h5>
                <div class="row">
                    <img src="assets/imgs/featured1.jpeg" alt="" class="img-fluid w-25 h-100 m-2">
                    <img src="assets/imgs/featured2.jpeg" alt="" class="img-fluid w-25 h-100 m-2">
                    <img src="assets/imgs/featured3.jpeg" alt="" class="img-fluid w-25 h-100 m-2">
                    <img src="assets/imgs/featured4.jpeg" alt="" class="img-fluid w-25 h-100 m-2">
                    <img src="assets/imgs/featured5.jpeg" alt="" class="img-fluid w-25 h-100 m-2">
                </div>
            </div>
        </div>


        <div class="copyright mt-5">
            <div class="row container mx-auto">
                <div class="col-lg-3 col-md-5 col-sm-12 mb-4">
                    <img src="assets/imgs/payment.jpeg" alt="">
                </div>
                <div class="col-lg-3 col-md-5 col-sm-12 mb-4 text-nowrap mb-2">
                    <p>eCommerce @ 2025 All Right Reserved</p>
                </div>
                <div class="col-lg-3 col-md-5 col-sm-12 mb-4">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </div>
    </footer>


    <?php include('layouts/footer.php');?>