<template>
  <div>
    <my-header></my-header>
    <!-- <my-morelist></my-morelist> -->
    <div>
      <!-- 顶部导航 -->
      <div class="list-select">
        <ul class="list-select-left">
          <li>
            <router-link to>全部</router-link>
          </li>
          <li class="morelist-sanjiaoxing list-select-list">
            <router-link to>游戏</router-link>
            <ul>
              <li>
                <router-link to>王国纪元</router-link>
              </li>
              <li>
                <router-link to>城堡争霸</router-link>
              </li>
            </ul>
          </li>
          <li>
            <router-link to>福袋</router-link>
          </li>
          <li class="morelist-sanjiaoxing list-select-list">
            <router-link to>数码配件</router-link>
            <ul>
              <li>
                <router-link to>手机壳</router-link>
              </li>
              <li>
                <router-link to>手机支架</router-link>
              </li>
            </ul>
          </li>
          <li class="morelist-sanjiaoxing list-select-list">
            <router-link to>收藏品</router-link>
            <ul>
              <li>
                <router-link to>手办模型</router-link>
              </li>
            </ul>
          </li>
          <li>
            <router-link to>鼠标垫</router-link>
          </li>
          <li>
            <router-link to>杯子</router-link>
          </li>
          <li class="morelist-sanjiaoxing list-select-list">
            <router-link to>服饰</router-link>
            <ul>
              <li>
                <router-link to>T恤</router-link>
              </li>
              <li>
                <router-link to>帽子</router-link>
              </li>
            </ul>
          </li>
          <li>
            <router-link to>其他</router-link>
          </li>
        </ul>
        <ul class="list-select-right">
          <li class="morelist-sanjiaoxing list-select-list">
            <router-link to>人气</router-link>
            <ul>
              <li>
                <router-link to>T恤</router-link>
              </li>
              <li>
                <router-link to>帽子</router-link>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- 商品列表 -->
      <div class="list-item">
        <div class="list-banner">
          <div class="list-banner-item">
            <ul>
              <li v-for="(list,i) of lists" :key="i" @click="jump(list)">
                <div>
                  <img :src="list.pathimg" alt />
                </div>
                <div>
                  <div>
                    <span></span>
                    <router-link to>{{list.title}}</router-link>
                  </div>
                  <div>{{list.price.toFixed(2)}}元</div>
                </div>
              </li>
              <!-- <li>
                            <div>
                                <img src="../../../igg_server/images/list/kanpsack.jpg" alt="">
                            </div>
                            <div>
                                <div>
                                    <span></span>
                                    <router-link to="">中秋福袋 — “花好月圆”</router-link>
                                </div>
                                <div>469.00元</div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../../../igg_server/images/list/model.jpg" alt="">
                            </div>
                            <div>
                                <div>
                                    <span></span>
                                    <router-link to="">中秋福袋 — “花好月圆”</router-link>
                                </div>
                                <div>469.00元</div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../../../igg_server/images/list/pad.jpg" alt="">
                            </div>
                            <div>
                                <div>
                                    <span></span>
                                    <router-link to="">中秋福袋 — “花好月圆”</router-link>
                                </div>
                                <div>469.00元</div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../../../igg_server/images/list/model.jpg" alt="">
                            </div>
                            <div>
                                <div>
                                    <span></span>
                                    <router-link to="">中秋福袋 — “花好月圆”</router-link>
                                </div>
                                <div>469.00元</div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../../../igg_server/images/list/cup.jpg" alt="">
                            </div>
                            <div>
                                <div>
                                    <span></span>
                                    <router-link to="">中秋福袋 — “花好月圆”</router-link>
                                </div>
                                <div>469.00元</div>
                            </div>
              </li>-->
            </ul>
          </div>
        </div>
        <div></div>
      </div>
    </div>

    <my-footer></my-footer>
  </div>
</template>
<script>
export default {
  props: ["cid"],
  data() {
    return {
      lists: [],
      id: ""
    };
  },
  mounted() {
    //   获取列表商品
    // console.log(this.cid);
    this.axios.get("/list", { params: { cid: this.cid } }).then(res => {
      // this.lists = res.data.result;
      // console.log(this.lists);
      let data = res.data.result;
      data.forEach(item => {
        item.pathimg = require("../../../igg_server/images/list/" +
          item.pathimg);
        this.lists.push(item);
        // console.log(item.title);
        // console.log(item.id);
      });
    });
  },
  methods: {
    jump(list) {
      this.$router.push("/details/" + list.id);
    }
  }
};
</script>
<style scoped>
.list-select {
  border-bottom: 1px solid #eeeeee;
  width: 100%;
  position: relative;
}
.list-select-left {
  height: 80px;
}
.list-select-left > li {
  float: left;
  list-style: none;
  position: relative;
  transition: all 0.125s ease;
}
.list-select-left > li:hover {
  background-color: #f8f8f8;
}
.list-select-left > li:hover.morelist-sanjiaoxing::before {
  transform: rotate(180deg);
}
.list-select-left > li > a {
  display: block;
  height: 80px;
  line-height: 80px;
  padding: 0 20px;
  width: 70px;
  text-align: center;
  border-right: 1px solid #eeeeee;
  color: #444;
  font-size: 14px;
  text-decoration: none;
}
.morelist-sanjiaoxing::before {
  content: "\20";
  background-image: url(../assets/images/header/sprite.png);
  background-repeat: no-repeat;
  background-position: -342px -60px;
  width: 13px;
  height: 8px;
  position: absolute;
  top: 50%;
  right: 20%;
  transition: all 0.125s ease;
  margin-top: -4px;
}
.list-select-left > .morelist-sanjiaoxing > a {
  padding: 0 30px 0 10px;
}
.list-select-right {
  position: absolute;
  right: 0;
  top: 0;
  border-left: 1px solid #eeeeee;
  height: 80px;
}
.list-select-right > li {
  position: relative;
  list-style: none;
  transition: all 0.125s ease;
}
.list-select-right > li:hover {
  background-color: #f8f8f8;
}
.list-select-right > li > a {
  padding: 0 80px 0 25px;
  text-decoration: none;
  display: block;
  height: 80px;
  line-height: 80px;
  color: #444;
  width: 35px;
  text-align: center;
}
.list-select-right > .morelist-sanjiaoxing::before {
  right: 30%;
}
.list-select-right > li:hover.morelist-sanjiaoxing::before {
  transform: rotate(180deg);
}
.list-select-list:hover ul {
  display: block;
}
.list-select-list ul {
  position: absolute;
  top: 81px;
  background-color: white;
  transition: all 0.125s ease;
  left: -1px;
  width: auto;
  min-width: calc(100% + 1px);
  display: none;
}
.list-select-list ul > li {
  list-style: none;
}
.list-select-list ul > li > a {
  color: #444;
  font-size: 14px;
  text-decoration: none;
  display: block;
  height: 50px;
  line-height: 50px;
  text-align: center;
  border-right: 1px solid #eeeeee;
  border-bottom: 1px solid #eeeeee;
  border-left: 1px solid #eeeeee;
  width: 80%;
  padding: 0 10px;
}
.list-select-list ul > li > a:hover {
  background-color: #f8f8f8;
}
.list-select-right > .list-select-list ul > li > a {
  width: 85%;
}
.list-item {
  /* margin-top: 68px 0 40px 0; */
  width: 100%;
  margin-top: 68px;
}
.list-banner {
  width: 90%;
  margin: 0 auto;
}
.list-banner-item {
  width: 100%;
}
.list-banner-item > ul {
  list-style: none;
  display: flex;
  /* justify-content: space-between; */
  flex-wrap: wrap;
}
.list-banner-item > ul > li {
  width: 23.2%;
  height: 490px;
  text-align: center;
  margin: 0 15px;
}
.list-banner-item > ul > li:hover {
  cursor: pointer;
}
.list-banner-item > ul > li > :first-child {
  width: 100%;
  height: 390px;
  margin-bottom: 18px;
  overflow: hidden;
}
.list-banner-item > ul > li > :first-child > img {
  width: 100%;
  transition: all 0.45s ease;
  cursor: pointer;
}
.list-banner-item > ul > li > :first-child > img:hover {
  transform: scale(1.1, 1.1);
}
.list-banner-item > ul > li > :nth-child(2) > :first-child {
  line-height: 18px;
  margin-bottom: 8px;
}
.list-banner-item > ul > li > :nth-child(2):hover > :first-child > a {
  text-decoration: underline;
}
.list-banner-item > ul > li > :nth-child(2) > :first-child > span {
  background-image: url(../../../igg_server/images/list/hot_new_icon.png);
  display: inline-block;
  background-position: left top;
  width: 32px;
  height: 17px;
  margin-right: 10px;
  vertical-align: top;
}
.list-banner-item > ul > li > :nth-child(2) > :first-child > a {
  font-size: 14px;
  color: #444;
  text-decoration: none;
}
.list-banner-item > ul > li > :nth-child(2) > :nth-child(2) {
  color: #a6cc63;
  font-size: 16px;
  line-height: 20px;
  font-weight: bold;
}
</style>