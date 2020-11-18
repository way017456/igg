<template>
  <div>
    <div class="sign_sty">
      <div class="sign_left_img"></div>
      <div class="sign_right">
        <div class="sign_right_section">
          <div class="sign_right_title">
            <span>IGG 通行证</span>
            <span>
              <router-link to="/signcode">手机号</router-link>
              <router-link to="/signemail">邮箱</router-link>
              <!-- <router-link to="">手机号</router-link>
              <router-link to="">邮箱</router-link>-->
            </span>
          </div>
          <div class="sign_right_phone">
            <div>
              +86
              <div class="sign_right_phone_triangle">
                <span></span>
              </div>
            </div>
            <input type="text" v-model="checkphone" placeholder="手机号" />
          </div>
          <div class="sign_right_age">
            <input type="text" placeholder="验证码" />
            <div class="sign_right_send">
              <router-link to>发送</router-link>
            </div>
          </div>
          <div class="sign_right_btn_user">
            <button @click="codephone">登录/注册</button>
          </div>
          <div class="sign_right_btn_pwd">
            <button>
              <router-link to="/SignPassword">用验证码登录/注册</router-link>
            </button>
          </div>
          <div class="sign_right_agree">
            <p>未注册的手机号使用验证码登录时将自动注册，且视为同意并接受：</p>
            <router-link to>服务协议</router-link>
          </div>
          <div class="sign_right_other">
            <span>或使用以下账号登录</span>
          </div>
          <div class="sign_right_otherimg">
            <div class="sign_right_f"></div>
            <div class="sign_right_g"></div>
            <div class="sign_right_wx"></div>
            <div class="sign_right_more" @click="active" v-show="noshow"></div>
            <div class="sign_right_y" v-show="show"></div>
            <div class="sign_right_hd" v-show="show"></div>
            <div class="sign_right_xn" v-show="show"></div>
            <div class="sign_right_in" v-show="show"></div>
          </div>
          <div class="sign_right_menu">
            <div @click="nav_active">
              <span>中文(简体)</span>
              <div>
                <span></span>
              </div>
            </div>
            <ul v-show="nav_show">
              <li>
                <router-link to>中文(简体)</router-link>
              </li>
              <li>
                <router-link to>中文(繁體)</router-link>
              </li>
              <li>
                <router-link to>Deutsch</router-link>
              </li>
              <li>
                <router-link to>العربية</router-link>
              </li>
              <li>
                <router-link to>English</router-link>
              </li>
              <li>
                <router-link to>Español</router-link>
              </li>
              <li>
                <router-link to>français</router-link>
              </li>
              <li class="sign_right_lineheight">
                <router-link to>Bahasa Indonesia</router-link>
              </li>
              <li>
                <router-link to>Italiano</router-link>
              </li>
              <li>
                <router-link to>日本語 (にほんご)</router-link>
              </li>
              <li>
                <router-link to>한국어</router-link>
              </li>
              <li class="sign_right_lineheight">
                <router-link to>Bahasa Melayu</router-link>
              </li>
              <li>
                <router-link to>Português</router-link>
              </li>
              <li>
                <router-link to>русский</router-link>
              </li>
              <li>
                <router-link to>ไทย</router-link>
              </li>
              <li>
                <router-link to>Türkçe</router-link>
              </li>
              <li>
                <router-link to>Tiếng Việt</router-link>
              </li>
              <li>
                <router-link to>Українська</router-link>
              </li>
              <li>
                <router-link to>język polski</router-link>
              </li>
              <li class="sign_right_lineheight">
                <router-link to>Español (Colombia)</router-link>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div style="clear:both"></div>
    <div class="sign_bottom">© 2020 IGG All Rights Reserved.</div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      show: false,
      noshow: true,
      nav_show: false,
      checkphone: ""
    };
  },
  methods: {
    active() {
      this.noshow = false;
      this.show = true;
    },
    nav_active() {
      if (this.nav_show == false) {
        this.nav_show = true;
      } else {
        this.nav_show = false;
      }
    },
    codephone() {
      let reg = /^1[3-9]\d{9}$/;
      if (reg.test(this.checkphone)) {
        alert("无法发送验证码！请直接注册登录。");
      } else {
        alert("手机号格式有误！");
      }
      // console.log(this.checkphone);
    }
  },
  mounted() {
    // this.axios.post().then(res=>{
    // })
  }
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
body {
  background-color: #f4f4f4;
}
.sign_sty {
  width: 1000px;
  margin: 110px auto 30px;
  border-radius: 10px;
  background-color: white;
}
.sign_left_img {
  width: 560px;
  background-image: url(../assets/images/sign/banner01.jpg);
  height: 570px;
  background-size: cover;
  background-position: center;
  float: left;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
}
.sign_right {
  width: 440px;
  float: right;
  height: 570px;
  background-color: white;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
}
.sign_right_section {
  padding: 40px;
}
.sign_right_title {
  height: 30px;
}
.sign_right_title > :first-child {
  font-weight: 700;
  font-size: 24px;
  color: #333;
}
.sign_right_title > :last-child {
  margin-left: 36%;
}
.sign_right_title > :last-child > :first-child {
  color: #333;
  border-bottom: 3px solid #ffd900;
  display: inline-block;
  width: 48px;
  height: 16px;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
  font-weight: 700;
  margin: 0 6px;
}
.sign_right_title > :last-child > :last-child {
  color: #666;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
  font-weight: 700;
  margin: 0 6px;
}
.sign_right_phone {
  border-bottom: 1px solid #eee;
  margin-top: 10px;
  padding: 13px 10px;
}
.sign_right_phone > :first-child {
  display: inline-block;
  color: #212529;
  width: 65px;
  border-right: 1px solid #eee;
  margin-right: 10px;
}
.sign_right_phone_triangle {
  display: inline-block;
  height: 7px;
  width: 15px;
  margin: 0 8px;
}
.sign_right_phone_triangle > span {
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 5px 5px 0 5px;
  border-color: #999 transparent transparent transparent;
  position: absolute;
}
.sign_right_phone > input {
  border: 0;
  outline: none;
  height: 30px;
  width: 76%;
  font-size: 20px;
}
.sign_right_phone > ::-webkit-input-placeholder {
  font-size: 16px;
  color: e7e7e7;
}
.sign_right_age {
  border-bottom: 1px solid #eee;
  padding: 13px 10px;
  width: 95%;
}
.sign_right_age > input {
  width: 70%;
  height: 20px;
  font-size: 20px;
  border: 0;
  outline: 0;
}
.sign_right_age > ::-webkit-input-placeholder {
  font-size: 16px;
  color: e7e7e7;
}
.sign_right_send {
  width: 30%;
  display: inline-block;
  text-align: right;
}
.sign_right_send > a {
  font-weight: 100;
  font-size: 14px;
  color: #666;
  text-decoration: none;
}
.sign_right_send > a:hover {
  color: #fcbe05;
}
.sign_right_btn_user {
  width: 100%;
}
.sign_right_btn_user > button {
  width: 100%;
  background-color: #ffba00;
  color: white;
  cursor: pointer;
  height: 44px;
  margin: 15px 0;
  border: 0;
  outline: 0;
  box-shadow: 0 4px 8px 0 rgba(241, 227, 194, 0.5);
  border-radius: 4px;
  font-size: 16px;
}
.sign_right_btn_user > button:hover {
  background-color: #ffbf10;
}
.sign_right_btn_pwd {
  width: 100%;
}
.sign_right_btn_pwd > button {
  width: 100%;
  background-color: #e7e7e7;
  cursor: pointer;
  height: 44px;
  border: 0;
  outline: 0;
  border-radius: 4px;
  font-size: 16px;
  margin: 0 0 15px 0;
}
.sign_right_btn_pwd > button:hover {
  background-color: #eeeded;
}
.sign_right_btn_pwd > button > a {
  color: #666;
  text-decoration: none;
}
.sign_right_agree {
  font-size: 12px;
  color: #ccc;
  line-height: 16px;
  margin-top: 5px;
}
.sign_right_agree > a {
  font-size: 12px;
  color: #fcc217;
  text-decoration: underline;
  font-weight: 100;
  margin: 0;
}
.sign_right_other {
  height: 10px;
  border-bottom: 1px solid #e7e7e7;
  text-align: center;
  margin-top: 15px;
}
.sign_right_other > span {
  font-size: 14px;
  color: #ccc;
  background-color: white;
  padding: 0 15px;
}
.sign_right_otherimg {
  margin-top: 25px;
  width: 100%;
  text-align: center;
}
.sign_right_otherimg > div {
  display: inline-block;
  margin: 0 4px;
  cursor: pointer;
}
.sign_right_f {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
}
.sign_right_f:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: 0 -43px;
}
.sign_right_g {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -104px 0;
}
.sign_right_g:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -104px -43px;
}
.sign_right_wx {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -52px 0;
}
.sign_right_wx:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -52px -43px;
}
.sign_right_more {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -364px 0;
}
.sign_right_more:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -364px -43px;
}
.sign_right_y {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -156px 0;
}
.sign_right_y:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -156px -43px;
}
.sign_right_hd {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -260px 0;
}
.sign_right_hd:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -260px -43px;
}
.sign_right_xn {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -312px 0;
}
.sign_right_xn:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -312px -43px;
}
.sign_right_in {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -208px 0;
}
.sign_right_in:hover {
  width: 42px;
  height: 43px;
  background: url(../assets/images/sign/button_other_sprit.png) no-repeat;
  background-position: -208px -43px;
}
.sign_right_menu {
  position: relative;
  margin-top: 10px;
}
.sign_right_menu a {
  text-decoration: none;
}
.sign_right_menu > :first-child {
  font-size: 12px;
  cursor: pointer;
  width: 20%;
}
.sign_right_menu > :first-child > div {
  display: inline-block;
  height: 8px;
  margin: 0 5px;
}
.sign_right_menu > :first-child > div > span {
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 5px 5px 0 5px;
  border-color: #999 transparent transparent transparent;
  position: absolute;
}
.sign_right_menu > ul {
  list-style: none;
  width: 160px;
  height: 110px;
  overflow-y: scroll;
  background-color: white;
  border: 1px solid #ddd;
  box-shadow: 0 0 15px 0 #eee;
  border-radius: 4px;
  position: absolute;
  left: -10px;
  top: 25px;
  cursor: pointer;
}
.sign_right_menu > ul > li {
  margin: 0 32px;
  border-bottom: 1px solid #eee;
  width: 80px;
  height: 35px;
}
.sign_right_menu > ul > li > .router-link-active {
  color: #999;
  height: 35px;
  font-size: 12px;
  font-weight: 400;
  line-height: 36px;
  margin: 0;
}
.sign_right_menu > ul > .sign_right_lineheight > .router-link-active {
  line-height: 0;
}
.sign_bottom {
  color: #999;
  text-align: center;
  font-size: 12px;
  margin-top: 30px;
  zoom: 1;
  font-style: normal;
}
</style>