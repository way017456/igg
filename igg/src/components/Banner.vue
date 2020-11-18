<template>
    <div>
        <div class="index-banner">
            <!-- Swiper -->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <!-- <div class="swiper-slide" v-for="(elem,i) of arrbanner" :key='i'>
                        <router-link to="">
                            <img :src="elem.path" alt="">
                        </router-link>
                    </div> -->
                    <div class="swiper-slide">
                        <router-link to="">
                            <img src="../../../igg_server/images/rotation/banner1.jpg" alt="">
                        </router-link>
                    </div>
                    <div class="swiper-slide">
                        <router-link to="">
                            <img src="../../../igg_server/images/rotation/banner2.jpg" alt="">
                        </router-link>
                    </div>
                    <div class="swiper-slide">
                        <router-link to="">
                            <img src="../../../igg_server/images/rotation/banner3.jpg" alt="">
                        </router-link>
                    </div>
                    <div class="swiper-slide">
                        <router-link to="">
                            <img src="../../../igg_server/images/rotation/banner4.jpg" alt="">
                        </router-link>
                    </div>
                    <div class="swiper-slide">
                        <router-link to="">
                            <img src="../../../igg_server/images/rotation/banner5.jpg" alt="">
                        </router-link>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <!-- Add Navigation -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </div>
</template>
<script>
import '../../public/js/swiper.min.js'
export default {
    data(){
        return{
            arrbanner:[]
        }
    },
    mounted(){
        // this.axios.get('/banner').then(result=>{
        //     let data = result.data;
        //     data.forEach(item=>{
        //         // console.log(item);
        //         item.path = require('../../../igg_server/images/rotation/'+item.path);
        //         // console.log(item);
        //         this.arrbanner.push(item);
        //         console.log(this.arrbanner);
        //     });
        // });
        var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        loop:true,
        slidesPerView:'auto',
        loopedSlides:5,
        autoplay:5000,
        autoplayDisableOnIntercation:false,
        // Enable debugger
        debugger: true
    });
    }
}
</script>
<style>
@import '../../public/css/swiper.min.css';
    .index-banner .swiper-container {
        width: 100%;
    }
    .index-banner .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
    .index-banner .swiper-slide>a>img{
        width: 100%;
    }
    .index-banner .swiper-pagination-bullet{
        width: 10px;
        height: 10px;
    }
    .index-banner .swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{
        margin: 0 3px;
    }
    .index-banner .swiper-button-next, .swiper-button-prev{
        width: 60px;
        height: 80px;
    }
    .index-banner .swiper-button-prev, .swiper-container-rtl .swiper-button-next{
        background-image: url(../assets/images/header/sprite.png);
        background-position: -222px -1196px;
        background-size: auto;
    }
    .index-banner .swiper-button-next, .swiper-container-rtl .swiper-button-prev{
        background-image: url(../assets/images/header/sprite.png);
        background-position: -282px -1196px;
        background-size: auto;
    }
    .index-banner .swiper-button-prev{
        display: none;
    }
    .index-banner .swiper-container:hover .swiper-button-prev{
        display: block;
    }
    .index-banner .swiper-button-prev:hover{
        display: block;
    }
    .index-banner .swiper-button-prev:hover+.swiper-button-next{
        display: block;
    }
    .index-banner .swiper-wrapper:hover~.swiper-button-prev{
        display: block;
    }
    .index-banner .swiper-button-next{
        display: none;
    }
    .index-banner .swiper-wrapper:hover~.swiper-button-next{
        display: block;
    }
    .index-banner .swiper-button-next:hover{
        display: block;
    }
    .index-banner .swiper-pagination-bullet-active{
        background: white;
    }
</style>