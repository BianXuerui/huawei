<template>
    <div id="container">
        <div>
            <div>
                <div>
                    <span>账号登录</span>
                    <span>扫码登录</span>
                </div>
                <!-- 表单 -->
                <form action="">
                    <div><input type="text" placeholder="手机号/邮件地址/华为号"></div>
                    <div><input type="password" placeholder="密码"></div>
                    <i class="el-icon-mobile-phone">短信验证密码</i>
                    <a>登录</a>
                    <div>
                        <input type="checkbox">
                        <span>记住华为账号</span>
                        <a href="">更多</a>
                    </div>
                </form>
                <!-- 注册账号/忘记密码 -->
                <div>
                    <div><a href="javascript:;">注册账号</a></div>
                    <div><a href="javascript:;">忘记密码</a></div>
                </div>
                <!-- 表单底部 -->
                <div>
                    <div>
                        <img src="../../../public/img/user/left.png">
                    </div>
                    <div>
                        <p>其他登录方式</p>
                    </div>
                    <div>
                        <img src="../../../public/img/user/right.png">
                    </div>
                </div>
                <!-- 表单底部图片 -->
                <div>
                    <ul>
                        <li class="qq">
                            <div class="qqOne">
                                <img src="../../../public/img/user/third_login.png">
                            </div>
                            <div>
                                <img src="../../../public/img/user/third_login.png">
                            </div>
                        </li>
                        <li class="zfb">
                            <div class="zfbTwo">
                                <img src="../../../public/img/user/third_login.png">
                            </div>
                            <div>
                                <img src="../../../public/img/user/third_login.png">
                            </div>
                        </li>
                        <li class="wx">
                            <div class="wxThree">
                                <img src="../../../public/img/user/third_login.png">
                            </div>
                            <div>
                                <img src="../../../public/img/user/third_login.png">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){

    }    
}
</script>
<style>
*{margin: 0px;padding: 0px;}
#container{                                                                         /*整个容器的大小*/
    width: 100vw;height: 590px;
    background-color: #081638;
    margin: 40px 0 0 0;
}
#container>div{                                                                     /*cintainer的容器里面div的大小位置*/
    height: 590px;
    background:url(../../../public/img/user/login_default_bg.png) no-repeat;
    margin:0 0 0 12rem;
}
#container>div::before{
    content: "";
    display: table;
}
#container>div>div{                                                                 /*登录框容器的大小*/
    width: 380px;height: 530px;
    border: 1px solid #ffffff;
    background-color: #fff;
    margin: 30px 0 0 45rem;
}
#container>div>div>div>span:first-child{                                            /*'账号登录'的位置样式*/
    display: inline-block;
    width: 7.5rem;
    border-right: 2px solid #cccccc;
    font-size: 20px;
    margin: 2rem 0 0 4rem;
}
#container>div>div>div>span:last-child{                                            /*'扫码登录'的位置样式*/
    display: inline-block;
    width: 7.5rem;
    font-size: 20px;
    margin: 2rem 0 0 2rem;
}
#container>div>div>form>div:nth-child(1){                                           /*form表单里面第一个div大小位置*/
    width: 20rem;height: 35px;
    border-bottom:1px solid #ccc;
    margin: 3rem 0 0 20px;
}
#container>div>div>form>div:nth-child(1)>input,                                    /*input表的样式*/
#container>div>div>form>div:nth-child(2)>input{
    outline:none;
    border: 0px;
    margin-left: 10px;
}
#container>div>div>form>div:nth-child(2){                                          /*form表单里面第二个div大小位置*/
    width: 20rem;height: 35px;
    border-bottom:1px solid #ccc;
    margin: 1rem 0 0 20px;
}
#container>div>div>form>i{                                                         /*'短信验证登录'的样式*/
    font-size: 13px;
    color: #007DFF;
    margin: 20px 0 0 20px;
}
#container>div>div>form>i:hover{                                                   /*'短信验证登录'hover样式*/
    color:#0064CC;
}
#container>div>div>form>a{                                                          /*登录按钮*/
    display: block;
    width: 20rem;height: 3rem;
    /* border: 1px solid; */
    border-radius: 30px;
    background-color: #B40707;
    margin: 15px 0 0 25px;
    text-align: center;
    line-height: 40px;
    color: #fff;
}
#container>div>div>form>a:hover{                                                    /*登陆按钮hover样式*/
    background-color:#C70000;
}
#container>div>div>form>div:nth-child(5){                                           /*'记住华为账号'的样式*/
    margin: 25px 0 0 20px;
    font-size: 12px;
}
#container>div>div>form>div:nth-child(5) input{                                     /*'单选框样式'*/
    width: 15px;height: 15px;
    vertical-align: bottom;
}
#container>div>div>form>div:nth-child(5)>span{                                      /*'记住华为账号'左margin*/
    margin-left: 5px;
}
#container>div>div>form>div:nth-child(5)>a{                                         /*'更多'的样式*/
    display: inline-block;
    margin-left: 13rem;
    color: #007DFF;
}
#container>div>div>form>div:nth-child(5)>a:hover{                                   /*'更多'hover样式*/
    color: #0064CC;
}

#container>div>div>div:nth-child(3){                                                /*注册/忘记 容器大小弹性布局*/
    display: flex;
    width: 20rem;
    /* border: 1px solid; */
    font-size: 13px;
}
#container>div>div>div:nth-child(3) a{                                              /*注册/忘记 字体的颜色*/
    color:#007DFF;
}
#container>div>div>div:nth-child(3) a:hover{                                        /*注册/忘记 字体hover的颜色*/
    color: #0064CC;
}
#container>div>div>div:nth-child(3)>div:first-child{                                /*'注册'位置样式*/
    margin: 5px 0 0 7.8rem;
    padding-right: 8px;
    border-right: 1px solid #CCCCCC;
}
#container>div>div>div:nth-child(3)>div:last-child{                                 /*'忘记'位置样式*/
    margin-top: 5px;
    padding-left: 10px;
}



#container>div>div>div:nth-child(4){                                                /*'其他登录方式的容器'*/
    display: flex;
    margin: 5rem 0 0 0;
}
#container>div>div>div:nth-child(4)>div:nth-child(1){                               /*↑容器里面的第一图片的位置*/
    margin: 0 0 0 2rem;
}
#container>div>div>div:nth-child(4)>div:nth-child(2){                               /*↑容器里面的第二个容器的位置*/
    display: block;
    margin: 0.5rem 0 0 2rem;
}
#container>div>div>div:nth-child(4)>div:nth-child(2)>p{                             /*↑容器里面的p字体的样式*/
    font-size: 12px;
    color: #cccccc;
}
#container>div>div>div:nth-child(4)>div:nth-child(3){                               /*↑容器里面的第三图片的位置*/
    margin: 0 0 0 2rem;
}

#container>div>div>div:nth-child(5){                                                /*表单最下面容器的位置*/
    margin-left: 3rem;
}
#container>div>div>div:nth-child(5)>ul>li{                                          /*表单下面容器里面li的样式*/
    width: 50px;height: 50px;
    overflow: hidden;
    margin-left: 2rem;
}
#container>div>div>div:nth-child(5)>ul>li:nth-child(1)>div:nth-child(1)>img{        /*QQ黑图*/   
    margin: -6px 0 0 -65px;
}
#container>div>div>div:nth-child(5)>ul>li:nth-child(1)>div:nth-child(2)>img{        /*QQ彩图*/
    margin: -52px 0 0 -65px;

}
#container .qq:hover,                                                               /*鼠标移动到图片上鼠标变为小手*/
#container .zfb:hover,
#container .wx:hover{
    cursor: pointer;
}
#container .qq:hover>.qqOne{                                                         /*黑QQ>彩QQ*/
    display: none;
    
}

#container>div>div>div:nth-child(5)>ul>li:nth-child(2)>div:nth-child(1)>img{        /*支付宝黑图*/
    margin: -6px 0 0 -125px;
}
#container>div>div>div:nth-child(5)>ul>li:nth-child(2)>div:nth-child(2)>img{        /*支付宝彩图*/
    margin: -52px 0 0 -125px;
}
#container .zfb:hover>.zfbTwo{                                                      /*黑支付宝>彩支付宝*/
    display: none;
}

#container>div>div>div:nth-child(5)>ul>li:nth-child(3)>div:nth-child(1)>img{        /*黑微信*/
    margin: -6px 0 0 -5px;
}
#container>div>div>div:nth-child(5)>ul>li:nth-child(3)>div:nth-child(2)>img{        /*彩微信*/
    margin: -52px 0 0 -5px;
}
#container .wx:hover>.wxThree{                                                      /*黑微信>彩微信*/
    display: none;  
}
</style>
