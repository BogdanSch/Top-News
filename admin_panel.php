<?php
require_once "db-settings/dbconnect.php";

ob_start();
session_start();
if (!$_SESSION['user_login']) {
    Header("Location: index.php");
    ob_end_flush();
} else {
    include "html-parts/header.php";
    ob_end_flush();
?>
    <h2>Add new article</h2>
    <div class="article-form__wrap">
        <form name="myForm" action="action.php" method="post" onSubmit="return overify_message(this);">
            <input type=hidden name="action" value="add">
            <div class="input-group mb-3 input-title">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default">Article title</span>
                </div>
                <input type="text" name="title" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group input-content">
                <div class="input-group-prepend">
                    <span class="input-group-text">With textarea</span>
                </div>
                <textarea class="form-control" aria-label="With textarea" name="content"></textarea>
            </div>
            <div class="form-group">
                <label for="topic">Select topic</label>
                <select class="form-control" name="topic" id="topic">
                    <option value="games">games</option>
                    <option>programming</option>
                    <option value="it">it</option>
                    <option value="life">life</option>
                    <option value="game dev">game dev</option>
                </select>
            </div>
            <div class="btn-send">
                <input type="submit" name="submitAdd" value="Create new article" class="btn btn-primary">
            </div>
        </form>
    </div>
<?php
}
if (isset($_SESSION['add']) && $_SESSION['add'] == true) {
    echo "Your changes has been successfully commited";
    $_SESSION['add'] = false;
}
include "html-parts/footer.php";
