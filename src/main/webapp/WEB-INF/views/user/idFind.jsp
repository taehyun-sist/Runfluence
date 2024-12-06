<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>    
<html lang="ko" style="--vh: 7.86px; --global-header-height: 44px;">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <head>
        <meta data-n-head="ssr" charset="utf-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Runfluence</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
        <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
        <style>
            /* 공통 스타일 */
            *, :after, :before {
                -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                box-sizing: border-box;
            }

            body, html {
                -ms-text-size-adjust: none;
                -moz-text-size-adjust: none;
                -webkit-text-size-adjust: none;
                -moz-osx-font-smoothing: grayscale;
                -webkit-font-smoothing: antialiased;
                -webkit-overflow-scrolling: touch;
                height: 100%;
                touch-action: manipulation;
                word-break: break-all;
                margin: 0;
                padding: 0;
                font-feature-settings: "frac" 0, "numr" 0;
                color: #222;
                font-family: Pretendard Variable, Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Apple SD Gothic Neo, Noto Sans KR, Malgun Gothic, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
            }

            /* 기본 요소 스타일 */
            h2, h3 {
                display: block;
                margin: 0.83em 0;
                font-weight: bold;
                unicode-bidi: isolate;
            }

            h2 {
                font-size: 1.5em;
            }

            h3 {
                font-size: 1.17em;
            }

            p {
                display: block;
                margin: 1em 0;
                unicode-bidi: isolate;
            }

            /* .help_area */
            .help_area[data-v-05346783] {
                margin: 0 auto;
                padding: 60px 0 160px;
                width: 400px; /* 고정된 width */
            }

            .help_area[data-v-05346783], 
            .help_area[data-v-05346783] .content.mo, 
            .help_area[data-v-05346783] .content.sm {
                padding: 19px 0 80px;
                width: 100%;
            }

            .help_title[data-v-05346783] {
                border-bottom: 2px solid #000;
                color: #000;
                font-size: 32px; /* 고정된 폰트 크기 */
                letter-spacing: -0.48px;
                padding-bottom: 41px; /* 고정된 padding 값 */
                text-align: center;
                width: 100%; /* 고정된 크기 */
                box-sizing: border-box; /* padding을 포함한 너비 계산 */
                height: 100px; /* 고정된 높이 (예시) */
            }

            body, button, input, select, table, textarea {
                font-feature-settings: "frac" 0, "numr" 0;
                color: #222;
                font-family: Pretendard Variable, Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Apple SD Gothic Neo, Noto Sans KR, Malgun Gothic, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
            }

            /* 버튼 스타일 */
            .solid.disabled[data-v-7122e1e2], 
            .solid[data-v-7122e1e2]:disabled {
                background-color: rgba(34, 34, 34, .2);
                color: #fff;
                cursor: default;
                font-weight: 400;
            }

            /* 활성화된 버튼 스타일 */
            .solid {
                background-color: #222 !important; 
                color: #fff !important;
                font-weight: 700 !important;
            }

            .full[data-v-7122e1e2] {
                font-size: 16px;
                font-weight: 700;
                height: 52px;
                letter-spacing: -.16px;
                width: 100%;
            }

            .btn.btn_buy_exclusive[data-v-7122e1e2], 
            .full[data-v-7122e1e2] {
                border-radius: 10px;
            }

            .btn[data-v-7122e1e2] {
                align-items: center;
                background-color: #fff;
                color: rgba(34, 34, 34, .8);
                cursor: pointer;
                display: inline-flex;
                justify-content: center;
                text-align: center;
                vertical-align: middle;
            }

            .solid.disabled[data-v-7122e1e2], .solid[data-v-7122e1e2]:disabled {
                background-color: rgba(34, 34, 34, .2) !important;
                color: #fff !important;
                cursor: default !important;
                font-weight: 400;
            }

            /* 링크 스타일 */
            a, a:active, a:focus, a:hover {
                -webkit-text-decoration: none;
                text-decoration: none;
            }

            a {
                -webkit-tap-highlight-color: rgba(0, 0, 0, .1);
                color: inherit;
            }

            /* .input_box */
            .input_box[data-v-5f866f8a] {
                padding: 10px 0 14px;
                position: relative;
            }

            .input_title[data-v-5f866f8a] {
                font-size: 13px;
                letter-spacing: -0.07px;
                line-height: 18px;
            }

            .input_item[data-v-5f866f8a] {
                position: relative;
            }

            .input_txt[data-v-5f866f8a] {
                border-bottom: 1px solid #ebebeb;
                font-size: 15px;
                letter-spacing: -0.15px;
                line-height: 22px;
                padding: 8px 0;
                width: 100%;
            }

            /* input, textarea 스타일 */
            input, textarea {
                -webkit-appearance: none;
                background-color: transparent;
                border: 0;
                border-radius: 0;
                outline: 0;
                padding: 0;
                resize: none;
                font-family: inherit;
                font-size: inherit;
                color: inherit;
                line-height: inherit;
            }

            input:not([type="file"], [type="image"], [type="checkbox"], [type="radio"]) {
                overflow-clip-margin: 0 !important;
                overflow: clip !important;
            }

            input[type="tel"] {
                direction: ltr;
                padding-block: 1px;
                padding-inline: 2px;
            }

            /* 미디어 쿼리 */
            @media (max-width: 960px) {
                .wrap[data-v-4f6329ba] {
                    padding-top: 0 !important;
                }
            }

            /* 기타 */
            .wrap[data-v-4f6329ba] {
                overflow-anchor: none;
                padding-top: 86px;
                position: relative;
            }

            .layout__main--without-search[data-v-480ae706] {
                min-height: calc(100vh - 221px);
            }

            .help_btn_box[data-v-05346783] {
                padding-top: 44px;
            }

            .help_area[data-v-05346783] {
                margin: 0 auto;
                padding: 60px 0 160px;
                width: 400px;
            }

            .success_notice[data-v-05346783] {
                padding-top: 30px !important;
                text-align: center !important;
            }
            
            .success_notice .notice_title[data-v-05346783] {
                color: rgba(34, 34, 34, .5) !important;
                font-size: 12px !important;
                letter-spacing: -.06px !important;
            }

            .success_notice .notice_txt[data-v-05346783] {
                font-size: 18px !important;
                font-weight: 700 !important;
                letter-spacing: -.09px !important;
                padding-top: 8px !important;
            }

            .success_btn_box[data-v-05346783] {
                display: flex;
                padding-top: 56px;
            }

            .success_btn_box .btn[data-v-05346783] {
                border-radius: 12px;
                flex: 1;
                height: 52px;
                line-height: 52px;
            }

            .outline[data-v-7122e1e2] {
                border: 1px solid #d3d3d3;
            }

            .large[data-v-7122e1e2] {
                letter-spacing: -.16px;
                padding: 0 25px;
            }

        
            .success_btn_box .btn+.btn[data-v-05346783] {
                margin-left: 8px;
            }   

            .success_btn_box .btn[data-v-05346783] {
                border-radius: 12px;
                flex: 1;
                height: 52px;
                line-height: 52px;
            }

            .solid[data-v-7122e1e2] {
                background-color: #222;
                color: #fff;
                font-weight: 700;
            }

            .large[data-v-7122e1e2] {
                letter-spacing: -.16px;
                padding: 0 25px;
            }
            
            .success_notice[data-v-05346783] {
                padding-top: 30px;
                text-align: center;
            }

            dl {
                display: block;
                margin-block-start: 1em;
                margin-block-end: 1em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                unicode-bidi: isolate;
            }

            .help_title.success[data-v-05346783] {
                font-size: 24px;
                letter-spacing: -.36px;
                padding-top: 40px;
            }

            .help_title[data-v-05346783] {
                border-bottom: 2px solid #000;
                color: #000;
                font-size: 32px;
                letter-spacing: -.48px;
                padding-bottom: 41px;
                text-align: center;
            }

        </style>

        <script>

            // DOMContentLoaded 이벤트 리스너를 사용하여 페이지가 로드된 후 스크립트를 실행
            document.addEventListener("DOMContentLoaded", function () {
                const emailInput = document.getElementById('userEmail'); // 이메일 입력 필드
                const findEmailBtn = document.getElementById('findEmailBtn'); // 이메일 아이디 찾기 버튼

                // 이메일 입력 필드에 값이 있을 때 버튼을 활성화하고, 비어있으면 비활성화
                emailInput.addEventListener('input', function () {
                    let email = emailInput.value.trim();
                    
                    // 이메일이 비어 있지 않고 유효한 이메일인지 확인
                    if (email !== "" && fn_validateEmail(email)) {
                        // 이메일이 입력되면 버튼 활성화
                        findEmailBtn.removeAttribute('disabled'); // disabled 속성 제거
                        findEmailBtn.classList.remove('disabled'); // 비활성화 클래스 제거
                        findEmailBtn.classList.add('solid'); // 활성화된 클래스 추가
                    } else {
                        // 이메일이 비어있거나 유효하지 않으면 버튼 비활성화
                        findEmailBtn.setAttribute('disabled', 'disabled'); // disabled 속성 추가
                        findEmailBtn.classList.add('disabled'); // 비활성화 클래스 추가
                        findEmailBtn.classList.remove('solid'); // 활성화된 클래스 제거
                    }
                });
            });

            $(document).ready(function(){
                $("#findEmailBtn").on("click", function() {

                    // #input_email 요소를 삭제
                    $(".help_title").remove();

                    $("#input_email").remove();

                    $(".help_notice").remove();

                    // #help_btn_box 요소를 삭제
                    $(".help_btn_box").remove();

                    // #success_email 요소를 #help_area에 동적으로 추가
                    $(".help_area").append(`

                        <h2 data-v-05346783="" class="help_title success">
                            <span data-v-05346783="">이메일 주소 찾기에</span>
                            <span data-v-05346783="">성공하였습니다.</span>
                        </h2>

                        <div data-v-05346783="" class="success_notice">
                            <dl data-v-05346783="">
                                <dt data-v-05346783="" class="notice_title">이메일 주소</dt>
                                <dd data-v-05346783="" class="notice_txt"> s********8@naver.com </dd>
                            </dl>
                        </div>
                    
                        <div data-v-05346783="" class="success_btn_box">
                            <a data-v-7122e1e2="" data-v-05346783="" href="/login/find_password" class="btn outline large" type="button"> 비밀번호 찾기 </a>
                            <a data-v-7122e1e2="" data-v-05346783="" href="/login" class="btn nuxt-link-active solid large" type="button"> 로그인 </a>
                        </div>
                    `);
                });
            });

            // 이메일 정규식
            function fn_validateEmail(value) {
                let emailReg = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                return emailReg.test(value);
            }
            
        </script>

    </head>
    <body>
    <%@include file="/WEB-INF/views/include/shopCate.jsp" %>
        <div id="__nuxt"><!---->
            <div id="__layout">
                <div id="wrap" tabindex="0" class="layout_base mo wrap win_os mo" data-v-480ae706="" data-v-4f6329ba=""><!---->
                    <div data-v-05346783="" data-v-4f6329ba="" class="container help layout__main--without-search">
                        <div data-v-05346783="" class="content mo">
                            <div data-v-05346783="" class="help_area">
                                <div data-v-05346783="">
                                    <h2 data-v-05346783="" id = "title" class="help_title">이메일 아이디 찾기</h2>
                                    <div data-v-05346783="" class="help_notice">
                                        <p data-v-05346783="" class="notice_txt"> 가입시 등록한 이메일을 입력하면<br data-v-05346783="">
                                            이메일 주소의 일부를 알려드립니다. </p>
                                    </div>
                                    <div data-v-5f866f8a="" data-v-05346783="" id ="input_email" class="input_box">
                                        <h3 data-v-05346783="" data-v-5f866f8a="" class="input_title">가입한 이메일</h3>
                                        <div data-v-5f866f8a="" class="input_item">
                                            <input data-v-5f866f8a="" type="email" id="userEmail" placeholder="Run@RunFluence.com" autocomplete="off" class="input_txt text_fill"><!---->
                                        </div>
                                    </div>
                                    <div data-v-05346783="" class="help_btn_box">
                                        <a id="findEmailBtn" data-v-7122e1e2="" data-v-05346783="" disabled="disabled" href="#" class="btn full solid disabled"> 이메일 아이디 찾기 </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/WEB-INF/views/include/shopFooter.jsp" %>
    </body>
</html>