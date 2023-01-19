<?php
require_once "action.php";
include "html-parts/header.php";

if (isset($_SESSION['user_login'])) {
    echo "<a href='admin_panel.php'>Увійти до адміністративної панелі</a><br/>";
    echo "<a href='action.php?action=logout'>Вийти з облікового запису</a><br/>";
} else {
    echo "<a href='autorize.php'>Увійти</a><br/>";
    echo "<a href='registration.php'>Зареєструватись</a><br/>";
}
include "html-parts/footer.php";
