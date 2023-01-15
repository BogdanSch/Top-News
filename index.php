<?php
include_once "action.php";
include "html-parts/header.php"; ?>
<section class="news__about">
    <div class="news__wrap">
        <div class="container">
            <div class="news__description">
                <img src="assets/images/news.webp" alt="news-image" class="news__image">
                <h1>Top News</h1>
                <p class="news__text">
                    Welcome everyone to our new brand website called News Agency!
                    Here you can find a lot of new and usefull information on different topics.
                    Look up for your topic and find out whatever you want.
                    Explore and have fun right here.
                </p>
            </div>
            <hr>
        </div>
    </div>
</section>
<section class="articles">
    <div class="articles__wrap">
        <div class="container">
            <h2>List our new publications</h2>
            <?php
            echo '<div class="articles__list">';
            $out = out(5);
            if (count($out) > 0) {
                foreach ($out as $row) {
                    print_article_item($row);
                }
            } else {
                echo "В гостевой книге пока нет записей...<br>";
            }
            echo "<hr></div>
                <a class='btn btn-primary btn-page' href='news.php'>Explore more</a>
                </div></section>";

            include "html-parts/footer.php";
