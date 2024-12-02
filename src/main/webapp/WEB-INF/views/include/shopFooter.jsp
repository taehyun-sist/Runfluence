<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-content">
                <!-- Footer Widget -->
                <div class="footer-widget">
                    <img src="/resources/shop/img/logo11.png" alt="" style="padding-top: 13px; width: 150px;" >
                    <ul class="footer-info">
                        <li><i class="fa fa-phone-alt text-primary mr-3"></i><span>Phone: (02)336 8546</span></li>
                        <li><i class="fa fa-envelope text-primary mr-3"></i><span>Email: Running.info@gmail.com</span></li>
                        <li><i class="fa fa-map-marker-alt text-primary mr-3"></i><span>Address: 서울특별시 마포구 서교동 447-5 풍성빌딩 2층</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

    <!-- 모달 -->
    <div id="shop-menuModal" class="shop-modal">
        <div class="shop-modal-content">
          <div class="shop-modal-header">
            <h2>SHOP</h2>
            <span class="close-btn">&times;</span>
          </div>
          <ul>
            <li><a href="./mypage">마이페이지</a></li>
            <li><a href="./wish">위시리스트</a></li>
            <li><a href="./contact">고객지원</a></li>
          </ul>
          <button class="login-btn" onclick="">로그인</button>
          <a href="#" class="signup-link">회원가입</a>
        </div>
      </div>
    <!--모달끝-->

    <!-- JavaScript Libraries -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/shop/lib/easing/easing.min.js"></script>
    <script src="/resources/shop/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="/resources/shop/mail/jqBootstrapValidation.min.js"></script>
    <script src="/resources/shop/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/shop/js/main.js"></script>