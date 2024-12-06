<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>

<!-- Topbar Start -->
       <div class="container-fluid" style="border-bottom: 1px solid #EDF1FF;">
        <div class="row bg-secondary py-2 px-xl-5" style="flex-wrap:nowrap; background-color: #c6cbce !important;">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark px-2" href="/shop/shopIndex">SHOP</a></li>
                    <a class="text-dark px-2" href="#">Community</a>
                    <a class="text-dark px-2" href="#">Event</a>
                </div>
            </div>
        
            <div class="col-lg-6 text-center text-lg-right" style="text-align: right !important">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block"  style="text-align: center;">
                <a href="/" class="text-decoration-none">
                <img src="/resources/index/img/logo.png" alt="" style="width: 150px;" >
                    
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <nav class="navbar navbar-light align-items-start p-0 bg-light" style="width: 100%; z-index: 1; justify-content: center; background-color: #FFFFFF !important;">
                    <ul class="custom-navbar SMN_effect-36">
                        
                        <li><a href="#">SHOES</a></li>
                        <li><a href="#">TOP</a></li>
                        <li><a href="#">PANTS</a></li>
                        <li><a href="#">OUTER</a></li>
                        <li><a href="#">PRODUCT</a></li>
                    </ul>
                </nav>
            </div>
            
            <div class="col-lg-3 col-6 text-right">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" id="_searchValue" placeholder="Search for products">
                        <div class="input-group-append" id="searchBtn">
                            <span class="input-group-text bg-transparent text-primary search">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>        
                <a href="/shop/cart" class="btn">
                    <i class="fas fa-shopping-cart text-primary cart"></i>
                    <!-- <span class="badge">0</span> 카운트값  -->
                </a>
                <a href="javascript:void(0)">
                    <i class="fas fa-user" id="shop-menuButton"></i> 
                </a>  
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    
