<?php
    require 'NewsItem.php';
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

    <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>


    <link href="css/events.css" rel="stylesheet" type="text/css">
    <link href="css/news.css" rel="stylesheet" type="text/css">
    <link href="css/agency.css" rel="stylesheet" type="text/css">
    <link href="css/pages_brand.css" rel="stylesheet" type="text/css">
</head>

<body id="page-top" class="index">

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top">Pages | Online Book Catalogue</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="#">Home</a>
                </li>
                <li>
                    <a class="page-scroll" href="#news">News</a>
                </li>
                <li>
                    <a class="page-scroll" href="#events">Events</a>
                </li>
                <li>
                    <a class="page-scroll" href="books.html">Books</a>
                </li>
                <li>
                    <a class="page-scroll" href="contactus.html">Contact Us</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- Header -->
<header>
    <div class="container">
        <div class="intro-text">
            <div class="intro-lead-in">Welcome To <span id="brand">Pages</span>&nbsp;&nbsp;!!!</div>
            <div class="intro-heading">It's Nice To Meet You</div>
            <a href="#news" class="page-scroll btn btn-xl">See Latest News</a>
        </div>
    </div>
</header>

<section id="news">
<div class="container container-news">
    <div class="row"><h3>Latest News</h3></div>

    <?php

        $newsItems = array(
            new NewsItem(
                "J. K. Rowling Resurrects Dumbledore",
                "Antonio Pigafeta",
                "Famous author of the Harry Potter novel series has yet again suprised us. If you have been following the novels, it's no spoiler to say that the beloved wizard Dumbledore made the ultimate sacrifice to defeat the evil wizard Lord Voldermort. But there's news brewing that my old man Dumbledore is being resurrected. Watch out for this new novel coming out 2018 from Rowling.",
                "https://static.juksy.com/files/cover/43752/567a97a81ecae.jpg?m=resize&i=760x400&e=jpg&q=75"
            ),
            new NewsItem(
                "Terror Attack On Book Launch",
                "John Grisham",
                "A bomb exploded just as writer George R. R. Martin was doing a reading of Chapter 3 of his new addition to 'A Story of Song and Ice' book series. The group named, 'Defenders of GOT', claimed the bombing which police has classified as a terrorist attack. The group sent out a correspondence to Martin a few days before the attack objecting to his killing off of a number of their favourite characters in the TV series. The police does not want to comment any further about the attack until the final report comes out.",
                "https://media1.s-nbcnews.com/j/newscms/2017_21/2008841/170522-manchester-explosion-ac-730p_c9af4b6bc07b0dd2d050325beec31e97.nbcnews-fp-760-400.jpg"
            ),
            new NewsItem(
                "Neil Gaiman Comes Out Of The Closet",
                "Anne Rice",
                "Graphic novel author, Neil Gaiman has just come out of the closet. The 56-year-old author of the Sandman series posted in his Facebook wall: 'Well, it is about time. I am also sixty. So I just need to flesh it out. I am gay. But surely, this does not come as a surprise. People have been calling it out on my face almost every day for 56 years: Neil... Gay-man.' Friends posted their support to Gaiman. In another Facebook post, he hinted on a plot in an upcoming novel where the protagonist of his Sandman series transforms into a transgender female. He said, 'Again, this is no surprise. You all see how the Sandman dresses. He... or now She likes to dress in flowing black gowns and likes putting up gothic make-up. If that didn't give it away, I think you people have to really TRY TO READ literation.' The Sandman, he adds, had taken on a new name: Sandy.",
                "http://static-files.asianetnews.tv/media/image_library/f561366d-df8c-4135-b06a-1d0bfeadb57c/Neil_Gaiman_760x400.jpg"
            ),
            new NewsItem(
                "A Marriage Counselor's Reading of The Lord of The Rings",
                "Victor Hugo",
                "Everybody has read J. R. R. Tolkien's thrill-logy, The Lord of the Rings. But apparently a marriage counselor and famous psychonalyst, Sigmund Freud, is popularising a new reading of the first instalment of the series, 'The Fellowship of the Rings.' There apparently the fellowship breaks down just as the Hobbit, Mr. Baggins, starts the quest to return a precious ring to the fires of Hordor. Mr. Freud quipped, 'It is known amongst a great number of psychologists and psychoanalysts that there's a correlation between the value of the wedding ring and the lenght of marriage. The more expensive the wedding ring the less resilient the marriage. That can be applied to the Fellowship of the Rings... the more precious the ring, the less resilient the fellowship to stick.' Asked for comment, J. R. R. Tolkien said he's consulting his legal team on actions against Dr. Freud for impugning on the purity of morals of his characters.",
                "https://c8.staticflickr.com/6/5697/30213092023_a355b09bec_o.jpg"
            ),
        );

        $numberOfNewsItems = 4;
    ?>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

        <?php
            for ($i = 0; $i < $numberOfNewsItems; $i++) {
                $newsItem = $newsItems[$i];
                $newsTitle = $newsItem->title;
                $authorName = $newsItem->author;
                $newsAbstract = $newsItem->text;
                $newsImageLink = $newsItem->imageUrl;
                $activeTag = ($i == 0) ? "active" : "";
        ?>

            <div class="item <?php print($activeTag); ?>">
                <img class="resize-image" src="<?php print($newsImageLink); ?>" alt="Nothing here">

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
                    $newsItem = $newsItems[$i];
                    $newsTitle = $newsItem->title;
                    $authorName = $newsItem->author;
                    $activeTag = ($i == 0) ? "active" : "";
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
</section>

<section id="events">
<div class="container container-events">

    <?php
        $events = array(
            new Event(
                "New Year's Day",
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
</section>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
<script src="js/vendor/bootstrap.min.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>

<script src="js/newscarousel.js" type="text/javascript"></script>
<script src="js/agency.js" type="text/javascript"></script>

</body>
</html>
