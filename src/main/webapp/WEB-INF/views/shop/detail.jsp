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
    <!-- Shop Detail Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">
                <div id="product-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner border">
                        <div class="carousel-item active">
                            <img class="w-100 h-100" src="/resources/shop/img/1.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="/resources/shop/img/2.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="/resources/shop/img/3.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="/resources/shop/img/4.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="/resources/shop/img/5.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="/resources/shop/img/6.jpg" alt="Image">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                        <i class="fa fa-2x fa-angle-left text-dark"></i>
                    </a>
                    <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                        <i class="fa fa-2x fa-angle-right text-dark"></i>
                    </a>
                </div>
            </div>

            <div class="col-lg-7 pb-5">
                <div class="product-title">
                    <h3 class="font-weight-semi-bold mb-0">마하 6 1147790-WNCL</h3>
                    <i class="detail-heart bi-heart" style="font-size:30px; color: red; cursor: pointer; margin-top: 3px; padding-left: 20px;"></i>
                </div>
                
                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star-half-alt"></small>
                        <small class="far fa-star"></small>
                    </div>
                    <small class="pt-1">(50 Reviews)</small>
                </div>
                <h3 class="font-weight-semi-bold mb-4">₩185,000</h3>
                <!-- <p class="mb-4">데일리 러닝의 동반자.
                    역대 가장 가볍고 반발력이 뛰어난 마하를 만나보세요.
                    이 생동감 넘치는 트레이닝 슈즈는 슈퍼 크리티컬 폼 미드솔로 에너지 리턴을 더욱 향상시키고,
                    아웃솔의 전략적 러버 커버로 내구성을 강화하여 새롭게 제작되었습니다.
                    전체적으로 속도에 초첨을 맞춘 디자인 디테일이 적용되었으며, 구역별 통기성을 갖춘 새로운 크릴 자카드 어퍼와
                    내부 거싯이 적용되어 개인 신기록을 세우는 데 필요한 발을 감싸는 듯한 편안함을 선사합니다.</p> -->
                <div class="d-flex mb-3">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Sizes:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-1" name="size">
                            <label class="custom-control-label" for="size-1">XS</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-2" name="size">
                            <label class="custom-control-label" for="size-2">S</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-3" name="size">
                            <label class="custom-control-label" for="size-3">M</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-4" name="size">
                            <label class="custom-control-label" for="size-4">L</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-5" name="size">
                            <label class="custom-control-label" for="size-5">XL</label>
                        </div>
                    </form>
                </div>
                <div class="d-flex mb-3">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Sizes:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-1" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-1">220</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-2" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-2">230</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-3" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-3">240</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-4" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-4">250</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-5" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-5">260</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-6" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-6">270</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-7" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-7">280</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-8" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-8">290</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                          <input type="radio" class="custom-control-input" id="shoesSize-9" name="shoesSize">
                          <label class="custom-control-label" for="shoesSize-9">300</label>
                      </div>                    
                    </form>
                </div>
                <div class="d-flex align-items-center mb-4 pt-2">
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-minus" >
                            <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="text" class="form-control bg-secondary text-center" value="1" readonly>
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> 장바구니</button>
                    <button class="btn btn-primary px-3 heart-wish"><i class="detail-heart bi-heart" style="font-size:20px; color: red; cursor: pointer; padding-top:3px; padding-right:5px;"></i>위시리스트</button>
                </div>
                
            </div>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                    <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">상품상세</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">상품문의</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews (0)</a>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-pane-1">
                        <h4 class="mb-3">마하 6 1147790-WNCL</h4>
                        <p style="white-space: pre-line;">데일리 러닝의 동반자.
                            역대 가장 가볍고 반발력이 뛰어난 마하를 만나보세요.
                            이 생동감 넘치는 트레이닝 슈즈는 슈퍼 크리티컬 폼 미드솔로 에너지 리턴을 더욱 향상시키고,
                            아웃솔의 전략적 러버 커버로 내구성을 강화하여 새롭게 제작되었습니다.
                            전체적으로 속도에 초첨을 맞춘 디자인 디테일이 적용되었으며, 구역별 통기성을 갖춘 새로운 크릴 자카드 어퍼와
                            내부 거싯이 적용되어 개인 신기록을 세우는 데 필요한 발을 감싸는 듯한 편안함을 선사합니다.</p>
                        <p style="white-space: pre-line;">FEATURES

                            - 크릴 자카드 어퍼
                            
                            - 간결한 칼라 폼 패키지 
                            
                            - 이중 내부 거싯 
                            
                            - 슈퍼 크리티컬 폼 미드솔 
                            
                            - 전략적인 러버 아웃솔 커버리지 
                            
                            - 인체공학적인 텅 
                            
                            SPEC
                            
                            HEEL TO TOE DROP_ 신발의 뒤꿈치와 앞발 사이의 높이 차이로 인한 발의 기울기
                            
                            - MEN
                            
                            37mm HEEL 32mm FOREFOOT / 5mm ​
                            
                            WEIGHT
                            
                            - MEN 232g (270mm 기준)</p>
                    </div>
                    <div class="tab-pane fade" id="tab-pane-2">
                        <div class="container-fluid pt-5">
                            <div class="text-center mb-4">
                                <h2 class="section-title px-5"><span class="px-2">상품 문의</span></h2>
                            </div>
                            <div class="row px-xl-5">
                                <div class="col-lg-7 mb-5">
                                    <div class="contact-form">
                                        <div id="success"></div>
                                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                                            <div class="control-group">
                                                <input type="text" class="form-control" id="name" placeholder="이름"
                                                    required="required" data-validation-required-message="Please enter your name" />
                                                <p class="help-block text-danger"></p>
                                            </div>
                                            <div class="control-group">
                                                <input type="email" class="form-control" id="email" placeholder="이메일"
                                                    required="required" data-validation-required-message="Please enter your email" />
                                                <p class="help-block text-danger"></p>
                                            </div>
                                            <div class="control-group">
                                                <input type="text" class="form-control" id="subject" placeholder="상품명"
                                                    required="required" data-validation-required-message="Please enter a subject" />
                                                <p class="help-block text-danger"></p>
                                            </div>
                                            <div class="control-group">
                                                <textarea class="form-control" rows="6" id="message" placeholder="문의 내용"
                                                    required="required"
                                                    data-validation-required-message="Please enter your message"></textarea>
                                                <p class="help-block text-danger"></p>
                                            </div>
                                            <div>
                                                <button class="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">Send
                                                    Message</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-5 mb-5">
                                    <h5 class="font-weight-semi-bold mb-3">교환 및 반품 안내</h5>
                                    <p style="white-space: pre-line; font-size: 15px;">상품 수령일로부터 7일 이내에 교환/반품 신청을 해주시기 바랍니다.
                                        다음과 같은 경우 교환 및 반품 처리가 불가합니다.
                                        &#128095; 상품을 이미 사용한 경우
                                        &#128095; 상품 수령일로부터 7일이 경과한 경우
                                        &#128095; 상품과 상품 액세서리(신발박스, 가격 택, 라벨, 폴리백 포장 등)를 분실 또는 훼손한 경우
                                        &#128095; 구매한 상품의 구성품(세트 상품 중 일부상품, 사은품, 증정품 등)이 누락된 경우
                                        &#128095; 상품 교환 안내
                                        </p>
                                    <div class="d-flex flex-column mb-3">
                                        <h5 class="font-weight-semi-bold mb-3">기타 문의사항 및 FAQs는 <a href="" style="color: #036635;">문의게시판</a>을 확인하세요</h5>
                                        <!-- <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                                        <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p> -->
                                    </div>
                                    <!-- <div class="d-flex flex-column">
                                        <h5 class="font-weight-semi-bold mb-3">Store 2</h5>
                                        <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                                        <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab-pane-3">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="mb-4">1 review for "Colorful Stylish Shirt"</h4>
                                <div class="media mb-4">
                                    <img src="img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
                                    <div class="media-body">
                                        <h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
                                        <div class="text-primary mb-2">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h4 class="mb-4">Leave a review</h4>
                                <small>Your email address will not be published. Required fields are marked *</small>
                                <div class="d-flex my-3">
                                  <p class="mb-0 mr-2">Your Rating * :</p>
                                  <div class="text-primary">
                                      <i class="reviewStar far fa-star" data-index="1"></i>
                                      <i class="reviewStar far fa-star" data-index="2"></i>
                                      <i class="reviewStar far fa-star" data-index="3"></i>
                                      <i class="reviewStar far fa-star" data-index="4"></i>
                                      <i class="reviewStar far fa-star" data-index="5"></i>
                                  </div>
                              </div>
                              
                                <form>
                                    <div class="form-group">
                                        <label for="message">Your Review *</label>
                                        <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="name">Your Name *</label>
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Your Email *</label>
                                        <input type="email" class="form-control" id="email">
                                    </div>
                                    <div class="form-group mb-0">
                                        <input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Detail End -->

<%@include file="/WEB-INF/views/include/shopFooter.jsp" %>
</body>

</html>