<template>
  <div>
    <my-header></my-header>
    <!-- <my-detailknapsack></my-detailknapsack> -->
    <!-- <my-detailcup></my-detailcup> -->
    <!-- <my-detaileggs></my-detaileggs> -->
    <!-- <my-detailpad></my-detailpad> -->
    <div v-for="(elem,i) of data" :key="i">
      <!-- 面包屑导航 -->
      <div class="vice-nav">
        <router-link to="/">首页</router-link>>
        <router-link to>其他</router-link>>
        <router-link to>{{elem.title}}</router-link>
      </div>
      <!-- 轮播+介绍 -->
      <div class="rotation-detail">
        <div class="top-rotation">
          <div class="zoomleft">
            <div class="super-mask" @mouseover="toggle" @mouseout="toggle" @mousemove="move"></div>
            <img :src="elem.detailtopimg" />
            <div class="zoommask" :class="{'d-none':hide}" :style="maskStyle"></div>
            <div
              class="zoomright"
              :class="{'d-none':hide}"
              :style="{'background-image':`url(${elem.detailtopimg})`,'background-position':`-${parseInt(maskStyle.left)}px -${parseInt(maskStyle.top)}px`}"
            ></div>
            <!-- 'background-position':`${offsetw} ${offseth}` -->
          </div>
        </div>

        <div class="detail">
          <h1>{{elem.title}}</h1>
          <h5>
            <div>{{elem.price.toFixed(2)}}元</div>
          </h5>
          <div class="detail-content">
            <p>{{elem.subtitle}}</p>
            <p>所属游戏: {{elem.game}}</p>
            <p>产品材质: {{elem.texture}}</p>
            <p>产品尺寸: {{elem.size}}</p>
            <p>款式类型: {{elem.introduce}}</p>
            <p>承重规格: {{elem.kg}}</p>
          </div>
          <div class="detail-count">
            <div>数量</div>
            <div>
              <my-addsub></my-addsub>
            </div>
          </div>
          <div class="detail-add-to-cart">
            <router-link to>加入购物车</router-link>
          </div>
          <div class="detail-after">
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
      <!-- 图片详情 -->
      <div class="detail-images">
        <div>
          <p>
            <img src="../../../igg_server/images/details/details-one.jpg" alt />
            <router-link to>
              <img src="../../../igg_server/images/details/details-two.jpg" alt />
            </router-link>、、
            <img src="../../../igg_server/images/details/details-three.jpg" alt />
            <img src="../../../igg_server/images/details/details-four.jpg" alt />
            <img src="../../../igg_server/images/details/details-five.jpg" alt />
            <img src="../../../igg_server/images/details/details-six.jpg" alt />
          </p>
        </div>
      </div>
      <!-- 底部轮播 -->
      <div class="detail-alsolike">
        <div>您可能感兴趣的</div>
        <div class="detail-bottom-rotation">
          <my-rotation></my-rotation>
        </div>
      </div>
    </div>

    <my-footer></my-footer>
  </div>
</template>
<script>
import "../../public/js/swiper.min.js";
export default {
  props: ["id"],
  data() {
    return {
      data: [],
      hide: true,
      maskStyle: {
        left: "0",
        top: "0"
      }
      // offsetw:'0',
      // offseth:'0'
    };
  },
  methods: {
    toggle() {
      this.hide = !this.hide;
    },
    move(e) {
      console.log(e.offsetX, e.offsetY);
      let left = e.offsetX - 150;
      let top = e.offsetY - 150;
      if (left < 0) {
        left = 0;
      } else if (left > 300) {
        left = 300;
      }
      if (top < 0) {
        top = 0;
      } else if (top > 300) {
        top = 300;
      }
      this.maskStyle = {
        left: left + "px",
        top: top + "px"
      };
      // this.maskStyle.left = e.offsetX - 150 + "px";
      // this.maskStyle.top = e.offsetY - 150 + "px";
    }
  },
  mounted() {
    // var mySwiper = new Swiper(".swiper1", {
    //   pagination: { el: ".swiper-pagination.swiper1" },
    //   paginationClickable: true,
    //   nextButton: ".swiper-button-next",
    //   prevButton: ".swiper-button-prev",
    //   // loop:true,
    //   // Enable debugger
    //   debugger: true
    // });

    // var swiper = new Swiper('.swiper-container', {
    // pagination: '.swiper-pagination',
    // paginationClickable: true,
    // nextButton: '.swiper-button-next',
    // prevButton: '.swiper-button-prev',
    // // Enable debugger
    // debugger: true
    // });

    // console.log(this.id);
    this.axios
      .get("/details", {
        params: {
          id: this.id
        }
      })
      .then(res => {
        let r = res.data.result;
        r.forEach(item => {
          item.detailtopimg = require("../../../igg_server/images/list/" +
            item.detailtopimg);
          //   console.log(item.detailtopimg);
          this.data.push(item);
        });
        // console.log(this.data);
      });
  }
};
</script>
<style>
@import "../../public/css/swiper.min.css";
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
.rotation-detail {
  width: 100%;
  display: flex;
  margin-bottom: 50px;
}
.top-rotation {
  width: 60%;
  background-color: #f8f8f8;
}
.detail {
  width: 40%;
  height: 607px;
  padding: 75px 40px 50px 40px;
}
.detail > h1 {
  font-size: 34px;
  line-height: 35px;
  color: #444;
}
.detail > h5 {
  margin: 15px 0;
  font-weight: lighter;
}
.detail > h5 > div {
  font-size: 24px;
  line-height: 24px;
  font-weight: bold;
  color: #a6cc63;
}
.detail-content {
  margin-bottom: 10px;
  color: #444;
}
.detail-content > p {
  line-height: 30px;
  font-size: 16px;
}
.detail-count {
  margin-bottom: 50px;
  color: #444;
}
.detail-count > :first-child {
  font-size: 16px;
}
.detail-count > :nth-child(2) {
  margin-top: 10px;
}
.detail-add-to-cart {
  margin-bottom: 40px;
}
.detail-add-to-cart > a {
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
.detail-add-to-cart > a:hover {
  background-color: #444;
}
.detail-after {
  width: 100%;
  display: flex;
  font-size: 14px;
  color: #444;
}
.detail-after > :first-child {
  height: 40px;
  line-height: 40px;
  margin-right: 20px;
  padding-right: 20px;
  border-right: 2px solid #7d7d7d;
}
.detail-after > :first-child > :first-child {
  padding-right: 10px;
  float: left;
}
.detail-after > :first-child > :nth-child(2) {
  width: 40px;
  height: 40px;
  background: url(../../../igg_server/images/details/collection_s_icon.png)
    no-repeat center center;
  float: left;
}
.detail-after > :nth-child(2) {
  font-size: 20px;
  line-height: 40px;
  float: left;
  margin-right: 28px;
}
.detail-after > :nth-child(3) {
  float: left;
}
.detail-after > :nth-child(3) > ul {
  list-style: none;
}
.detail-after > :nth-child(3) > ul > li > a {
  width: 40px;
  height: 40px;
  float: left;
  background-image: url(../assets/images/header/sprite.png);
  background-repeat: no-repeat;
  margin-right: 9px;
  cursor: pointer;
}
.detail-after > :nth-child(3) > ul > li > :first-child {
  background-position: -341px -117px;
}
.detail-after > :nth-child(3) > ul > li > :first-child:hover {
  background-position: -341px -76px;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(2) {
  background-position: -381px -117px;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(2):hover {
  background-position: -381px -76px;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(3) {
  background-position: -421px -117px;
  position: relative;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(3):hover {
  background-position: -421px -76px;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(3) > img {
  display: none;
  position: absolute;
  left: 50%;
  bottom: 55px;
  margin-left: -50px;
  width: 100px;
  height: 100px;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(3):hover > img {
  display: block;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(4) {
  background-position: -461px -117px;
}
.detail-after > :nth-child(3) > ul > li > :nth-child(4):hover {
  background-position: -461px -76px;
}
.detail-after > :nth-child(4) {
  float: left;
  line-height: 40px;
  height: 40px;
  margin-left: 15px;
  font-size: 14px;
  color: #444;
}
.detail-after > :nth-child(4) > a {
  color: #7d7d7d;
  transition: all 0.125s ease;
  text-decoration: none;
}
.detail-after > :nth-child(4) > a:hover {
  color: #a6cc63;
}
.detail-images {
  width: 100%;
  margin-bottom: 40px;
  padding-bottom: 30px;
  border-bottom: 6px solid #eeeeee;
}
.detail-images > div {
  width: 65%;
  margin: 0 auto;
  padding: 0 20px;
}
.detail-images > div > p {
  font-size: 16px;
  line-height: 20px;
  margin-bottom: 10px;
}
.detail-images > div > p img {
  width: 100%;
  display: block;
}
.detail-alsolike {
  width: 100%;
}
.detail-alsolike > :first-child {
  width: 65%;
  margin: 0 auto;
  text-align: center;
  font-size: 40px;
  line-height: 40px;
  overflow: hidden;
  margin-bottom: 40px;
  color: #444;
}
.detail-bottom-rotation {
  width: 100%;
  position: relative;
  height: 350px;
}

.d-none {
  display: none;
}
.zoomleft {
  position: relative;
  text-align: center;
  /* width: 67%; */
  width: 600px;
  margin: 0 auto;
}
.super-mask {
  width: 600px;
  position: absolute;
  height: 607px;
  z-index: 100;
}
.zoomleft > img {
  width: 100%;
}
.zoommask {
  width: 300px;
  height: 300px;
  background-color: rgba(216, 238, 89, 0.5);
  position: absolute;
  left: 0;
  top: 0;
}
.zoomright {
  position: absolute;
  width: 800px;
  height: 732px;
  top: 0;
  left: 101%;
  background-size: 120%;
  /* background-position: -100px -100px; */
  z-index: 1;
}
</style>