<?php
include "action.php";
include "html-parts/header.php";

echo '<div class="container">';
if (isset($_GET['searchKeyword'])) {
    $data = test_input($_GET['searchKeyword']);
    echo "<h1>Results by request: {$data}</h1><hr>";
    echo '<div class="articles__list">';
    $out = out_search($data);
    $page;
    if (isset($_GET['page'])) {
        $page = $_GET['page'];
        if (count($out) > 0) {
            for ($i = (5 * $page) - 5; $i < $page * 5; $i++) {
                if($i > count($out) - 1) break;
                echo $out[$i];
            }
        } else {
            echo "<h3>Sorry! Nothing found...</h3>";
        }
    } else {
        if (count($out) > 0) {
            for ($i = 0; $i < 5; $i++) {
                if($i > count($out) - 1) break;
                echo $out[$i];
            }
        } else {
            echo "<h3>Sorry! Nothing found...</h3>";
        }
    }
    echo '</div>';
    if(isset($page))
        echo out_pages_searched($out, $_GET['searchKeyword'], $page);
    else
        echo out_pages_searched($out, $_GET['searchKeyword']);
}

include "html-parts/footer.php";
