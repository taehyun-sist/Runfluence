<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>    
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Runfluence</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
  <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
  <style>
    @font-face {
      font-family: 'JejuGothic';
      src: url('./JejuGothic.ttf') format('truetype');
    }

    body {
      font-family: 'JejuGothic', sans-serif;
      min-height: 100%;
      overflow: scroll;
      position: relative;
    }

    div {
      margin: 0;
      padding: 0;
    }

    p {
      margin-bottom: 0;
    }

    .header {
      background-color: #fff;
      /* position: fixed; */
      top: 0;
      left: 0;
      right: 0;
      z-index: 3;
    }

    .inner {
      height: 44px;
      padding: 0 50px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: relative;
    }

    .btn_cancel,
    .btn_close {
      height: 24px;
      position: absolute;
      top: 50%;
      left: 22px;
      transform: translateY(-50%);
      will-change: transform;
    }

    .title_txt {
      color: #000;
      font-size: 18px;
      font-weight: normal;
      letter-spacing: -0.015em;
      word-break: break-word;
      margin: 0;
    }

    .btn_standard {
      position: absolute;
      top: 50%;
      right: 22px;
      transform: translateY(-50%);
      will-change: transform;
    }

    /* Wrap content 시작 */
    .wrap-content {
      flex: 1;
      display: flex;
      flex-direction: column;
      background-color: #f4f4f4;
    }

    .container-lg.buy.step-2 {
      margin: 0 auto;
      padding: 20px 0;
    }

    .order-content {
      margin-left: auto;
      margin-right: auto;
      max-width: 700px;
    }

    .text-header-checkout {
      display: flex;
      align-items: center;
      gap: 8px;
      width: 100%;
    }

    .text-header-checkout .left {
      flex-grow: 1;
    }

    .title-item {
      display: flex;
      align-items: center;
      max-width: fit-content;
      gap: 2px;
    }

    .text-lookup.semibold {
      font-weight: 600;
      font-size: 16px;
      color: #222;
      text-overflow: ellipsis;
      white-space: nowrap;
    }

    .text-truncate {
      display: -webkit-box;
      text-overflow: ellipsis;
    }

    .text_table_left_align {
      display: flex;
      padding: 3px 0;
      width: -webkit-fill-available;
    }

    .text_table_left_align .title {
      align-items: flex-start;
      display: flex;
      flex: 0 0 auto;
      margin-right: 8px;
      width: 84px;
    }

    .text_table_left_align .labels-description {
      flex: 1 1 auto;
    }

    .text_table_labels {
      display: flex;
      flex-direction: column;
      gap: 2px;
    }

    .text_table_labels .labels {
      display: flex;
      justify-content: flex-start;
      text-align: left;
    }

    .text_body {
      align-items: center;
      display: flex;
    }

    .line_break_by_truncating_tail {
      -webkit-box-orient: vertical;
      display: -webkit-box;
      text-overflow: ellipsis;
    }

    .text-lookup {
      text-align: left;
      width: inherit;
      font-size: 14px;
    }

    .text-element {
      color: #909090;
    }

    .text-element.display_paragraph {
      color: #222222;
    }

    .control_data_box {
      cursor: pointer;
      min-height: 48px;
      padding: 14px;
      width: -webkit-fill-available;
      box-shadow: #ebebeb 0px 0px 0px 1px inset;
      margin: 8px 16px 20px;
    }

    .control_data_box__text__title {
      flex: 1 0 100px;
    }

    .divider_horizontal {
      width: -webkit-fill-available;
    }

    .product-list-info-default {
      width: -webkit-fill-available;
    }

    .content_image {
      display: inline-block;
    }

    .picture {
      border: none;
    }

    .product-list-info-default .content {
      display: flex;
      flex: 1;
      flex-direction: column;
      flex-wrap: wrap;
      margin-left: 16px;
      margin-top: 2px;
    }

    .product-list-info-default .bottom {
      align-items: flex-start;
      display: flex;
      gap: 4px;
      justify-content: space-between;
      margin-top: 8px;
    }

    .text-table-options--default {
      flex-wrap: wrap;
    }

    .text-table-options {
      align-items: center;
      display: flex;
      width: 100%;
    }

    .text-table-options--default .option1_item {
      flex: 0 1 auto;
    }

    .text-table-options--default .option-right-text {
      display: flex;
      flex: 0 1 auto;
    }

    .text-table-options--default .option-right-text .option2_item {
      margin: 0 3px;
    }

    .text-table-options--default .option-right-text .option3_item {
      gap: 3px;
    }

    .cursor-pointer {
      cursor: pointer;
    }

    .radio-element {
      margin-right: 8px;
    }

    .text_collapse {
      width: -webkit-fill-available;
    }

    .text_table_right_align .title-labels {
      display: flex;
      justify-content: space-between;
    }

    .text-lookup.has_action {
      cursor: pointer;
    }

    .text-lookup.underline {
      -webkit-text-decoration: underline;
      text-decoration: underline;
    }

    .text-header-checkout>.left,
    .text-header-checkout>.right {
      align-items: center;
      display: flex;
      gap: 4px;
    }

    .text-header-checkout>.left {
      flex-grow: 1;
    }

    .subtitle_item.tag_body {
      min-width: 20px;
    }

    .subtitle_item {
      flex: 0 1 auto;
      gap: 4px;
    }

    .tag_body {
      align-items: center;
      display: flex;
      height: 20px;
      justify-content: center;
      text-align: center;
    }

    .select_option_picker {
      min-width: auto;
    }

    .select_option_picker_justified {
      display: flex !important;
      flex-direction: column;
      justify-content: center;
      width: -webkit-fill-available;
    }

    .select_option_picker {
      background: #fff;
      border-radius: 10px;
      cursor: pointer;
      display: inline-flex;
    }

    .select_option_picker_justified .justified__text {
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 4px 0;
    }

    .cart-buy-footer[data-v-71f193e4] {
      background: #fff;
      bottom: 0;
      box-shadow: 0 -1px 1px 0 rgba(0, 0, 0, .06);
      left: 0;
      position: fixed;
      right: 0;
      width: 100%;
      z-index: 1;
    }

    .cart-buy-footer>.layout_list_horizontal_equal {
      margin: 0 auto !important;
      max-width: 700px;
    }

    .layout_list_horizontal_equal {
      display: flex;
      width: -webkit-fill-available;
    }

    .button_xlarge {
      min-height: 52px;
      min-width: 140px;
      padding: 10px 16px;
    }

    .button_large .button__text,
    .button_medium .button__text,
    .button_xlarge .button__text {
      align-items: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      min-height: 32px;
    }

    .button_xlarge .title_item {
      font-size: 16px;
    }

    .text-lookup.bold {
      font-weight: 700;
    }

    .select_option_picker_justified>.justified {
      display: flex;
      gap: 8px;
      justify-content: space-between;
    }

    .select_option_picker_justified .justified__action-image {
      margin-right: -8px;
      padding: 8px;
    }

    .select_option_picker_justified .justified__right,
    .select_option_picker_justified .title-item {
      flex: 0 0 auto;
    }

    .flex-align-center {
      align-items: center;
      display: flex;
    }

    .fixed-top {
      position: relative;
    }

    /* wrap content 종료 */
  </style>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function () {

      $("#toggle-icon").click(function () {
        if ($(".toggle-section").is(":visible")) {
          $(".toggle-section").slideUp();
          $("#arrow-down").show();
          $("#arrow-up").hide();

        } else {
          $(".toggle-section").slideDown();
          $("#arrow-down").hide();
          $("#arrow-up").show();
        }
      });

    });
  </script>
</head>

<body>
<%@include file="/WEB-INF/views/include/shopCate.jsp" %>
  <div class="header fixed-top">
    <!-- <div class="inner d-flex justify-content-between align-items-center">
      <a href="#" class="btn_cancel">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" width="22" height="22">
          <g clip-path="url(#clip0_278_7121)">
            <path fill="#fff" d="M0 0h24v24H0z"></path>
            <path d="M10.75 3.5l-8.485 8.485 8.485 8.486" stroke="#000" stroke-width="1.5"></path>
            <path d="M3 12h19" stroke="#000" stroke-width="1.5" stroke-linejoin="round"></path>
          </g>
        </svg>
      </a>
      <h2 class="title_txt mx-auto">배송/결제</h2>
      <button type="button" class="btn btn-outline-secondary btn-sm">검수기준</button>
    </div> -->
    <div class="wrap-content d-flex flex-column flex-grow-1 bg-light">
      <div class="container-lg buy step-2">
        <div class="content content-step-2">
          <div class="container content-step-2-cart-buy-immediate-container">
          <div class="order-content">
          	<div class="order-content-wrapper bg-white rounded p-3 shadow-sm">
          	<h2 class="title_txt mx-auto" style="text-align:center;">배송/결제</h2>
          	</div>
          </div>
          <div class="order-content">
              <div class="order-content-wrapper">
                <div class="divider_horizontal" style="height: 8px;">
                  <div class="divider" style="background-color: #f8f9fa; width: 100%; height: 8px;"></div>
                </div>
              </div>
            </div>
            <div class="order-content">
              <div class="order-content-wrapper bg-white rounded p-3 shadow-sm flex-column align-items-start d-flex"
                style="width: -webkit-fill-available;">
                <div class="text-header-checkout d-flex align-items-center mb-2" style="gap: 8px;">
                  <div class="flex-grow-1">
                    <div class="text-body title-item d-flex align-items-center" style="gap: 0px 2px;">
                      <p class="text-lookup semibold text-truncate m-0" style="color: #222; font-size: 16px;">배송 주소</p>
                    </div>
                  </div>
                  <div class="d-flex align-items-center gap-2">
                    <button class="btn btn-dark btn-sm rounded-pill"
                      style="padding: 2px 10px; min-height: 24px; min-width: 60px;">
                      <span class="text-white text-truncate" style="max-width: 100%; font-size: 12px;">새 주소 추가</span>
                    </button>

                    <!--
                    <button class="btn btn-outline-secondary btn-sm rounded-pill" style="padding: 2px 10px; min-height: 24px; min-width: 60px;">
                      <span class="text-black text-truncate" style="max-width: 100%; font-size: 12px;">주소 변경</span>
                    </button>
                    -->

                  </div>
                </div>

                <!--
                <div class="my-2"></div>
                <div class="text-body d-flex align-items-center gap-2 px-3">
                  <p class="text-lookup semibold text-danger m-0" style="font-size: 14px;">
                    등록된 기본 배송지가 없습니다.<br>
                    새 주소를 추가해주세요!
                  </p>
                </div>
                <div class="my-3"></div>
                -->
                <div style="height: 8px;"></div>
                <div class="text_table_left_align" style="padding: 3px 16px;">
                  <div>
                    <div class="text_body title">
                      <p class="text-lookup text-element line_break_by_truncating_tail">받는 분</p>
                    </div>
                  </div>
                  <div class="labels-description">
                    <div class="text_table_labels">
                      <div class="labels">
                        <div class="text-body labels__label1">
                          <p class="text-lookup display_paragraph">임윤한</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div style="height: 4px;"></div>
                <div class="text_table_left_align px-3">
                  <div>
                    <div class="text_body title">
                      <p class="text-lookup text-element line_break_by_truncating_tail">연락처</p>
                    </div>
                  </div>
                  <div class="labels-description">
                    <div class="text_table_labels labels">
                      <div class="labels">
                        <div class="text_body labels__label1">
                          <p class="text-lookup display_paragraph">010-2578-2658</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div style="height: 4px;"></div>
                <div class="text_table_left_align px-3">
                  <div>
                    <div class="text_body title">
                      <p class="text-lookup text-element line_break_by_truncating_tail">주소</p>
                    </div>
                  </div>
                  <div class="labels-description">
                    <div class="text_table_labels labels">
                      <div class="labels">
                        <div class="text_body labels__label1">
                          <p class="text-lookup display_paragraph">[03430] 서울 은평구 갈현로 89-3 (역촌동, 해들목휴먼빌) 나동 501호</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="control_data_box d-flex p-3 rounded-3 bg-white cursor-pointer">
                  <div class="control_data_box__text d-flex align-items-center flex-grow-1 gap-1">
                    <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-muted"
                      style="font-size: 14px;">
                      문 앞에 놓아주세요.
                    </p>
                  </div>
                  <div class="d-flex align-items-center">
                    <div class="control_data_box__action content_image" style="color: #6c6c6c;">
                      <i class="fa-solid fa-chevron-right"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="divider_horizontal" style="height: 8px;">
                  <div class="divider" style="background-color: #f8f9fa; width: 100%; height: 8px;"></div>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper bg-white rounded p-3 shadow-sm">
                <div class="text-header-checkout d-flex align-items-center mb-2" style="gap: 8px;">
                  <div class="flex-grow-1">
                    <div class="text-body title-item d-flex align-items-center" style="gap: 0px 2px;">
                      <p class="text-lookup text-element semibold display_paragraph">
                        주문 상품
                      </p>
                    </div>
                  </div>
                  <div class="d-flex align-items-center gap-1">
                    <div class="text_body description_item" style="gap: 4px;">
                      <p class="text-lookup semibold text-truncate m-0" style="color: #222; font-size: 16px;">
                        총 1건
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="divider_horizontal" style="height: 2px;">
                  <div class="divider" style="background-color: #f8f9fa; width: 100%; height: 2px;"></div>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper bg-white rounded shadow-sm flex-column align-items-start d-flex"
                style="border-radius: 0px 0px 10px 10px; width: -webkit-fill-available;">
                <div style="height: 20px;"></div>
                <div class="product-list-info-default d-flex" style="padding: 0px 16px;">
                  <div class="thumbnail d-inline-block position-relative"
                    style="border-radius: 10px; background-color: #f4f4f4; width: 80px; height: 80px;">
                    <div class="content_image" style="width: 80px; height: 80px;">
                      <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                        <source type="image/webp"
                          srcset="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg">
                        <source
                          srcset="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg">
                        <img
                          src="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg"
                          loading="lazy" width="80px" height="80px" class="image">
                      </picture>
                    </div>
                  </div>

                  <div class="content">
                    <div class="d-flex flex-column align-items-start" style="width: -webkit-fill-available;">
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                          style="color: #222;">
                          Adidas Originals Quilted Superstar Bomber Jacket Black - KR Sizing
                        </p>
                      </div>
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-start"
                          style="color: #a7a7a7; font-size: 13px;">
                          아디다스 오리지널스 퀼티드 슈퍼스타 봄버 자켓 블랙 - KR 사이즈
                        </p>
                      </div>
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-start"
                          style="color: #a7a7a7; font-size: 12px;">
                          HL9203
                        </p>
                      </div>
                    </div>
                    <div class="bottom">
                      <div class="text-table-options text-table-options--default" style="margin: 0px 0px 2px;">
                        <div class="text_body option option1_item" style="gap: 0px 3px;">
                          <p class="text-lookup text-element semibold display_paragraph line_break_by_truncating_tail"
                            style="color: #222; font-size: 14px">
                            S
                          </p>
                        </div>
                        <div class="option-right-text">
                          <div class="text_body option option2_item" style="gap: 0px 2px;">
                            <p class="text-lookup text-element semibold display_paragraph"
                              style="color: #222; font-size: 14px">
                              /
                            </p>
                          </div>
                          <div class="text_body option option3_item" style="gap: 0px 3px;">
                            <p class="text-lookup text-element semibold display_paragraph line_break_by_truncating_tail text-start"
                              style="color: #222; font-size: 14px">
                              일반 배송
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_labels label-item flex-shrink-0" style="margin: 0px 0px 2px;">
                        <div class="labels">
                          <div class="text_body labels__label1" style="gap: 0px 2px;">
                            <p class="text-lookup text-element semibold display_paragraph d-flex justify-content-end text-start"
                              style="color: #222; font-size: 16px; white-space: nowrap;">
                              180,000원
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div style="height: 20px;"></div>
                <div class="text-header-checkout" style="height: 20px; padding: 0px 16px;">
                  <div class="left">
                    <div class="text_body title_item" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph text-truncate"
                        style="color: #222; text-align: left;">
                        배송방법
                      </p>
                    </div>
                  </div>
                  <div class="right"></div>
                </div>

                <div style="height: 8px;"></div>
                <div class="d-flex flex-column align-items-start" style="gap: 6px 0px; padding: 0px 16px;">
                  <div class="d-flex">
                    <div class="radio-element cursor-pointer">
                      <svg viewBox="0 0 24 24" fill="#222222" xmlns="http://www.w3.org/2000/svg" width="24" height="24">
                        <path d="M17.753 12.003a5.75 5.75 0 11-11.5 0 5.75 5.75 0 0111.5 0z" fill="inheirt"></path>
                        <path fill-rule="evenodd" clip-rule="evenodd"
                          d="M12 20.5a8.5 8.5 0 100-17 8.5 8.5 0 000 17zm0 1.2c5.357 0 9.7-4.343 9.7-9.7 0-5.357-4.343-9.7-9.7-9.7-5.357 0-9.7 4.343-9.7 9.7 0 5.357 4.343 9.7 9.7 9.7z"
                          fill="inheirt"></path>
                      </svg>
                    </div>
                    <div class="text_body cursor-pointer title-item" for="normal"
                      style="gap: 0px 2px; margin-right: 8px;">
                      <p class="text-lookup text-element display_paragraph"
                        style="color: #222; text-align: left; width: inherit; font-size: 14px;">일반 배송</p>
                    </div>
                    <div class="text_body label-item" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                        style="color: #909090; text-align: left; width: inherit; font-size: 13px;">
                        검수 후 배송 · 5-7일 내 도착 예정</p>
                    </div>
                  </div>
                  <div class="d-flex">
                    <div class="cursor-pointer radio-element">
                      <svg viewBox="0 0 24 24" fill="#22222233" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24">
                        <path
                          d="M21.7 12c0 5.357-4.343 9.7-9.7 9.7-5.357 0-9.7-4.343-9.7-9.7 0-5.357 4.343-9.7 9.7-9.7 5.357 0 9.7 4.343 9.7 9.7z"
                          fill="inherit"></path>
                      </svg>
                    </div>
                    <div class="text_body cursor-pointer title-item" for="inventory_unavailable" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph"
                        style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                        창고보관 불가</p>
                    </div>
                  </div>
                </div>
                <div style="height: 20px;"></div>
                <div class="text_collapse" style="padding: 16px; background-color: #fafafa;">
                  <div class="d-flex justify-content-between position-relative">
                    <div class="text_body" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph"
                        style="color: #222; text-align: left; width: inherit; font-size: 14px;">
                        결제금액
                      </p>
                    </div>
                    <div id="toggle-icon" class="d-flex align-items-center cursor-pointer">
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element semibold display_paragraph"
                          style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                          303,000원
                        </p>
                      </div>
                      <svg id="arrow-down" style="margin-left: 4px;" viewBox="0 0 12 12" fill="none"
                        xmlns="http://www.w3.org/2000/svg" width="12" height="12">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                          d="M1.375 3.956l.53-.53L6 7.52l4.095-4.094.53.53L6 8.581 1.375 3.956z" fill="#4E4E4E"></path>
                      </svg>
                      <svg id="arrow-up" style="margin-left: 4px; display: none;" viewBox="0 0 12 12" fill="none"
                        xmlns="http://www.w3.org/2000/svg" width="12" height="12">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                          d="M6 4.48L1.906 8.574l-.53-.53L6 3.419l4.625 4.625-.53.53L6 4.48z" fill="#4E4E4E"></path>
                      </svg>
                    </div>
                  </div>
                  <!-- 접었다가 펼치는 부분 -->
                  <div class="toggle-section" style="display: none;">
                    <div class="content">
                      <div class="divider_horizontal" style="height: 2px; margin: 16px 0px 12px;">
                        <div class="divider" style="background-color: #f4f4f4; width: 100%; height: 2px;"></div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              상품금액
                            </p>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  180,000원
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              할인 금액
                            </p>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  무료
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              수수료
                            </p>
                            <div class="content_image"
                              style="border-radius: 50%; width: 16px; height: 16px; cursor: pointer;">
                              <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                                <source type="image/webp"
                                  srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
                                <source
                                  srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
                                <img
                                  src="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png"
                                  loading="lazy" width="16px" height="16px" class="image">
                              </picture>
                            </div>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  무료
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              배송비
                            </p>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  무료
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- 접었다가 펼치는 부분 종료 -->
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="divider_horizontal" style="height: 8px;">
                  <div class="divider" style="background-color: #f8f9fa; width: 100%; height: 8px;"></div>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="text_body"
                  style="border-radius: 10px; gap: 0px 2px; padding: 16px; background-color: #fff;">
                  <!---->
                  <p class="text-lookup text-element display_paragraph"
                    style="color: #909090; text-align: left; width: inherit; font-size: 13px; --5c758a7a: #909090; --01d25667: 13px; --fc3d6318: 13px;">
                    상품은 Runfluence 또는 제휴 업체가 판매하며 각 거래 조건 등은 <span class="text-lookup underline has_action">판매자
                      정보</span>
                    에서 확인해주시기 바랍니다.
                  </p>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="divider_horizontal" style="height: 8px;">
                  <div class="divider" style="background-color: #f8f9fa; width: 100%; height: 8px;"></div>
                </div>
              </div>
            </div>

            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="layout_list_vertical" style="border-radius: 10px; background-color: #fff">
                  <div style="height: 20px;"></div>
                  <div class="text-header-checkout" style="height: 24px; padding: 0px 16px;">
                    <div class="left">
                      <div class="text_body title_item" style="gap: 0px 2px;">
                        <p class="text-lookup text-element semibold display_paragraph text-truncate"
                          style="color: #222; text-align: left; width: inherit; font-size: 16px;">
                          결제 방법
                        </p>
                      </div>
                    </div>
                    <div class="right">

                    </div>
                  </div>
                  <div style="height: 20px;"></div>
                  <div class="text-header-checkout" style="height: 20px; margin: 0px 16px 10px;">
                    <div class="left">
                      <div class="text_body title_item" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph"
                          style="color: #222; text-align: left; width: inherit; font-size: 14px;">
                          계좌 간편결제
                        </p>
                      </div>
                      <div class="tag_body subtitle_item tag_body"
                        style="border-radius: 2px; height: 18px; padding: 0px 3px; background-color: #f1f0ff">
                        <div class="tag_element" style="font-size: 11px; color: #7c72ee">
                          <div class="text-lookup semibold" style="font-size: 11px">결제 시 포인트 적립</div>
                        </div>
                      </div>
                    </div>
                    <div class="right">
                    </div>
                  </div>
                  <div class="select_option_picker select_option_picker_justified"
                    style="border-radius: 10px; margin: 0px 16px; padding: 9px 16px; background-color: #fff; box-shadow: #ebebeb 0px 0px 0px 1px inset; cursor: pointer;">
                    <div class="justified">
                      <div class="justified__text">
                        <div>
                          <div class="flex-align-center">
                            <div class="text_body title-item" style="gap: 0px 4px;">
                              <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                                style="color: rgb(34, 34, 34); text-align: left; width: inherit;">
                                계좌를 등록하세요
                              </p>
                            </div>
                          </div>
                        </div>
                        <div>
                        </div>
                      </div>
                      <div class="flex-align-center justified__right">
                        <div class="justified__action-image">
                          <div class="content_image" element="[object Object]" element-style="[object Object]"
                            style="width: 7px; height: 14px; cursor: pointer;">
                            <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                              <source type="image/webp"
                                srcset="https://kream-phinf.pstatic.net/MjAyNDA3MDdfMjAz/MDAxNzIwMzM0MzQ3MDM5.aUfDcNRs-oDDIc3tzDYieivy9fqQlTM--OOVQMQzoKwg.OEBj0aTpWYNcp-csp10gWqCqqEzgG5BIznb08pV1-4Ig.PNG/a_1ccf86563fc34322b288774ee16d74c9.png">
                              <source
                                srcset="https://kream-phinf.pstatic.net/MjAyNDA3MDdfMjAz/MDAxNzIwMzM0MzQ3MDM5.aUfDcNRs-oDDIc3tzDYieivy9fqQlTM--OOVQMQzoKwg.OEBj0aTpWYNcp-csp10gWqCqqEzgG5BIznb08pV1-4Ig.PNG/a_1ccf86563fc34322b288774ee16d74c9.png">
                              <img
                                src="https://kream-phinf.pstatic.net/MjAyNDA3MDdfMjAz/MDAxNzIwMzM0MzQ3MDM5.aUfDcNRs-oDDIc3tzDYieivy9fqQlTM--OOVQMQzoKwg.OEBj0aTpWYNcp-csp10gWqCqqEzgG5BIznb08pV1-4Ig.PNG/a_1ccf86563fc34322b288774ee16d74c9.png"
                                loading="lazy" width="7px" height="14px" class="image">
                            </picture>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div style="height: 20px;"></div>
                  <div class="text-header-checkout" style="height: 20px; margin: 0px 16px 10px;">
                    <div class="left">
                      <div class="text_body title_item" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph text-truncate"
                          style="color: #222; text-align: left; width: inherit; font-size: 14px;">
                          카드 간편결제
                        </p>
                      </div>
                      <div class="text_body subtitle_item text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-truncate"
                          style="color: #909090; text-align: left; width: inherit; font-size: 12px;">
                          일시불
                        </p>
                      </div>
                      <!---->
                    </div>
                    <div class="right">
                      <!---->
                      <!---->
                      <!---->
                    </div>
                  </div>
                  <div class="cart-option-picker">
                    <div class="clickable-area"></div>
                    <div class="select_option_picker select_option_picker_justified"
                      style="border-radius: 10px; margin: 0px 16px; padding: 9px 16px; background-color: #fff; box-shadow: #ebebeb 0px 0px 0px 1px inset; cursor: pointer;">
                      <div class="justified">
                        <div class="justified__text">
                          <div>
                            <div class="flex-align-center">
                              <div class="text_body title-item" style="gap: 0px 4px;">
                                <!---->
                                <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                                  style="color: #222; text-align: left; width: inherit;  font-size: 14px;">
                                  카드를 등록하세요</p>
                                <!---->
                              </div>
                              <!---->
                            </div>
                          </div>
                          <div>
                            <!---->
                          </div>
                        </div>
                        <div class="flex-align-center justified__right">
                          <!---->
                          <div class="justified__action-image">
                            <div class="content_image" element="[object Object]" element-style="[object Object]"
                              style="width: 7px; height: 14px; cursor: pointer;">
                              <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                                <source type="image/webp"
                                  srcset="https://kream-phinf.pstatic.net/MjAyNDA3MDdfMjAz/MDAxNzIwMzM0MzQ3MDM5.aUfDcNRs-oDDIc3tzDYieivy9fqQlTM--OOVQMQzoKwg.OEBj0aTpWYNcp-csp10gWqCqqEzgG5BIznb08pV1-4Ig.PNG/a_1ccf86563fc34322b288774ee16d74c9.png">
                                <source
                                  srcset="https://kream-phinf.pstatic.net/MjAyNDA3MDdfMjAz/MDAxNzIwMzM0MzQ3MDM5.aUfDcNRs-oDDIc3tzDYieivy9fqQlTM--OOVQMQzoKwg.OEBj0aTpWYNcp-csp10gWqCqqEzgG5BIznb08pV1-4Ig.PNG/a_1ccf86563fc34322b288774ee16d74c9.png">
                                <img
                                  src="https://kream-phinf.pstatic.net/MjAyNDA3MDdfMjAz/MDAxNzIwMzM0MzQ3MDM5.aUfDcNRs-oDDIc3tzDYieivy9fqQlTM--OOVQMQzoKwg.OEBj0aTpWYNcp-csp10gWqCqqEzgG5BIznb08pV1-4Ig.PNG/a_1ccf86563fc34322b288774ee16d74c9.png"
                                  loading="lazy" width="7px" height="14px" class="image"></picture>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div style="height: 24px;"></div>
                  <div class="text-header-checkout" style="height: 20px; padding: 0px 16px;">
                    <div class="left">
                      <div class="text_body title_item" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph text-truncate"
                          style="color: #222; text-align: left; width: inherit; font-size: 14px;">
                          일반 결제
                        </p>
                      </div>
                      <div class="text_body subtitle_item text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-truncate"
                          style="color: #909090; text-align: left; width: inherit;  font-size: 12px;">
                          일시불 · 할부
                        </p>
                      </div>

                    </div>
                    <div class="right">
                    </div>
                  </div>
                  <div style="height: 8px;"></div>
                  <div class="layout-grid-horizontal-equal"
                    style="gap: 8px; padding: 0px 16px; --cbd6b75a: 8px; --cca6ba6e: 8px; --33f92be9: 3; --5a696227: [object Object];">
                    <div class="select_option_picker select_option_picker_text"
                      style="border-radius: 10px; padding: 9px 10px; background-color: #fff; box-shadow: #ebebeb 0px 0px 0px 1px inset; cursor: pointer;">
                      <div>
                        <div class="text_body option1" style="gap: 0px 4px;">
                          <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-truncate"
                            style="color: #222; text-align: left; width: inherit;  font-size: 15px;">
                            신용카드
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="select_option_picker select_option_picker_image selected"
                      style="border-radius: 10px; padding: 2px 10px; box-shadow: #222 0px 0px 0px 1px inset; cursor: pointer;">
                      <div>
                        <div class="content_image" element="[object Object]" element-style="[object Object]"
                          style="width: 48px; height: 48px;">
                          <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                            <source type="image/webp"
                              srcset="https://kream-phinf.pstatic.net/MjAyMzA5MTJfNTMg/MDAxNjk0NTE4NTcxMjE3.lQqC7F7z2PRySFm_GnhPVOsLc3rm5KBex7TWsq_oM_Mg.uNaJqu28UNrNaAEEC9twGrVSsv1fSObnUa1LXFd2WREg.PNG/a_4809ffde4da94687a06c77ce3936c0aa.png">
                            <source
                              srcset="https://kream-phinf.pstatic.net/MjAyMzA5MTJfNTMg/MDAxNjk0NTE4NTcxMjE3.lQqC7F7z2PRySFm_GnhPVOsLc3rm5KBex7TWsq_oM_Mg.uNaJqu28UNrNaAEEC9twGrVSsv1fSObnUa1LXFd2WREg.PNG/a_4809ffde4da94687a06c77ce3936c0aa.png">
                            <img
                              src="https://kream-phinf.pstatic.net/MjAyMzA5MTJfNTMg/MDAxNjk0NTE4NTcxMjE3.lQqC7F7z2PRySFm_GnhPVOsLc3rm5KBex7TWsq_oM_Mg.uNaJqu28UNrNaAEEC9twGrVSsv1fSObnUa1LXFd2WREg.PNG/a_4809ffde4da94687a06c77ce3936c0aa.png"
                              loading="lazy" width="48px" height="48px" class="image"></picture>
                        </div>
                      </div>
                    </div>
                    <div class="select_option_picker select_option_picker_image"
                      style="border-radius: 10px; padding: 2px 10px; box-shadow: #ebebeb 0px 0px 0px 1px inset; cursor: pointer;">
                      <div>
                        <div class="content_image" element="[object Object]" element-style="[object Object]"
                          style="width: 48px; height: 48px;">
                          <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                            <source type="image/webp"
                              srcset="https://kream-phinf.pstatic.net/MjAyMzA1MTVfMjIy/MDAxNjg0MTMzODQxNDk1.M3hfCzQ3-eBXQtx9Yri--avPSevoA50OQZrCcKncgM0g.2H9E7-Xk9S19v0746DgMb10YG85m2JnsjrYKVS1gKd4g.PNG/a_aea6be1abdd846d789cd353b7217be1c.png">
                            <source
                              srcset="https://kream-phinf.pstatic.net/MjAyMzA1MTVfMjIy/MDAxNjg0MTMzODQxNDk1.M3hfCzQ3-eBXQtx9Yri--avPSevoA50OQZrCcKncgM0g.2H9E7-Xk9S19v0746DgMb10YG85m2JnsjrYKVS1gKd4g.PNG/a_aea6be1abdd846d789cd353b7217be1c.png">
                            <img
                              src="https://kream-phinf.pstatic.net/MjAyMzA1MTVfMjIy/MDAxNjg0MTMzODQxNDk1.M3hfCzQ3-eBXQtx9Yri--avPSevoA50OQZrCcKncgM0g.2H9E7-Xk9S19v0746DgMb10YG85m2JnsjrYKVS1gKd4g.PNG/a_aea6be1abdd846d789cd353b7217be1c.png"
                              loading="lazy" width="48px" height="48px" class="image"></picture>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div style="height: 20px;"></div>
                  <div class="text_body" style="gap: 0px 2px; padding: 0px 16px;">
                    <p class="text-lookup text-element display_paragraph"
                      style="color: #909090; text-align: left; width: inherit; font-size: 13px;">
                      체결 후 결제 정보 변경은 불가하며 분할 납부 변경은 카드사 문의 바랍니다. 단, 카드사별 정책에 따라 분할 납부 변경 시 수수료가 발생할 수 있습니다.</p>
                  </div>
                  <div style="height: 20px;"></div>
                </div>
              </div>
            </div>
            <div class="cart-buy-footer">
              <div class="layout_list_horizontal_equal" style="margin: 8px; gap: 16px; padding-top: 8px;">
                <button class="button button_xlarge"
                  style="border-radius: 10px; padding: 10px 16px; background-color: #ef6253; cursor: pointer; flex-grow:1;">
                  <div class="button__text">
                    <div class="text_body title_item" style="gap: 0px 4px;">
                      <p class="text-lookup text-element bold display_paragraph line_break_by_truncating_tail white-space-nowrap text-truncate"
                        style="color: #ffffff; text-align: left; width: inherit; font-size: 16px;">
                        317,900원
                        <em class="text-lookup bold" style="color: rgba(255, 255, 255, 0.65);">·</em> 결제하기
                      </p>
                    </div>
                  </div>
                </button>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    <%@include file="/WEB-INF/views/include/shopFooter.jsp" %>
</body>

</html>

<!-- 카드 추가 모달
<div class="vue-portal-target">
  <div class="layer-cart-card-list layer md full">
    <div class="layer-background"></div>
    <div class="layer_container">
      <a href="#" class="btn_layer_close">
        <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
          <use href="/_nuxt/f9460320f4cf99db6c0f74164f350b2e.svg#i-ico-close" xlink:href="/_nuxt/f9460320f4cf99db6c0f74164f350b2e.svg#i-ico-close"></use>
        </svg>
      </a>
      <div class="layer_header">
        <h2 class="title">결제 정보</h2>
      </div>
      <div class="layer_content">
        <div class="mo layer-cart-card-list-container">
          <div class="my_payment">
            <div class="content_title border has_sub">
              <div class="title">
                <h3>결제 정보</h3>
                <p class="sub_title">수수료(페널티, 착불배송비 등)가 정산되지 않을 경우, 별도 고지 없이 해당 금액을 결제 시도할 수 있습니다.</p>
              </div>
              <div class="btn_box">
                <a href="#" class="btn btn_add">
                  <span class="btn_txt">+ 새 카드 추가하기</span>
                </a>
              </div>
            </div>
            <div class="my_list card-list-container">
              <div class="basic"></div>
              <div class="other"></div>
              <p class="notice">수수료(페널티, 착불배송비 등)가 정산되지 않을 경우, 별도 고지 없이 해당 금액을 결제 시도할 수 있습니다.</p>
            </div>
            <div>
              <div class="empty_area" style="background-color: #f5f5f5;">
                <p class="desc">추가하신 결제 정보가 없습니다.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
-->

<!-- 모달 레이어
<div id="modal-layer">
  <div class="layer_notifications layer md layer_float_right scrollable_outer container_shadow">
    <div class="layer-background"></div>
    <div class="layer_container_shadow"></div>
    <div class="layer_container">
      <a class="btn_layer_close">
        <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
          <use href="/_nuxt/f9460320f4cf99db6c0f74164f350b2e.svg#i-ico-close" xlink:href="/_nuxt/f9460320f4cf99db6c0f74164f350b2e.svg#i-ico-close"></use>
        </svg>
      </a>
      <div class="layer_header">
        <h2 class="title">알림</h2>
        <a href="/" class="header-btn btn_home header-home-button nuxt-link-active is-float">
          <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" width="24" height="24">
            <path d="M8.9 18.047h6.2v-1.5H8.9v1.5z" fill="#222"></path>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M21.4 8.442L12 2.022l-9.4 6.42V21.4h18.8V8.442zM12 3.838l7.9 5.396V19.9H4.1V9.234L12 3.838z" fill="#222"></path>
          </svg>
        </a>
      </div>
      <div class="layer_content">
         새롭게 추가되는 내용 시작 
        <nav class="tabs">
          <ul class="ul_tab notification_tabs inline">
            <li class="li_tab"><a class="tab active"><span class="tab_name">쇼핑</span></a></li>
            <li class="li_tab"><a class="tab"><span class="tab_name">스타일</span></a></li>
          </ul>
        </nav>
        <div class="category_chips">
          <div class="filter_chip_group chip_group bubble">
            <label class="bubble">
              <input type="radio" class="input blind" value="all">
              <div><button class="filter_button line active"><p class="text-group"><span class="title">전체</span><span class="num"></span></p></button></div>
            </label>
            <label class="bubble">
              <input type="radio" class="input blind" value="order">
              <div><button class="filter_button line"><p class="text-group"><span class="title">거래</span><span class="num"></span></p></button></div>
            </label>
            <label class="bubble">
              <input type="radio" class="input blind" value="bidding">
              <div><button class="filter_button line"><p class="text-group"><span class="title">입찰</span><span class="num"></span></p></button></div>
            </label>
             더 추가 가능한 필터 
          </div>
        </div>
         새롭게 추가되는 내용 종료 
        <article class="notification_list">
          <p class="help_text">알림 설정 및 삭제는 앱에서 가능합니다.</p>
          <h3 class="notification_group_title">지난 알림</h3>
          <ul class="notification_list_ul">
            <li>
              <a href="/" class="notification_item notification_list_item nuxt-link-active">
                <div class="icon">
                  <svg width="46" height="46" xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons etc">
                    <use href="/_nuxt/f9460320f4cf99db6c0f74164f350b2e.svg#i-ico-noti-etc"></use>
                  </svg>
                </div>
                <div class="body">
                  <h4 class="title">로그인 보안 알림</h4>
                  <p class="description">새로운 환경에서 로그인되었습니다. 회원님이 로그인 하지 않았다면 즉시 로그인 정보를 변경해주세요.</p>
                  <time class="date_created">2시간 전</time>
                </div>
              </a>
            </li>
          </ul>
        </article>
      </div>
    </div>
  </div>
  <div class="vue-portal-target"></div>
  <div class="vue-portal-target"></div>
</div>
-->