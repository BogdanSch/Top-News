<?php
require_once "db-settings/dbconnect.php";
if (!isset($_SESSION)) {
    ob_start();
    session_start();
    ob_end_flush();
}
function out($count, $offset = 0, $sort_topic = "all")
{
    global $conn;
    $arr_out = [];
    try {
        if ($sort_topic == "all") {
            if (!$result = $conn->query("SELECT * FROM `news_table` ORDER BY article_date DESC LIMIT " . $count . " OFFSET $offset")) {
                throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
            }
        } else {
            if (!$result = $conn->query("SELECT * FROM `news_table` WHERE `article_type` = '" . $sort_topic . "' ORDER BY article_date DESC LIMIT " . $count . " OFFSET " . $offset . "")) {
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
function get_count_articles($sql)
{
    global $conn;
    try {
        if (!$result = $conn->query($sql)) {
            throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
        }
        return $result->fetch_assoc()['COUNT(`article_author`)'];
    } catch (Exception $e) {
        echo $e->getMessage();
    }
}
function out_pages($sort_topic="all", $current_page = 1)
{
    if($sort_topic == "all")
        $search_sql = "SELECT COUNT(`article_author`) FROM news_table;";
    else
        $search_sql = "SELECT COUNT(`article_author`) FROM news_table WHERE `article_type` = '".$sort_topic."'";
    $count_articles = get_count_articles($search_sql);
    $str = '<div class="pages"><ul class="pagination justify-content-center" style="margin:20px 0">';
    $n = 1;
    for ($i = 0; $i < $count_articles; $i += 5) {
        if($n == $current_page)
            $str .= '<li class="page-item"><a class="page-link active" href="news.php?topic='.$sort_topic.'&page=' . $n . '">' . $n . '</a></li>';
        else
            $str .= '<li class="page-item"><a class="page-link" href="news.php?topic='.$sort_topic.'&page=' . $n . '">' . $n . '</a></li>';
        $n++;
    }
    $str .= '</ul></div>';
    return $str;
}
function out_pages_searched(array $searched_articles, $search_keyword = "", $current_page = 1)
{
    $str = '<div class="pages"><ul class="pagination justify-content-center" style="margin:20px 0">';
    $n = 1;
    for ($i = 0; $i < count($searched_articles); $i += 5) {
        if($n == $current_page)
            $str .= '<li class="page-item"><a class="page-link active" href="search.php?searchKeyword=' . $search_keyword . '&page=' . $n . '">' . $n . '</a></li>';
        else
            $str .= '<li class="page-item"><a class="page-link" href="search.php?searchKeyword=' . $search_keyword . '&page=' . $n . '">' . $n . '</a></li>';
        $n++;
    }
    $str .= '</ul></div>';
    return $str;
}
function print_page_content($sort_topic = "all", $page = 1){
    $out = out(5, ($page - 1) * 5, $sort_topic);
    if (count($out) > 0) {
        foreach ($out as $row) {
            echo get_article_item($row);
        }
    } else {
        echo "В гостевой книге пока нет записей...<br>";
    }
    echo '</div>';
    echo out_pages($sort_topic, $page);
} 
function get_article_item($row)
{
    return '<div class="article__item card">
                    <div class="card-body">
                        <div class="article__title card-title">' . $row["article_title"] . '</div>
                        <hr>
                        <div class="article__content card-text">' . $row["article_content"] . '</div>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="article__publisher">Publisher: <span class="user__name">' . get_username_by_id($row["article_author"]) . '</span></div>
                        </li>
                        <li class="list-group-item">
                            <div class="article__date">Article topic: ' . $row["article_type"] . ' </div>
                        </li>
                        <li class="list-group-item">
                            <div class="article__date">Publish date: ' . $row["article_date"] . '</div>
                        </li>
                    </ul>
                </div>';
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
function get_username_by_id($id)
{
    global $conn;
    $sql = "SELECT `users`.log FROM `users` WHERE `users`.user_id = $id;";
    try {
        if (!$result = $conn->query($sql)) {
            throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
        }
        return $result->fetch_assoc()['log'];;
    } catch (Exception $e) {
        echo $e->getMessage();
    }
}
function get_user_id_by_username($username)
{
    global $conn;
    $sql = "SELECT `users`.user_id FROM `users` WHERE `users`.log = '" . $username . "'";
    try {
        if (!$result = $conn->query($sql)) {
            throw new Exception('Error selection from table `news_table`: [' . $conn->error . ']');
        }
        return $result->fetch_assoc()['user_id'];;
    } catch (Exception $e) {
        echo $e->getMessage();
    }
}
// sort - start
function out_arr_search(array $arr_index = null, array $articles)
{
    $arr_out = [];
    foreach ($articles as $index => $article) {
        if ($arr_index != null && in_array($index, $arr_index)) {
            $str = get_article_item($article);
            $arr_out[] = $str;
        }
    }
    return $arr_out;
}
function out_search($data)
{
    $articles = out(get_count_articles("SELECT COUNT(`article_author`) FROM news_table;"));
    $arr_index = array();
    foreach ($articles as $article_number => $article) {
        foreach ($article as $key => $value) {
            if (!is_array($value)) {
                if (stristr($value, $data)) {
                    $arr_index[] = $article_number;
                }
            } else {
                foreach ($value as $k => $v) {
                    if (stristr($v, $data) || strstr($k, $data)) {
                        $arr_index[] = $article_number;
                    }
                }
            }
        }
    }
    return out_arr_search(array_unique($arr_index), $articles);
}
// sort - end
function add()
{
    global $conn;
    $author_id =  get_user_id_by_username($_SESSION['user_login']);
    // echo $author_id;
    $title = $_REQUEST['title'];
    $content = $_REQUEST['content'];
    $article_type = $_REQUEST['topic'];
    // echo $article_type;
    try {
        if (!$conn->query("INSERT INTO `news_table` (article_author, article_date, article_title, article_content, article_type)
         VALUES ($author_id, NOW(), '$title', '$content', '$article_type');")) {
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
function test_input($data)
{
    return htmlspecialchars(stripslashes(trim($data)));
}
