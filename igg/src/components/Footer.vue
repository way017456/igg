<template>
    <footer>
        <div class="footer-backtop">回到顶部</div>
        <div class="footer-section">
            <div class="footer-section-one">
                <div>
                    <div>
                        <div></div>
                        <h5>
                            <b>服务指南</b>
                        </h5>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <router-link to="">购物流程</router-link>
                            </li>
                            <li>
                                <router-link to="">使用条款</router-link>
                            </li>
                            <li>
                                <router-link to="">隐私政策</router-link>
                            </li>
                            <li>
                                <router-link to="">帮助</router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-section-two">
                <div>
                    <div>
                        <div></div>
                        <h5>
                            <b>支付方式</b>
                        </h5>
                    </div>
                    <div>
                        <ul>
                            <li>
                                Paypal
                            </li>
                            <li>
                                支付宝
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-section-three">
                <div>
                    <div>
                        <div></div>
                        <h5>
                            <b>配送</b>
                        </h5>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <router-link to="">配送方式</router-link>
                            </li>
                            <li>
                                <router-link to="">配送区域</router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-section-four">
                <div>
                    <div>
                        <div></div>
                        <h5>
                            <b>联系我们</b>
                        </h5>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <router-link to="">在线客服</router-link>
                            </li>
                            <li>
                                <router-link to="">在线提交</router-link>
                            </li>
                            <li>
                                联系邮箱：help.cn.store@igg.com
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-section-five">
                <div>
                    <div>
                        <div></div>
                        <h5>
                            <b>关注我们</b>
                        </h5>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <router-link to="">微博</router-link>
                            </li>
                            <li>
                                <router-link to="">微信
                                    <span class="erweima"></span>
                                </router-link>
                            </li>
                            <li>
                                <router-link to="">Facebook</router-link>
                            </li>
                            <li>
                                <router-link to="">Twitter</router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-section-six">
                <div>
                    <div>
                        <div></div>
                        <h5>
                            <b>其他</b>
                        </h5>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <router-link to="">游戏下载</router-link>
                            </li>
                            <li>
                                <router-link to="">关于我们</router-link>
                            </li>
                            <li>
                                <router-link to="">加入我们</router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copy">
            <div></div>
            <div>© 2020 IGG All Rights Reserved.</div>
        </div>
    </footer>
</template>
<style scoped>
.footer-backtop{
    height: 60px;
    width: 100%;
    text-align: center;
    transition: all .125s ease;
    line-height: 60px;
    font-size: 16px;
    background-color: #f6f5f5;
}
.footer-backtop:hover{
    cursor: pointer;
    color: #a6cc63;
}
.footer-section{
    display: flex;
    width: 90%;
    margin: 40px auto 40px auto;
    justify-content: space-around;
    text-align: center;
}
.footer-section>div{
    width: 16.6%;
}
.footer-section-one>:first-child{
    width: 100%;
}
.footer-section-one>:first-child>:first-child>div{
    background-image: url(../assets/images/header/sprite.png);
    width: 68px;
    height: 68px;
    background-position: -1px -68px;
    margin: 0 auto;
}
.footer-section-one>:first-child>:first-child>h5{
    font-size: 16px;
    line-height: 16px;
    margin: 20px 0;
    font-weight: lighter;
}
.footer-section-one>:first-child>:nth-child(2)>ul{
    list-style: none;
}
.footer-section-one>:first-child>:nth-child(2)>ul>li{
    margin-bottom: 14px;
}
.footer-section-one>:first-child>:nth-child(2)>ul>li>a{
    font-size: 14px;
    color: #444;
    text-decoration: none;
    line-height: 20px;
    transition: all .125s ease;
}
.footer-section-one>:first-child>:nth-child(2)>ul>li>a:hover{
    color: #a6cc63;
}
.footer-section-two>:first-child{
    width: 100%;
}
.footer-section-two>:first-child>:first-child>div{
    background-image: url(../assets/images/header/sprite.png);
    width: 68px;
    height: 68px;
    background-position: -205px -68px;
    margin: 0 auto;
}
.footer-section-two>:first-child>:first-child>h5{
    font-size: 16px;
    line-height: 16px;
    margin: 20px 0;
    font-weight: lighter;
}
.footer-section-two>:first-child>:nth-child(2)>ul{
    list-style: none;
}
.footer-section-two>:first-child>:nth-child(2)>ul>li{
    margin-bottom: 14px;
    font-size: 14px;
    color: #444;
    transition: all .125s ease;
}
.footer-section-one>:first-child{
    width: 100%;
}
.footer-section-three>:first-child>:first-child>div{
    background-image: url(../assets/images/header/sprite.png);
    width: 68px;
    height: 68px;
    background-position: -137px -68px;
    margin: 0 auto;
}
.footer-section-three>:first-child>:first-child>h5{
    font-size: 16px;
    line-height: 16px;
    margin: 20px 0;
    font-weight: lighter;
}
.footer-section-three>:first-child>:nth-child(2)>ul{
    list-style: none;
}
.footer-section-three>:first-child>:nth-child(2)>ul>li{
    margin-bottom: 14px;
}
.footer-section-three>:first-child>:nth-child(2)>ul>li>a{
    font-size: 14px;
    color: #444;
    text-decoration: none;
    line-height: 20px;
    transition: all .125s ease;
}
.footer-section-three>:first-child>:nth-child(2)>ul>li>a:hover{
    color: #a6cc63;
}
.footer-section-four>:first-child{
    width: 100%;
}
.footer-section-four>:first-child>:first-child>div{
    background-image: url(../assets/images/header/sprite.png);
    width: 68px;
    height: 68px;
    background-position: -69px -68px;
    margin: 0 auto;
}
.footer-section-four>:first-child>:first-child>h5{
    font-size: 16px;
    line-height: 16px;
    margin: 20px 0;
    font-weight: lighter;
}
.footer-section-four>:first-child>:nth-child(2)>ul{
    list-style: none;
}
.footer-section-four>:first-child>:nth-child(2)>ul>li{
    margin-bottom: 14px;
}
.footer-section-four>:first-child>:nth-child(2)>ul>li>a{
    font-size: 14px;
    color: #444;
    text-decoration: none;
    line-height: 20px;
    transition: all .125s ease;
}
.footer-section-four>:first-child>:nth-child(2)>ul>li>a:hover{
    color: #a6cc63;
}
.footer-section-five>:first-child{
    width: 100%;
}
.footer-section-five>:first-child>:first-child>div{
    background-image: url(../assets/images/header/sprite.png);
    width: 68px;
    height: 68px;
    background-position: -205px -171px;
    margin: 0 auto;
}
.footer-section-five>:first-child>:first-child>h5{
    font-size: 16px;
    line-height: 16px;
    margin: 20px 0;
    font-weight: lighter;
}
.footer-section-five>:first-child>:nth-child(2)>ul{
    list-style: none;
}
.footer-section-five>:first-child>:nth-child(2)>ul>li{
    margin-bottom: 14px;
}
.footer-section-five>:first-child>:nth-child(2)>ul>li>a{
    font-size: 14px;
    color: #444;
    text-decoration: none;
    line-height: 20px;
    transition: all .125s ease;
}
.footer-section-five>:first-child>:nth-child(2)>ul>li>a:hover{
    color: #a6cc63;
}
.footer-section-five>:first-child>:nth-child(2)>ul>:nth-child(2)>a{
    position: relative;
}
.footer-section-five>:first-child>:nth-child(2)>ul>:nth-child(2):hover{
    cursor: pointer;
}
.footer-section-five>:first-child>:nth-child(2)>ul>:nth-child(2):hover>a{
    color: #a6cc63;
}
.footer-section-five>:first-child>:nth-child(2)>ul>:nth-child(2):hover>a>.erweima{
    display: block;
    cursor: pointer;
}
.erweima{
    width: 150px;
    height: 150px;
    background-image: url(../assets/images/footer/qr.png);
    background-size: contain;
    position: absolute;
    right: -170px;
    bottom: 0;
    display: none;
}
.footer-section-six>:first-child{
    width: 100%;
}
.footer-section-six>:first-child>:first-child>div{
    background-image: url(../assets/images/header/sprite.png);
    width: 68px;
    height: 68px;
    background-position: -273px -68px;
    margin: 0 auto;
}
.footer-section-six>:first-child>:first-child>h5{
    font-size: 16px;
    line-height: 16px;
    margin: 20px 0;
    font-weight: lighter;
}
.footer-section-six>:first-child>:nth-child(2)>ul{
    list-style: none;
}
.footer-section-six>:first-child>:nth-child(2)>ul>li{
    margin-bottom: 14px;
}
.footer-section-six>:first-child>:nth-child(2)>ul>li>a{
    font-size: 14px;
    color: #444;
    text-decoration: none;
    line-height: 20px;
    transition: all .125s ease;
}
.footer-section-six>:first-child>:nth-child(2)>ul>li>a:hover{
    color: #a6cc63;
}
.footer-copy{
    width: 100%;
    text-align: center;
    padding:  0 0 40px 0;
}
.footer-copy>:first-child{
    width: 90px;
    height: 60px;
    background-image: url(../assets/images/header/sprite.png);
    background-position: -432px 0;
    margin: 0 auto 40px auto;
}
.footer-copy>:last-child{
    font-size: 16px;
}
</style>