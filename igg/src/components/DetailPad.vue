<template>
  <div>
    <!-- 面包屑导航 -->
    <div class="vice-nav">
      <router-link to="/">首页</router-link>>
      <router-link to>鼠标垫</router-link>>
      <router-link to>英雄集结鼠标垫</router-link>
    </div>
    <!-- 轮播+介绍 -->
    <div class="rotation-detailpad">
      <div class="pad-top-rotation">
        <!-- Swiper -->
        <div class="swiper-container swiper1">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="../../../igg_server/images/details/pad/one.jpg" alt />
            </div>
            <div class="swiper-slide">
              <img src="../../../igg_server/images/details/pad/two.jpg" alt />
            </div>
            <div class="swiper-slide">
              <img src="../../../igg_server/images/details/pad/three.jpg" alt />
            </div>
            <div class="swiper-slide">
              <img src="../../../igg_server/images/details/pad/four.jpg" alt />
            </div>
            <div class="swiper-slide">
              <img src="../../../igg_server/images/details/pad/five.jpg" alt />
            </div>
          </div>
          <!-- Add Pagination -->
          <div class="swiper-pagination"></div>
          <!-- Add Navigation -->
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
        </div>
      </div>
      <div class="detail-pad">
        <h1>英雄集结鼠标垫</h1>
        <h5>
          <div>78.00元</div>
        </h5>
        <div class="detail-pad-content">
          <p>王国纪元，众英雄集结，新款鼠标垫上架！</p>
          <p>所属游戏: 王国纪元</p>
          <p>主要材质: 佳绩布面料、天然橡胶泡发底面</p>
          <p>产品重量: 0.446KG</p>
          <p>产品尺寸: 800(L) x 300(W) x 3(D) MM</p>
          <p>产品尺寸: 800(L) x 300(W) x 3(D) MM</p>
        </div>
        <div class="detail-pad-count">
          <div>数量</div>
          <div>
            <my-addsub></my-addsub>
          </div>
        </div>
        <div class="detail-pad-add-to-cart">
          <router-link to>加入购物车</router-link>
        </div>
        <div class="detail-pad-after">
          <div>
            <div>加入收藏</div>
            <div></div>
          </div>
          <div>分享</div>
          <div>
            <ul>
              <li>
                <router-link to></router-link>
                <router-link to></router-link>
                <router-link to>
                  <img src="../../../igg_server/images/details/wechat.png" alt />
                </router-link>
                <router-link to></router-link>
              </li>
            </ul>
          </div>
          <div>
            <router-link to>需要帮助？</router-link>
          </div>
        </div>
      </div>
    </div>
    <!-- 底部轮播 -->
    <div class="detail-pad-alsolike">
      <div>您可能感兴趣的</div>
      <div class="detail-pad-bottom-rotation">
        <my-rotation></my-rotation>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  mounted() {
    var mySwiper = new Swiper(".swiper1", {
      pagination: { el: ".swiper-pagination.swiper1" },
      paginationClickable: true,
      nextButton: ".swiper-button-next",
      prevButton: ".swiper-button-prev",
      // loop:true,
      // Enable debugger
      debugger: true
    });
  }

  // mounted(){
  //     var swiper = new Swiper('.swiper-container', {
  //     pagination: '.swiper-pagination',
  //     paginationClickable: true,
  //     nextButton: '.swiper-button-next',
  //     prevButton: '.swiper-button-prev',
  //     // Enable debugger
  //     debugger: true
  //     });
  // }
};
</script>
<style>
.vice-nav {
  width: 89%;
  height: 50px;
  background-color: #f8f8f8;
  font-size: 14px;
  padding: 0 100px;
}
.vice-nav a {
  color: #444;
  transition: all 0.125s ease;
  padding: 0 4px;
  text-decoration: none;
  line-height: 50px;
}
.vice-nav a:hover {
  color: #a6cc63;
}
.rotation-detailpad {
  width: 100%;
  display: flex;
  margin-bottom: 50px;
}
.pad-top-rotation {
  width: 60%;
}
.pad-top-rotation .swiper-container {
  width: 100%;
}
.pad-top-rotation .swiper-slide {
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
.pad-top-rotation .swiper-slide > img {
  width: 67%;
}
.pad-top-rotation .swiper-button-next {
  display: block;
  background-position: -589px -132px;
  width: 16px;
  height: 26px;
  margin-top: -13px;
  transition: all 0.125s ease;
  opacity: 0.8;
  right: 6%;
  background-size: auto;
}
.pad-top-rotation .swiper-button-prev {
  display: block;
  background-position: -568px -132px;
  width: 16px;
  height: 26px;
  margin-top: -13px;
  transition: all 0.125s ease;
  opacity: 0.8;
  left: 6%;
  background-size: auto;
}
.pad-top-rotation .swiper-pagination-bullet {
  width: 14px;
  height: 14px;
}
.pad-top-rotation .swiper-pagination-bullet-active {
  background-color: white;
}
.pad-top-rotation .swiper-button-prev,
.swiper-container-rtl .swiper-button-next {
  background-image: url(../assets/images/header/sprite.png);
}
.pad-top-rotation .swiper-button-next,
.swiper-container-rtl .swiper-button-prev {
  background-image: url(../assets/images/header/sprite.png);
}
.detail-pad {
  width: 40%;
  background-color: #f8f8f8;
  height: 607px;
  padding: 75px 40px 50px 40px;
}
.detail-pad > h1 {
  font-size: 34px;
  line-height: 35px;
  color: #444;
}
.detail-pad > h5 {
  margin: 15px 0;
  font-weight: lighter;
}
.detail-pad > h5 > div {
  font-size: 24px;
  line-height: 24px;
  font-weight: bold;
  color: #a6cc63;
}
.detail-pad-content {
  margin-bottom: 10px;
  color: #444;
}
.detail-pad-content > p {
  line-height: 30px;
  font-size: 16px;
}
.detail-pad-count {
  margin-bottom: 50px;
  color: #444;
}
.detail-pad-count > :first-child {
  font-size: 16px;
}
.detail-pad-count > :nth-child(2) {
  margin-top: 10px;
}
.detail-pad-add-to-cart {
  margin-bottom: 40px;
}
.detail-pad-add-to-cart > a {
  display: block;
  width: 100%;
  background-color: #a6cc63;
  font-size: 16px;
  color: white;
  height: 50px;
  line-height: 50px;
  transition: all 0.125s ease;
  text-align: center;
  text-decoration: none;
}
.detail-pad-add-to-cart > a:hover {
  background-color: #444;
}
.detail-pad-after {
  width: 100%;
  display: flex;
  font-size: 14px;
  color: #444;
}
.detail-pad-after > :first-child {
  height: 40px;
  line-height: 40px;
  margin-right: 20px;
  padding-right: 20px;
  border-right: 2px solid #7d7d7d;
}
.detail-pad-after > :first-child > :first-child {
  padding-right: 10px;
  float: left;
}
.detail-pad-after > :first-child > :nth-child(2) {
  width: 40px;
  height: 40px;
  background: url(../../../igg_server/images/details/collection_s_icon.png)
    no-repeat center center;
  float: left;
}
.detail-pad-after > :nth-child(2) {
  font-size: 20px;
  line-height: 40px;
  float: left;
  margin-right: 28px;
}
.detail-pad-after > :nth-child(3) {
  float: left;
}
.detail-pad-after > :nth-child(3) > ul {
  list-style: none;
}
.detail-pad-after > :nth-child(3) > ul > li > a {
  width: 40px;
  height: 40px;
  float: left;
  background-image: url(../assets/images/header/sprite.png);
  background-repeat: no-repeat;
  margin-right: 9px;
  cursor: pointer;
}
.detail-pad-after > :nth-child(3) > ul > li > :first-child {
  background-position: -341px -117px;
}
.detail-pad-after > :nth-child(3) > ul > li > :first-child:hover {
  background-position: -341px -76px;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(2) {
  background-position: -381px -117px;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(2):hover {
  background-position: -381px -76px;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(3) {
  background-position: -421px -117px;
  position: relative;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(3):hover {
  background-position: -421px -76px;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(3) > img {
  display: none;
  position: absolute;
  left: 50%;
  bottom: 55px;
  margin-left: -50px;
  width: 100px;
  height: 100px;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(3):hover > img {
  display: block;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(4) {
  background-position: -461px -117px;
}
.detail-pad-after > :nth-child(3) > ul > li > :nth-child(4):hover {
  background-position: -461px -76px;
}
.detail-pad-after > :nth-child(4) {
  float: left;
  line-height: 40px;
  height: 40px;
  margin-left: 15px;
  font-size: 14px;
  color: #444;
}
.detail-pad-after > :nth-child(4) > a {
  color: #7d7d7d;
  transition: all 0.125s ease;
  text-decoration: none;
}
.detail-pad-after > :nth-child(4) > a:hover {
  color: #a6cc63;
}
/* .detail-eggs-images{
    width: 100%;
    margin-bottom: 40px;
    padding-bottom: 30px;
    border-bottom: 6px solid #eeeeee;
}
.detail-eggs-images>div{
    width: 65%;
    margin: 0 auto;
    padding: 0 20px;
}
.detail-eggs-images>div>p{
    font-size: 16px;
    line-height: 20px;
    margin-bottom: 10px;
}
.detail-eggs-images>div>p img{
    width: 100%;
    display: block;
} */
.detail-pad-alsolike {
  width: 100%;
}
.detail-pad-alsolike > :first-child {
  width: 65%;
  margin: 0 auto;
  text-align: center;
  font-size: 40px;
  line-height: 40px;
  overflow: hidden;
  margin-bottom: 40px;
  color: #444;
}
.detail-pad-bottom-rotation {
  width: 100%;
  position: relative;
  height: 350px;
}
</style>