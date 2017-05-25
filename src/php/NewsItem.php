<?php
class NewsItem
{
    public $title = "";
    public $author = "";
    public $text = "";
    public $imageUrl = "";

    public function __construct($title, $author, $text, $imageUrl) {
        $this->title = $title;
        $this->author = $author;
        $this->text = $text;
        $this->imageUrl = $imageUrl;
    }
}
?>