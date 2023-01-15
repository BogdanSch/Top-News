<?php
require_once "db-settings/dbconnect.php";
if (!isset($_SESSION)) {
    session_start();
}
function out($count, $offset = 0, $sort_topic = "all")
{
    global $conn;
    $arr_out = [];
    try {
        $result = null;
        if ($sort_topic == "all") {
            if (!$result = $conn->query("SELECT * FROM `news_table` ORDER BY article_date DESC LIMIT " . $count . " OFFSET $offset")) {
                throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
            }
        } else {
            if (!$result = $conn->query("SELECT * FROM `news_table` WHERE `article_type` = '".$sort_topic."' ORDER BY article_date DESC LIMIT ".$count." OFFSET ".$offset."")) {
                throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
            }
        }
        while ($row = $result->fetch_assoc()) {
            $arr_out[] = $row;
        }
    } catch (Exception $e) {
        echo $e->getMessage();
    }
    return $arr_out;
}
function out_pages($sql = "SELECT COUNT(`article_author`) FROM news_table;", $sort = "")
{
    global $conn;
    $count_articles = 0;
    try {
        if (!$result = $conn->query($sql)) {
            throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
        }
        while ($row = $result->fetch_assoc()) {
            $count_articles = $row['COUNT(`article_author`)'];
        }
    } catch (Exception $e) {
        echo $e->getMessage();
    }
    $str = '<div class="pages"><ul class="pagination justify-content-center" style="margin:20px 0">';
    $n = 1;
    for ($i = 0; $i < $count_articles; $i += 5) {
        $str .= '<li class="page-item"><a class="page-link" href="news.php?'.$sort.'&page=' . $n . '">' . $n . '</a></li>';
        $n++;
    }
    $str .= '</ul></div>';
    return $str;
}
function print_article_item($row)
{
?>
    <div class="article__item card">
        <div class="card-body">
            <div class="article__title card-title"><?php echo $row["article_title"]; ?></div>
            <hr>
            <div class="article__content card-text"><?php echo $row["article_content"]; ?></div>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <div class="article__publisher">Publisher: <span class="user__name"><?php echo get_username_by_id($row["article_author"]); ?></span></div>
            </li>
            <li class="list-group-item">
                <div class="article__date">Article topic: <?php echo $row["article_type"]; ?> </div>
            </li>
            <li class="list-group-item">
                <div class="article__date">Publish date: <?php echo $row["article_date"]; ?> </div>
            </li>
        </ul>
    </div>
<?php
}
function check_autorize($log, $pas)
{
    global $conn;
    $sql = "SELECT log FROM Users WHERE log = '" . $log . "' AND pas='" . $pas . "';";

    if ($result = $conn->query($sql)) {
        $n = $result->num_rows;
        if ($n != 0) {
            $_SESSION['user_login'] = $log;
            return true;
        } else {
            return false;
        }
    }
}
function check_log($log)
{
    global $conn;
    try {
        $sql = "SELECT log FROM Users WHERE log = '" . $log . "'";
        $result = $conn->query($sql);
        $n = $result->num_rows;
        if ($n != 0) {
            return true;
        } else {
            return false;
        }
    } catch (Exception $e) {
        $e->getMessage();
    }
}
function registration($log, $pas)
{
    global $conn;
    $sql = "INSERT INTO Users (log, pas) VALUES (" . "'" . $log . "', " . "'" . $pas . "')";
    if (!$conn->query($sql)) {
        return false;
    } else {
        $_SESSION['user_login'] = $log;
        return true;
    }
}
function get_username_by_id($id){
    global $conn;
    $sql = "SELECT `users`.log FROM `users` INNER JOIN `news_table` ON $id = users.user_id;";
    try {
        if (!$result = $conn->query($sql)) {
            throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
        }
        // while ($row = $result->fetch_assoc()) {
           
        // }
        return $result->fetch_assoc()['log'];;
    } catch (Exception $e) {
        echo $e->getMessage();
    }
}
function add()
{
    global $conn;
    $author = $_REQUEST['username'];
    $title = $_REQUEST['title'];
    $content = $_REQUEST['content'];
    $article_type = $_REQUEST['topic'];

    echo $article_type;
    try {
        if (!$conn->query("INSERT INTO `news_table` (article_author, article_date, article_title, article_content, article_type)
         VALUES ('$author', NOW(), '$title', '$content', '$article_type')")) {
            throw new Exception('Помилка заповнення  таблиці news_table: [' . $conn->error . ']');
        }
        $_SESSION['add'] = true;
        header("Location: admin_panel.php");
    } catch (Exception $e) {
        echo $e->getMessage();
    }
}
function logout()
{
    unset($_SESSION['user_login']);
    session_unset();
    header("Location: index.php");
}
if (isset($_REQUEST['action'])) {
    $action = $_REQUEST['action'];
    switch ($action) {
        case 'add':
            add();
            break;
        case 'logout':
            logout();
            break;
        default:
            header("Location: index.php");
    }
}
