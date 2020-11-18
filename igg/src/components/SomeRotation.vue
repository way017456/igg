<template>
    <div>
        <div class="some-rotation">
            <!-- Swiper -->
            <div class="swiper-container swiper2">
                <div class="swiper-wrapper">
                    <!-- <div class="swiper-slide" style="background-image:url(../../../igg_server/images/list/pad.jpg)"></div>
                    <div class="swiper-slide" style="background-image:url(../../../igg_server/images/list/cup.jpg)"></div>
                    <div class="swiper-slide" style="background-image:url(../../../igg_server/images/list/model.jpg)"></div>
                    <div class="swiper-slide" style="background-image:url(../../../igg_server/images/list/umbrella.jpg)"></div>
                    <div class="swiper-slide" style="background-image:url(../../../igg_server/images/list/pillow.jpg)"></div> -->

                    <div class="swiper-slide">
                        <img src="../../../igg_server/images/list/pad.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="../../../igg_server/images/list/cup.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="../../../igg_server/images/list/model.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="../../../igg_server/images/list/umbrella.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="../../../igg_server/images/list/pillow.jpg" alt="">
                    </div>

                    <!-- <div class="swiper-slide" style="background-image:url(../assets/images/footer/qr.png)"></div>
                    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/2)"></div>
                    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/3)"></div>
                    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/4)"></div>
                    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/5)"></div> -->
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    mounted(){
        var mySwiper = new Swiper('.swiper2', {
        pagination: {el:'.swiper-pagination.swiper2'},
        effect: 'cube',
        grabCursor: true,
        loop:true,
        cube: {
            shadow: true,
            slideShadows: true,
            shadowOffset: 20,
            shadowScale: 0.94
        }
    });
    }
}
</script>
<style>
    .some-rotation .swiper-container {
        width: 300px;
        height: 300px;
        position: absolute;
        left: 50%;
        top: 50%;
        margin-left: -150px;
        margin-top: -150px;
    }
    .some-rotation .swiper-slide {
        background-position: center;
        background-size: cover;
    }
    .some-rotation .swiper-slide>img{
        width: 300px;
    }
</style>