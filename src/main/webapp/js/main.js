const signUp = document.querySelector("#js-signUp");
const popSignUp = document.querySelector(".pop_sign-up");
const overlay = document.querySelector(".overlay");
const body = document.querySelector("body");

function showSignUp() {
    popSignUp.style.display = "flex";
    overlay.style.display = "block";
};

function closePopUp(event) {
    let target = event.target;
    if (target.className == "overlay") {
        popSignUp.style.display = "none";
        overlay.style.display = "none";
    }
}



signUp.addEventListener("click", showSignUp);
body.addEventListener("click", closePopUp);


       //영화차트 이미지 슬라이드
       var mySwiper = new Swiper('.swiper-container2', {
        slidesPerView: 8,
        spaceBetween: 10,
//            mousewheel: {
//                invert: true,
//            },
        keyboard: {
            enabled: true,
            onlyInViewport: false,
        },
        autoplay: {
            delay: 6000,
        },
        breakpoints: {
            600: {
            slidesPerView: 3,
            spaceBetween: 10,
            },
            768: {
               slidesPerView: 4,
               spaceBetween: 10,
            },
            960: {
               slidesPerView: 5,
               spaceBetween: 10,
            },
        }
    });
    



    var swiperStep = new Swiper(".mySwiper", {
        // slidesPer
        slidesPerView: 2.2,
        spaceBetween: 0,
        freeMode: true,
        pagination: {
        el: ".swiper-pagination",
        type: "fraction",
        clickable: true,
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
    });

    
    var swiperStep2 = new Swiper(".mySwiper2", {
        // slidesPer
        slidesPerView: 2.5,
        spaceBetween: 10,
        freeMode: true,
        pagination: {
        el: ".swiper-pagination",
        type: "fraction",
        clickable: true,
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
    });
    
     var swiperStep = new Swiper(".mySwiper3", {
        // slidesPer
        slidesPerView: 2.8,
        spaceBetween: 15,
        freeMode: true,
        pagination: {
        el: ".swiper-pagination",
        type: "fraction",
        clickable: true,
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
    });
    
         var swiperStep = new Swiper(".mySwiper4", {
        // slidesPer
        slidesPerView: 2.6,
        spaceBetween: 15,
        freeMode: true,
        pagination: {
        el: ".swiper-pagination",
        type: "fraction",
        clickable: true,
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
    });
    
    
   