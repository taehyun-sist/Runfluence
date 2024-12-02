<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>    
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Activitar Template">
    <meta name="keywords" content="Activitar, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RunFluence</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/index/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/index/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="logo">
                <a href="/index">
                    <img src="resources/index/img/logo11.png" alt="">
                </a>
            </div>
            <div class="top-social">
                <a href="javascript:void(0)">
                  <i id="menuButton"><p style="font-size:1.3rem;">&#128095;</p></i>
                </a>
            </div>
              
              <!-- 모달 -->
              <div id="menuModal" class="modal">
                <div class="modal-content">
                  <span class="close-btn">&times;</span>
                  <h2>메뉴</h2>
                  <ul>
                    <li>마이페이지</li>
                    <li>위시리스트</li>
                    <li>고객지원</li>
                    <li>언어 
                      <span class="language-option">한국어 🇰🇷</span>
                    </li>
                  </ul>
                  <button class="login-btn">로그인</button>
                  <a href="#" class="signup-link">회원가입</a>
                </div>
              </div>

            <div class="container">
                <div class="nav-menu">
                    <nav class="mainmenu mobile-menu">
                        <ul class="menu align-center expanded text-center SMN_effect-36">
                            <li class="active"><a href="/index">Home</a></li>
                            <!-- <li><a href="./about-us">About us</a></li> -->
                            <li><a href="/shop/shopIndex">Shop</a></li>
                            <li><a href="./community">Community</a>
                                <ul class="dropdown">
                                    <li><a href="./about-us">Community Board</a></li>
                                    <li><a href="./blog-single">STYLE</a></li>
                                </ul>
                            </li>
                            <li><a href="./marathon">EVENT</a></li>
                            <li><a href="./contact">Assistance</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-item set-bg" data-setbg="resources/index/img/style2.jpg" style="object-fit:contain;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hero-text">
                                <h2>Join Us Now</h2>
                                <h1>Running & SPORT</h1>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-hero-item set-bg" data-setbg="resources/index/img/222.jpg"  style="object-fit:contain;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hero-text">
                                <h2>달리기를 더 신나게!</h2>
                                <h1> Marathon & Run </h1>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-hero-item set-bg" data-setbg="resources/index/img/mainImg4.jpg" style="object-fit:contain;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hero-text">
                                <h2>Shopping Us Now</h2>
                                <h1> Shop & Run </h1>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero End -->

    <!-- Feature Section Begin -->
    <section class="feature-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <a href="./shop/shopIndex">
                    <div class="feature-item set-bg" data-setbg="resources/index/img/shoes3.jpg" >
                        <h3>SHOP</h3>
                    </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="./community">
                        <div class="feature-item set-bg" data-setbg="resources/index/img/image.jpg" >
                            <h3>STYLE</h3>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4">
                    <a href="./event">
                    <div class="feature-item set-bg" data-setbg="resources/index/img/marathon.jpg" >
                        <h3>MARATHON</h3>
                    </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Feature Section End -->

    <!-- Classes Section Begin -->
    <section class="classes-section">
        <!-- <div class="class-title set-bg" data-setbg="img/classes-title-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 m-auto text-center">
                        <div class="section-title pl-lg-4 pr-lg-4 pl-0 pr-0">
                            <h2>추운날에도 도전하는 그 순간, 당신이 특별해진다</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    <!-- Classes Section End -->
     
    <!-- Class Time Section Begin -->
    <section class="classtime-section class-time-table spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>EVENT</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="timetable-controls">
                        <ul>
                            <li class="active" data-tsfilter="all">all event</li>
                            <li data-tsfilter="Marathon">Marathon</li>
                            <li data-tsfilter="Teaching">Teaching</li>
                            <!-- <li data-tsfilter="Walk">Walk</li> -->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="classtime-table">
                <div class="event-items owl-carousel" id="all-class" data-tsmeta="all">
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara5.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/teaching2.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara4.jpg" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/training4.jpg" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara11.jpg" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara6.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/teaching3.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/teaching1.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara333.jpg" style="max-width:900px; margin:auto;"></div>

                </div>
                <div class="event-items owl-carousel" id="marathon" data-tsmeta="Marathon">
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara11.jpg" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara2.jpg" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara4.jpg" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara5.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara6.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/mara7.jpg" style="max-width:900px; margin:auto;"></div>
                </div>
                <div class="event-items owl-carousel" id="teaching" data-tsmeta="Teaching">
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/teaching1.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/teaching2.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/teaching3.png" style="max-width:900px; margin:auto;"></div>
                    <div class="single-hero-item set-bg" data-setbg="resources/index/img/training4.jpg" style="max-width:900px; margin:auto;"></div>
                </div>
            </div>


            
        </div>
    </section>
    <!-- Class Time Section End -->

    <!-- Style Section Begin -->
    <section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>STYLE</h2>
                        <h6>#오런완 #daily #러닝화추천 #오늘의 운동</h6>
                    </div>
                </div>
            </div>
            <div class="feed-container">
                <div class="feeds">
                    <div class="social-feed-mansory social-feed">
                        <div class="feed-item">
                            <a href="./blog-single">
                                <img src="resources/index/img/style3.jpg" alt="Style 1">
                                <div class="feed-info">
                            </a>        
                                    <h4>@nickname1
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4> 
                                    <p>Casual & Modern</p>
                                </div>
                           
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single">
                                <img src="resources/index/img/style3.jpg" alt="Style 2" onclick="">
                                <div class="feed-info">
                            </a>
                                    <h4>@nickname2
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Chic & Trendy</p>
                                </div>    
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single">
                                <img src="resources/index/img/style3.jpg" alt="Style 3">
                                <div class="feed-info">
                            </a>
                                    <h4>@nickname3
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Urban Adventure</p>
                                </div>
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single">
                                <img src="resources/index/img/style3.jpg" alt="Style 4">
                                <div class="feed-info"></a>
                                    <h4>@nickname4
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Classic Elegance</p>
                                </div>
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single">
                                <img src="resources/index/img/style3.jpg" alt="Style 1">
                                <div class="feed-info"></a>
                                    <h4>@nickname1
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Casual & Modern</p>
                                </div>
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single">
                                <img src="resources/index/img/style3.jpg" alt="Style 1">
                                <div class="feed-info"></a>
                                    <h4>@nickname1
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Casual & Modern</p>
                                </div>
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single"> 
                                <img src="resources/index/img/style3.jpg" alt="Style 1">
                                <div class="feed-info"></a>
                                    <h4>@nickname1
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Casual & Modern</p>
                                </div>
                        </div>
                        <div class="feed-item">
                            <a href="./blog-single"> 
                                <img src="resources/index/img/style3.jpg" alt="Style 1">
                                <div class="feed-info"> </a>
                                    <h4>@nickname1
                                        <span class="like-container">
                                            <i class="like-heart" onclick="toggleLike(this)">♥</i>
                                            <span class="like-count">0</span>
                                        </span>
                                    </h4>
                                    <p>Casual & Modern</p>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!-- Style Section End --> 

    <!--띠배너 start-->
    <div class="band_wrap" style="width:100%; margin-top: 3.00vw; margin-bottom: 3.00vw;">
        <div class="band_image">
            <a href="./shop/shopIndex">
                <img src="https://akrebiz.s3.ap-northeast-2.amazonaws.com/9.Image_update/2024/PC/4.Line_banner/pc_line_ban_01.gif">
            </a>
        </div>
    </div>
    <!--띠배너 end-->

    <!-- About Section Begin -->
    <section class="home-about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-text">
                        <h2>WELCOME TO RUNNING</h2>
                        <p class="short-details">더 빠르게, 더 멀리, 더 잘 달릴 수 있고 더 효과적으로 회복하며 더 큰 재미를 느낄 수 있도록 돕는 가이드와 동기, 영감을 얻게 됩니다. 
                            목표는 더 강하고 빠를 뿐만 아니라 더 스마트한 러너가 되는 것입니다.</br></br>
                            # 러닝 효과 </br>
                            - 함께 목표 세우기: 특정 거리 달성, 마라톤 참가 등 목표를 설정하고 도전합니다.</br>
                            - 소셜 러닝: 정기적인 러닝 모임을 통해 네트워크를 확장하고 동기를 부여합니다.</br>
                            - 정보 공유: 러닝 관련 장비, 코스 추천, 영양 관리 등의 정보를 교환합니다.</br>
                            - 성취 상승: 개인 또는 팀의 성과를 함께 축하하며 성취감을 높입니다.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-text">
                        <h2>    </h2></br>
                        <div class="about-img">
                            <img src="resources/index/img/111.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

<!-- Footer Section Begin -->
<footer class="footer-section">
    <div class="container">
        <div class="footer-content">
            <!-- Footer Widget -->
            <div class="footer-widget">
                <img src="resources/index/img/logo11.png" alt="" style="padding-top: 13px; width: 150px;" >
                <ul class="footer-info">
                    <li><i class="fa fa-phone"></i><span>Phone: (02)336 8546</span></li>
                    <li><i class="fa fa-envelope-o"></i><span>Email: Running.info@gmail.com</span></li>
                    <li><i class="fa fa-map-marker"></i><span>Address: 서울특별시 마포구 서교동 447-5 풍성빌딩 2층</span></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->



    <!-- Js Plugins -->
    <script src="resources/index/js/jquery-3.3.1.min.js"></script>
    <script src="resources/index/js/bootstrap.min.js"></script>
    <script src="resources/index/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/index/js/mixitup.min.js"></script>
    <script src="resources/index/js/jquery.nice-select.min.js"></script>
    <script src="resources/index/js/jquery.slicknav.js"></script>
    <script src="resources/index/js/owl.carousel.min.js"></script>
    <script src="resources/index/js/masonry.pkgd.min.js"></script>
    <script src="resources/index/js/main.js"></script>
</body>

</html>