<template>
    <div>
        <div class="list">
            <div class="list-pro">
                <!-- 最新商品 -->
                <div class="list-latest-pro-title">
                    <div>
                        <span>最新商品</span>
                        <router-link to="/list/1">更多</router-link>
                    </div>
                </div>
                <div class="list-latest-pro">
                    <ul>
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
                        </li>
                        <li>
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
                    </ul>
                </div>
                <!-- 热门商品 -->
                <div class="list-latest-pro-title">
                    <div>
                        <span>热门商品</span>
                        <router-link to="/list/0">更多</router-link>
                    </div>
                </div>
                <div class="list-latest-pro">
                    <ul>
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
                        </li>
                        <li>
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
                    </ul>
                </div>
                <!-- END -->
                <div class="list-more">
                    <router-link to="">更多</router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.list{
    margin: 55px 0 40px 0;
    width: 100%;
    display: flex;
}
.list-pro{
    width: 90%;
    margin: 0 auto;
}
.list-latest-pro-title{
    width: 100%;
    margin-bottom: 55px;
    position: relative;
    height: 50px;
}
.list-latest-pro-title>:first-child{
    height: 1.75rem;
    border-bottom: 1px solid #000;
    text-align: center;
    width: 17%;
    margin: 0 auto;
}
.list-latest-pro-title>:first-child>span{
    width: 200px;
    font-size: 36px;
    font-weight: 700;
    color: #444;
    background: white;
    display: inline-block;
    line-height: 50px;
}
.list-latest-pro-title>:first-child>a{
    position: absolute;
    right: 0;
    text-decoration: none;
    color: #a6cc63;
    line-height: 50px;
}
.list-latest-pro-title>:first-child>a:hover{
    color: #444;
}
.list-latest-pro{
    width: 100%;
}
.list-latest-pro>ul{
    list-style: none;
    display: flex;
    justify-content: space-between;
}
.list-latest-pro>ul>li{
    width: 23.2%;
    height: 490px;
    text-align: center;
}
.list-latest-pro>ul>li:hover{
    cursor: pointer;
}
.list-latest-pro>ul>li>:first-child{
    width: 100%;
    height: 390px;
    margin-bottom: 18px;
    overflow: hidden;
}
.list-latest-pro>ul>li>:first-child>img{
    width: 100%;
    transition: all .45s ease;
    cursor: pointer;
}
.list-latest-pro>ul>li>:first-child>img:hover{
    transform: scale(1.1, 1.1);
}
.list-latest-pro>ul>li>:nth-child(2)>:first-child{
    line-height: 18px;
    margin-bottom: 8px;
}
.list-latest-pro>ul>li>:nth-child(2):hover>:first-child>a{
    text-decoration: underline;
}
.list-latest-pro>ul>li>:nth-child(2)>:first-child>span{
    background-image: url(../../../igg_server/images/list/hot_new_icon.png);
    display: inline-block;
    background-position: right top;
    width: 32px;
    height: 17px;
    margin-right: 10px;
    vertical-align: top;
}
.list-latest-pro>ul>li>:nth-child(2)>:first-child>a{
    font-size: 14px;
    color: #444;
    text-decoration: none;
}
.list-latest-pro>ul>li>:nth-child(2)>:nth-child(2){
    color: #a6cc63;
    font-size: 16px;
    line-height: 20px;
    font-weight: bold;
}
.list-more{
    width: 100%;
    text-align: center;
}
.list-more>a{
    text-decoration:none;
    display: inline-block;
    width: 240px;
    height: 50px;
    background-color: #f8f8f8;
    line-height: 50px;
    cursor: pointer;
    transition: all .125s ease;
    color: #444;
}
.list-more>a:hover{
    color: #a6cc63;
}
</style>