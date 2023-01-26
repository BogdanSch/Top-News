<?php
require_once "action.php";
include "html-parts/header.php";
?>
<section class="form-sort">
    <div class="form-sort__wrap">
        <div class="container">
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
                <div class="form-group">
                    <label for="topic">Seek by topic</label>
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
            <?php
            if (isset($_GET['topic'])) {
                echo "<h2>The topic to seek by: {$_GET['topic']}</h2>";
            } else {
                echo "<h2>The topic to seek by: all</h2>";
            }
            echo '<div class="articles__list">';
            $out;
            if (isset($_GET['topic'])) {
                $sort_topic = $_GET['topic'];
                if(isset($_GET['page']))
                    $page = $_GET['page'];
                if ($sort_topic == "all") {
                    if (isset($page)) {
                        print_page_content("all", $page);
                    } else {
                        print_page_content("all", 1);
                    }
                } else {
                    if (isset($page)) {
                        print_page_content($sort_topic, $page);
                    } else {
                        print_page_content($sort_topic, 1);
                    }
                }
            }else{
                if(isset($_GET['page']))
                    print_page_content("all", $_GET['page']);
                else
                    print_page_content("all");
            }
            ?>
        </div>
    </div>
</section>
<?php
include "html-parts/footer.php";
