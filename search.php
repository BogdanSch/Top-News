<?php
include "html-parts/header.php";
include "action.php";

echo '<div class="container">';
if(isset($_GET['searchKeyword'])){
    $data = test_input($_GET['searchKeyword']);
    echo "<h1>Results by request {$data}</h1><hr>";
    $out = out_search($data);
    // if (count($out) > 3) {
    //     foreach ($out as $row) {
    //         echo $row;
    //     }
    // } else
    // {
    //     echo "<h3>Sorry! Nothing found...</h3>";
    // }
}
echo '</div>';

include "footer.php";

include "html-parts/footer.php";