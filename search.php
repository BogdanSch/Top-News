<?php
include "html-parts/header.php";
include "action.php";

echo '<div class="container">';
if (isset($_GET['searchKeyword'])) {
    $data = test_input($_GET['searchKeyword']);
    echo "<h1>Results by request {$data}</h1><hr>";
    echo '<div class="articles__list">';
    $out = out_search($data);
    // echo count($out);

    if (isset($_GET['page'])) {
        $page = $_GET['page'];
        if (count($out) > 0) {
            for ($i = (5 * $page) - 5; $i < $page * 5; $i++) {
                echo $out[$i];
            }
        } else {
            echo "<h3>Sorry! Nothing found...</h3>";
        }
    } else {
        if (count($out) > 0) {
            for ($i = 0; $i < 5; $i++) {
                echo $out[$i];
            }
        } else {
            echo "<h3>Sorry! Nothing found...</h3>";
        }
    }
    echo '</div>';
    echo out_pages_searched($out, "searchKeyword={$_GET['searchKeyword']}");
}

include "html-parts/footer.php";
