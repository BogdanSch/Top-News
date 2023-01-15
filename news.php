<?php
include "html-parts/header.php";
require_once "action.php";
?>
<section class="form-sort">
    <div class="form-sort__wrap">
        <div class="container">
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
                <div class="form-group">
                    <label for="topic">Sort by topic</label>
                    <select class="form-control" name="topic" id="topic">
                        <option value="all">all</option>
                        <option value="games">games</option>
                        <option value="programming">programming</option>
                        <option value="it">it</option>
                        <option value="life">life</option>
                        <option value="game dev">game dev</option>
                    </select>
                </div>
                <div class="btn-send">
                    <input type="submit" name="sortBy" value="Sort" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>
</section>
<hr>
<section class="news">
    <div class="news__wrap">
        <div class="container">
            <h2>Choose the topic to sort by:</h2>
            <?php
            echo '<div class="articles__list">';
            $out;
            if (isset($_GET['topic']) && $_GET['topic'] != "all") {
                $sort_topic = $_GET['topic'];
                if (isset($_GET['page'])) {
                    $page = $_GET['page'];
                    $out = out(5, ($page - 1) * 5, $sort_topic);
                } else {
                    $out = out(5, 0, $sort_topic);
                }
                if (count($out) > 0) {
                    foreach ($out as $row) {
                        print_article_item($row);
                    }
                } else {
                    echo "В гостевой книге пока нет записей...<br>";
                }
                echo '</div>';
                echo out_pages("SELECT COUNT(`article_author`) FROM news_table WHERE `article_type` = '".$sort_topic."';", "topic=$sort_topic");
            } else {
                if (isset($_GET['page'])) {
                    $page = $_GET['page'];
                    $out = out(5, ($page - 1) * 5);
                } else {
                    $out = out(5);
                }
                if (count($out) > 0) {
                    foreach ($out as $row) {
                        print_article_item($row);
                    }
                } else {
                    echo "В гостевой книге пока нет записей...<br>";
                }
                echo '</div>';
                echo out_pages();
            }
            ?>
        </div>
    </div>
</section>
<?php
include "html-parts/footer.php";
