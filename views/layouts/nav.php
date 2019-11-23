<?php
if (isset($_SESSION['cart'])) {
  $len = sizeof($_SESSION['cart']);
} else $len = 0;

?>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <a class="navbar-brand" href="index.php">Trang Chủ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a id="cartCount" class="nav-link" href="cart.php">Giỏ Hàng (<?php echo $len ?>) </a> </li>
      </ul>
    </div>
  </div>
</nav>
