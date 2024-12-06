<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>    
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
                  <button class="login-btn" onclick="location.href='/user/login'">로그인</button>
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