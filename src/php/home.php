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
    <div class="row">
        <h3>
            Events
        </h3>
    </div>
    <div class="row">
        <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
            <ul class="event-list">
                <li>
                    <time datetime="2014-07-20">
                        <span class="day">4</span>
                        <span class="month">Jul</span>
                        <span class="year">2014</span>
                        <span class="time">ALL DAY</span>
                    </time>
                    <img alt="Independence Day" src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg"/>
                    <div class="info">
                        <h2 class="title">Independence Day</h2>
                        <p class="desc">United States Holiday</p>
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

                <li>
                    <time datetime="2014-07-20 0000">
                        <span class="day">8</span>
                        <span class="month">Jul</span>
                        <span class="year">2014</span>
                        <span class="time">12:00 AM</span>
                    </time>
                    <div class="info">
                        <h2 class="title">One Piece Unlimited World Red</h2>
                        <p class="desc">PS Vita</p>
                        <ul>
                            <li style="width:50%;"><a href="#website"><span class="fa fa-globe"></span> Website</a></li>
                            <li style="width:50%;"><span class="fa fa-money"></span> $39.99</li>
                        </ul>
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

                <li>
                    <time datetime="2014-07-20 2000">
                        <span class="day">20</span>
                        <span class="month">Jan</span>
                        <span class="year">2014</span>
                        <span class="time">8:00 PM</span>
                    </time>
                    <img alt="My 24th Birthday!" src="https://farm5.staticflickr.com/4150/5045502202_1d867c8a41_q.jpg"/>
                    <div class="info">
                        <h2 class="title">Mouse0270's 24th Birthday!</h2>
                        <p class="desc">Bar Hopping in Erie, Pa.</p>
                        <ul>
                            <li style="width:33%;">1 <span class="glyphicon glyphicon-ok"></span></li>
                            <li style="width:34%;">3 <span class="fa fa-question"></span></li>
                            <li style="width:33%;">103 <span class="fa fa-envelope"></span></li>
                        </ul>
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

                <li>
                    <time datetime="2014-07-31 1600">
                        <span class="day">31</span>
                        <span class="month">Jan</span>
                        <span class="year">2014</span>
                        <span class="time">4:00 PM</span>
                    </time>

                    <img alt="Disney Junior Live On Tour!"
                         src="https://c1.staticflickr.com/8/7339/13022230733_6d8d7a680c_q.jpg"/>
                    <div class="info">
                        <h2 class="title">Disney Junior Live On Tour!</h2>
                        <p class="desc"> Pirate and Princess Adventure</p>
                        <ul>
                            <li style="width:33%;">$49.99 <span class="fa fa-male"></span></li>
                            <li style="width:34%;">$29.99 <span class="fa fa-child"></span></li>
                        </ul>
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
