(function ($) {
    "use strict";
    
    // Dropdown on mouse hover
    $(document).ready(function () {
        function toggleNavbarMethod() {
            if ($(window).width() > 992) {
                $('.navbar .dropdown').on('mouseover', function () {
                    $('.dropdown-toggle', this).trigger('click');
                }).on('mouseout', function () {
                    $('.dropdown-toggle', this).trigger('click').blur();
                });
            } else {
                $('.navbar .dropdown').off('mouseover').off('mouseout');
            }
        }
        toggleNavbarMethod();
        $(window).resize(toggleNavbarMethod);
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Vendor carousel
    $('.vendor-carousel').owlCarousel({
        loop: true,
        margin: 29,
        nav: false,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:2
            },
            576:{
                items:3
            },
            768:{
                items:4
            },
            992:{
                items:5
            },
            1200:{
                items:6
            }
        }
    });


    // Related carousel
    $('.related-carousel').owlCarousel({
        loop: true,
        margin: 29,
        nav: false,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:2
            },
            768:{
                items:3
            },
            992:{
                items:4
            }
        }
    });


    // Product Quantity
    $('.quantity button').on('click', function () {
        var button = $(this);
        var oldValue = button.parent().parent().find('input').val();
        if (button.hasClass('btn-plus')) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        button.parent().parent().find('input').val(newVal);
    });

    // var i = 0;
    // $('.heart-wish').on('click', function () {
    //     if (i == 0) {
    //         $('.heart').removeClass('bi-heart').addClass('bi-heart-fill');
    //         i++;
    //     } else {
    //         $('.heart').removeClass('bi-heart-fill').addClass('bi-heart');
    //         i--;
    //     }
    // });

    // var i = 0;
    // $('.heart').on('click', function () {
    //     if (i == 0) {
    //         $('.heart').removeClass('bi-heart').addClass('bi-heart-fill');
    //         i++;
    //     } else {
    //         $('.heart').removeClass('bi-heart-fill').addClass('bi-heart');
    //         i--;
    //     }
    // });

    $('.heart-wish').on('click', function () {
        toggleAllHearts(); // 모든 하트 상태 변경
      });

      // 버튼 내부 아이콘의 클릭 이벤트도 버튼 클릭으로 처리
      $('.heart-wish .detail-heart').on('click', function (e) {
        e.stopPropagation(); // 이벤트 버블링 방지
        $(this).closest('.heart-wish').trigger('click'); // 부모 버튼의 클릭 이벤트 호출
      });

      // 개별 하트 클릭 이벤트 처리
      $('.detail-heart').not('.heart-wish .detail-heart').on('click', function () {
        toggleAllHearts(); // 모든 하트 상태 변경
      });

    $('.wish').on('click', function () {
        const heartIcon = $(this).find('.heart'); // 클릭된 .wish 내부의 .heart만 선택
  
        // 아이콘 클래스를 토글 (bi-heart <-> bi-heart-fill)
        if (heartIcon.hasClass('bi-heart')) {
          heartIcon.removeClass('bi-heart').addClass('bi-heart-fill');
        } else {
          heartIcon.removeClass('bi-heart-fill').addClass('bi-heart');
        }
      });

    $(".reviewStar").on("click", function () {
        var index = $(this).data("index"); // 클릭된 별의 index 가져오기

        // 모든 별 초기화
        $(".reviewStar").removeClass("fas fa-star").addClass("far fa-star");

        // 클릭된 별과 이전 별들 변경
        $(".reviewStar").each(function () {
            if ($(this).data("index") <= index) {
                $(this).removeClass("far fa-star").addClass("fas fa-star");
            }
        });
    });

    $('#product-all').on('change', function() {
        const isChecked = $(this).prop('checked');
        
        // Check or uncheck all checkboxes except for the "product-all" checkbox
        $('input[type="checkbox"]').each(function() {
            if ($(this).attr('id') !== 'product-all') {
                $(this).prop('checked', isChecked);
            }
        });
    });
    
    $('.action-btn').on('click', function() {
        // Select all checked checkboxes except the "product-all" checkbox
        $('input[type="checkbox"]:checked').each(function() {
            // Exclude the checkbox with id "product-all"
            if ($(this).attr('id') !== 'product-all') {
                $(this).closest('tr').remove();
            }
        });
    });
    

})(jQuery);

function toggleAllHearts() {
    $('.detail-heart').each(function () {
      const heartIcon = $(this);
      if (heartIcon.hasClass('bi-heart')) {
        heartIcon.removeClass('bi-heart').addClass('bi-heart-fill');
      } else {
        heartIcon.removeClass('bi-heart-fill').addClass('bi-heart');
      }
    });
}

function fn_modal() {
    const menuButton = document.getElementById("shop-menuButton");
    const menuModal = document.getElementById("shop-menuModal");
    const closeButton = document.querySelector(".close-btn");
  
    // 모달 표시
    menuModal.style.display = "block";
  
    // 닫기 버튼 클릭 시 모달 숨김
    closeButton.addEventListener("click", () => {
      menuModal.style.display = "none";
    });
  
    // 모달 외부 클릭 시 모달 숨김
    window.addEventListener("click", (event) => {
      if (event.target === menuModal) {
        menuModal.style.display = "none";
      }
    });
  }
  
  // 버튼 클릭 시 fn_test 실행
  document.getElementById("shop-menuButton").addEventListener("click", fn_modal);