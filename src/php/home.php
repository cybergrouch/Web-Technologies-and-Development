<?php
    require 'Event.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset='UTF-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Online Book Catalogue | Home</title>
    <meta name="description" content="Online Book Catalogue |  Home">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
    <link href="css/events.css" rel="stylesheet" type="text/css">
    <link href="css/news.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container container-news">
    <div class="row"><h3>Latest News</h3></div>

    <?php

        $newsTitles = array(
            "Lorem ipsum dolor sit amet consetetur sadipscing",
            "Consetetur sadipscing elitr sed diam nonumy eirmod",
            "Tempor invidunt ut labore et dolore",
            "Magna aliquyam erat, sed diam voluptua",
            "Sed diam voluptua",
            "Elitr sed diam nonumy eirmod",
        );

        $authorNames = array(
            "Antonio Pigafeta",
            "Plato",
            "Edmund Husserl",
            "Hannah Arendt",
            "Edith Stein",
            "Therese De Liseux"
        );

        $newsAbstracts = array(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat",
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat",
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat",
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat",
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat",
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat"
        );

        $numberOfNewsItems = 6;
    ?>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

        <?php
            for ($i = 0; $i < $numberOfNewsItems; $i++) {
                $newsTitle = $newsTitles[$i];
                $authorName = $authorNames[$i];
                $activeTag = ($i == 0) ? "active" : "";
                $newsAbstract = $newsAbstracts[$i];
        ?>

            <div class="item <?php print($activeTag); ?>">
                <img src="http://placehold.it/760x400/cccccc/ffffff" alt="Nothing here">
                <div class="carousel-caption">
                    <div>
                        <span class="h4">
                            <a href="#">
                                <?php print($newsTitle); ?>
                            </a>
                        </span> -
                        <span class="h5">
                            <?php print($authorName); ?>
                        </span>
                    </div>
                    <p><?php print($newsAbstract); ?>&nbsp;<a class="label label-primary" href="#" target="_blank">Read more...</a></p>
                </div>
            </div><!-- End Item -->

        <?php
            }
        ?>

        </div><!-- End Carousel Inner -->


        <ul class="list-group col-sm-4">
            <?php
                for ($i = 0; $i < $numberOfNewsItems; $i++) {
                    $newsTitle = $newsTitles[$i];
                    $authorName = $authorNames[$i];
                    $activeTag = ($i == 0) ? "active" : "";
                    $newsAbstract = $newsAbstracts[$i];
            ?>
            <li data-target="#myCarousel" data-slide-to="<?php print($i); ?>" class="list-group-item <?php print($activeTag); ?>"><div><span class="h4"><a href="#"><?php print($newsTitle); ?></a></span> - <span class="h5"><?php print($authorName); ?></span></div></li>
            <?php
                }
            ?>
        </ul>

        <!-- Controls -->
        <div class="carousel-controls">
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>

    </div><!-- End Carousel -->
</div>

<div class="container container-events">

    <?php
        $events = array(
            new Event(
                "New Year\'s Day",
                "Start of the new year 2017",
                "2017-01-01",
                "1",
                "Jan",
                "2017",
                "ALL DAY",
                "https://c1.staticflickr.com/4/3089/3154293270_a79baeb09e_q.jpg"
            ),
            new Event(
                "Australia Day",
                "Australia National Day",
                "2017-01-26",
                "26",
                "Jan",
                "2017",
                "ALL DAY",
                "https://c1.staticflickr.com/4/3851/33523165935_a487e401c4_q.jpg"
            ),
            new Event(
                "ANZAC Day",
                "A day remembering Australians and New Zealanders who served in all wars, conflicts, and peacekeeping operations.",
                "2017-04-27",
                "27",
                "Apr",
                "2017",
                "ALL DAY",
                "https://c1.staticflickr.com/4/3609/3467065707_70fc427d77_q.jpg"
            ),
            new Event(
                "Queen's Birthay",
                "Official Birthday of Queen Elizabeth II",
                "2017-06-12",
                "12",
                "Jun",
                "2017",
                "ALL DAY",
                "https://c1.staticflickr.com/5/4101/4749808342_032d2862e0_q.jpg"
            ),
        );

        $numberOfEvents = 4;
    ?>

    <div class="row">
        <h3>
            Events
        </h3>
    </div>
    <div class="row">
        <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
            <ul class="event-list">
                <?php
                    for ($i = 0; $i < $numberOfEvents; $i++) {
                        $event = $events[$i];
                ?>

                <li>
                    <time datetime="<?php print($event->dateTime); ?>">
                        <span class="day"><?php print($event->day); ?></span>
                        <span class="month"><?php print($event->month); ?></span>
                        <span class="year"><?php print($event->year); ?></span>
                        <span class="time"><?php print($event->time); ?></span>
                    </time>
                    <img alt="<?php print($event->name); ?>"
                         src="<?php print($event->imageUrlLink); ?>"/>
                    <div class="info">
                        <h2 class="title"><?php print($event->name); ?></h2>
                        <p class="desc"><?php print($event->description); ?></p>
                    </div>
                    <div class="social">
                        <ul>
                            <li class="facebook" style="width:33%;"><a href="#facebook"><span
                                            class="fa fa-facebook"></span></a></li>
                            <li class="twitter" style="width:34%;"><a href="#twitter"><span
                                            class="fa fa-twitter"></span></a></li>
                            <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                            class="fa fa-google-plus"></span></a></li>
                        </ul>
                    </div>
                </li>

                <?php
                    }
                ?>
            </ul>
        </div>
    </div>
</div>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/main.js"></script>

<script src="js/newscarousel.js" type="text/javascript"></script>

</body>
</html>
