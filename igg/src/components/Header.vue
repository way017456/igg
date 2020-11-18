<template>
  <header>
    <div style="height:80px">
      <div class="header-style">
        <div class="header-left">
          <router-link to>
            <div></div>
          </router-link>
          <div>
            <router-link to="/"></router-link>
          </div>
        </div>
        <div class="header-right">
          <div class="header-right-search">
            <div>搜索</div>
            <input type="text" placeholder="请输入商品名称、游戏…" />
          </div>
          <div class="header-right-login">
            <router-link to="/signpassword">登录</router-link>/
            <router-link to="/signemail">注册</router-link>
          </div>
          <div class="header-right-order">
            <router-link to>我的订单</router-link>
          </div>
          <div class="header-right-money">
            <router-link to>元</router-link>
            <div></div>
            <ul>
              <li>
                <router-link to>元-人民币</router-link>
              </li>
              <li>
                <router-link to>US$ -美元</router-link>
              </li>
            </ul>
          </div>
          <div class="header-right-language">
            <div></div>
            <div></div>
            <ul>
              <li>
                <router-link to>
                  <div></div>
                  <span>- 简体中文</span>
                </router-link>
              </li>
              <li>
                <router-link to>
                  <div></div>
                  <span>- English</span>
                </router-link>
              </li>
              <li>
                <router-link to>
                  <div></div>
                  <span>- 繁體中文</span>
                </router-link>
              </li>
            </ul>
          </div>
          <div class="header-right-car">
            <div>
              <p>0</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>
<style scoped>
.header-style {
  position: fixed;
  width: 100%;
  border-bottom: 1px solid #eeeeee;
  height: 80px;
  background-color: white;
  z-index: 2;
}
.header-left {
  width: 24%;
  height: 80px;
  float: left;
}
.header-right {
  width: 48%;
  height: 80px;
  float: right;
}
.header-left > a {
  float: left;
  width: 110px;
  height: 80px;
  border-right: 1px solid #eeeeee;
}
.header-left > a > div {
  width: 29px;
  height: 20px;
  background-image: url(../assets/images/header/sprite.png);
  background-position: -306px 0;
  margin: 30px auto;
}
.header-left > div {
  width: 185px;
  height: 40px;
  float: left;
  margin: 17px 0 0 42px;
}
.header-left > div > a {
  background-image: url(../assets/images/header/sprite.png);
  width: 185px;
  height: 40px;
  display: inline-block;
}
.header-right-search {
  width: 400px;
  position: relative;
  height: 80px;
  margin-right: 60px;
  float: left;
}
.header-right-search > div {
  width: 68px;
  height: 44px;
  background-color: white;
  position: absolute;
  text-align: center;
  right: 2px;
  top: 18px;
  line-height: 44px;
  cursor: pointer;
  transition: all 0.125s ease;
}
.header-right-search > div:hover {
  background-color: #a6cc63;
  color: white;
}
.header-right-search > input {
  height: 48px;
  width: 380px;
  color: #666;
  font-size: 16px;
  background-color: #eeeeee;
  border: 0;
  outline: 0;
  padding-left: 20px;
  margin: 16px 0;
}
.header-right-login {
  float: left;
  width: 10%;
  text-align: center;
  font-weight: bold;
  border-left: 1px solid white;
  border-right: 1px solid white;
}
.header-right-login a {
  color: #444;
  font-size: 14px;
  text-decoration: none;
  line-height: 80px;
}
.header-right-login:hover {
  border-left: 1px solid #eeeeee;
  border-right: 1px solid #eeeeee;
  background-color: #f8f8f8;
}
.header-right-login a:hover {
  color: #a6cc63;
}
.header-right-order {
  width: 12%;
  float: left;
  text-align: center;
  font-weight: bold;
  border-left: 1px solid white;
  border-right: 1px solid white;
}
.header-right-order:hover {
  border-left: 1px solid #eeeeee;
  border-right: 1px solid #eeeeee;
  background-color: #f8f8f8;
  cursor: pointer;
}
.header-right-order > a {
  line-height: 80px;
  text-decoration: none;
  color: #444;
  font-size: 14px;
}
.header-right-money {
  width: 6%;
  float: left;
  text-align: center;
  font-weight: bold;
  border-left: 1px solid white;
  border-right: 1px solid white;
  position: relative;
  cursor: pointer;
  padding-right: 10px;
}
.header-right-money:hover {
  border-left: 1px solid #eeeeee;
  border-right: 1px solid #eeeeee;
  background-color: #f8f8f8;
}
.header-right-money:hover.header-right-money > ul {
  display: block;
}
.header-right-money > a {
  line-height: 80px;
  text-decoration: none;
  color: #444;
  font-size: 14px;
}
.header-right-money > div {
  width: 0;
  height: 0;
  border: 7px solid;
  border-color: #a6cc63 transparent transparent;
  position: absolute;
  top: 45%;
  right: 15px;
}
.header-right-money > ul {
  background-color: white;
  position: absolute;
  border: 1px solid #eeeeee;
  font-weight: lighter;
  list-style: none;
  top: 79px;
  left: -20%;
  display: none;
}
.header-right-money > ul > li:first-child > a {
  color: #a6cc63;
}
.header-right-money > ul > li {
  height: 50px;
  line-height: 50px;
  width: 75px;
  padding: 0 10px;
  border-bottom: 1px solid #eeeeee;
  transition: all 0.125s ease;
}
.header-right-money > ul > li:hover {
  background-color: #f8f8f8;
}
.header-right-money > ul > li > a {
  color: #444;
  font-size: 14px;
  text-decoration: none;
}
.header-right-language {
  width: 8%;
  height: 80px;
  float: left;
  font-weight: bold;
  border-left: 1px solid white;
  border-right: 1px solid white;
  position: relative;
  cursor: pointer;
  color: #444;
}
.header-right-language:hover.header-right-language > ul {
  display: block;
}
.header-right-language:hover {
  border-left: 1px solid #eeeeee;
  border-right: 1px solid #eeeeee;
  background-color: #f8f8f8;
}
.header-right-language > :first-child {
  width: 20px;
  height: 20px;
  background-image: url(../assets/images/header/sprite.png);
  background-position: -280px -20px;
  margin: 30px 0 0 15px;
}
.header-right-language > :nth-child(2) {
  width: 0;
  height: 0;
  border: 7px solid;
  border-color: #a6cc63 transparent transparent;
  position: absolute;
  top: 45%;
  right: 15px;
}
.header-right-language > ul {
  background-color: white;
  position: absolute;
  border: 1px solid #eeeeee;
  font-weight: lighter;
  list-style: none;
  top: 79px;
  left: -32%;
  display: none;
}
.header-right-language > ul > li {
  height: 50px;
  line-height: 50px;
  width: 100px;
  padding: 0 10px;
  border-bottom: 1px solid #eeeeee;
  transition: all 0.125s ease;
}
.header-right-language > ul > li:hover {
  background-color: #f8f8f8;
}
.header-right-language > ul > li > a {
  color: #444;
  font-size: 14px;
  text-decoration: none;
}
.header-right-language > ul > li:first-child > a {
  color: #a6cc63;
}
.header-right-language > ul > li:nth-child(2) > a > div {
  background-position: -302px -43px;
}
.header-right-language > ul > li:nth-child(3) > a > div {
  background-position: -525px -54px;
}
.header-right-language > ul > li > a > div {
  width: 20px;
  height: 20px;
  background-image: url(../assets/images/header/sprite.png);
  background-repeat: no-repeat;
  background-position: -525px -76px;
  display: inline-block;
  margin: 0 5px 0 0;
  vertical-align: middle;
}
.header-right-car {
  width: 11%;
  height: 80px;
  float: left;
  cursor: pointer;
}
.header-right-car > div {
  position: relative;
  background-image: url(../assets/images/header/sprite.png);
  width: 26px;
  height: 20px;
  background-position: -280px 0;
  margin: 30px auto;
}
.header-right-car > div > p {
  width: 20px;
  height: 20px;
  background-color: #a6cc63;
  font-size: 12px;
  text-align: center;
  color: white;
  font-style: normal;
  line-height: 20px;
  border-radius: 50%;
  position: absolute;
  top: -10px;
  left: -10px;
  padding: 1px 1px;
}
</style>>