<?php
class Event
{
    public $name = "";
    public $description = "";
    public $dateTime = "";
    public $day = "";
    public $month = "";
    public $year = "";
    public $time = "";
    public $imageUrlLink = "";

    public function __construct($name, $description, $dateTime, $day, $month, $year, $time, $imageUrlLink) {
        $this->name = $name;
        $this->description = $description;
        $this->dateTime = $dateTime;
        $this->day = $day;
        $this->month = $month;
        $this->year = $year;
        $this->time = $time;
        $this->imageUrlLink = $imageUrlLink;
    }

    public function dateOfEvent() {
        return $this->day . " " . $this->month . " " . $this->year;
    }
}
?>