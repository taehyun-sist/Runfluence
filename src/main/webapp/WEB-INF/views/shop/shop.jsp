<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
</head>

<body>
<%@include file="/WEB-INF/views/include/shopCate.jsp" %>
    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-12">
                 <!-- Gender Start -->
                 <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">성별</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="gender-all">
                            <label class="custom-control-label check" for="gender-all">All</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="gender-1">
                            <label class="custom-control-label check" for="gender-1">Women</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="gender-2">
                            <label class="custom-control-label check" for="gender-2">Man</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                    </form>
                </div>
                <!-- Gender End -->
                <!-- Price Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">가격</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all">
                            <label class="custom-control-label check" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1">
                            <label class="custom-control-label check" for="price-1">~ 10만원</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2">
                            <label class="custom-control-label check" for="price-2">10만원~20만원</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3">
                            <label class="custom-control-label check" for="price-3">20만원~30만원</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4">
                            <label class="custom-control-label check" for="price-4">30만원~40만원</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-5">
                            <label class="custom-control-label check" for="price-5">40만원~50만원</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-6">
                            <label class="custom-control-label check" for="price-6">50만원 이상</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Price End -->
                
                <!-- Color Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">브랜드</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="brand-all">
                            <label class="custom-control-label check" for="brand-all">All Brand</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-1">
                            <label class="custom-control-label check" for="brand-1">Nike</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-2">
                            <label class="custom-control-label check" for="brand-2">Adidas</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-3">
                            <label class="custom-control-label check" for="brand-3">Puma</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-4">
                            <label class="custom-control-label check" for="brand-4">On</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-5">
                            <label class="custom-control-label check" for="brand-5">Hoka</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-6">
                            <label class="custom-control-label check" for="brand-6">Other</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Color End -->

                <!-- Size Start -->
                <div class="mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">사이즈</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="size-all">
                            <label class="custom-control-label check" for="size-all">All Size</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-1">
                            <label class="custom-control-label check" for="size-1">XS</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-2">
                            <label class="custom-control-label check" for="size-2">S</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-3">
                            <label class="custom-control-label check" for="size-3">M</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-4">
                            <label class="custom-control-label check" for="size-4">L</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="size-5">
                            <label class="custom-control-label check" for="size-5">XL</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Size End -->

                <!-- Size2 Start -->
                <div class="mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">사이즈</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="size2-all">
                            <label class="custom-control-label check" for="size2-all">All Size</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-1">
                            <label class="custom-control-label check" for="size2-1">220</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-2">
                            <label class="custom-control-label check" for="size2-2">230</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-3">
                            <label class="custom-control-label check" for="size2-3">240</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-4">
                            <label class="custom-control-label check" for="size2-4">250</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-5">
                            <label class="custom-control-label check" for="size2-5">260</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-6">
                            <label class="custom-control-label check" for="size2-6">270</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-7">
                            <label class="custom-control-label check" for="size2-7">280</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-8">
                            <label class="custom-control-label check" for="size2-8">290</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-9">
                            <label class="custom-control-label check" for="size2-9">300</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>

                    </form>
                </div>
                <!-- Size2 End -->
            </div>
            <!-- Shop Sidebar End -->


            <!-- Shop Product Start -->
            <div class="col-lg-9 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="">
                                <div class="input-group">
                                    <div class="input-group-append">
                                    </div>
                                </div>
                            </form>
                            <div class="dropdown ml-4">
                                <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                            정렬 기준
                                        </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                    <a class="dropdown-item" href="#">최신순</a>
                                    <a class="dropdown-item" href="#">인기순</a>
                                    <a class="dropdown-item" href="#">할인순</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-1.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-2.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-3.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-4.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-5.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-6.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-7.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="./detail">
                                    <img class="img-fluid w-100" src="/resources/shop/img/product-8.jpg" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="/resources/shop/img/product-1.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center mb-3">
                            <li class="page-item disabled">
                              <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                              </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->

    <%@include file="/WEB-INF/views/include/shopFooter.jsp" %>
</body>

</html>