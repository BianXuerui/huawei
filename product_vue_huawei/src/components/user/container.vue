<template>
  <div id="container">
    <div>
      <div>
        <div>
          <a href="javascript:;" @click="swtichUser" :class="zCode==1?'active':''">账号登录</a>
          <a href="javascript:;" @click="swtichCode" :class="eCode==1?'active':''">扫码登录</a>
        </div>
        <!-- 表单 -->
        <div class="d1" v-show="zCode==1">
          <div class="form">
            <div>
              <input type="text" v-model="uname" placeholder="手机号/邮件地址/华为号">
            </div>
            <div>
              <input type="password" v-model="upwd" placeholder="密码" @keyup="handleEnter($event)">
            </div>
            <i class="el-icon-mobile-phone">短信验证密码</i>
            <a @click="login">登录</a>
            <div class="cb">
              <input type="checkbox">
              <span>记住华为账号</span>
              <a href="javascript:;">更多</a>
            </div>
          </div>
          <!-- 注册账号/忘记密码 -->
          <div class="reg">
            <div>
              <a href="javascript:;">注册账号</a>
            </div>
            <div>
              <a href="javascript:;">忘记密码</a>
            </div>
          </div>
          <!-- 表单底部 -->
          <div class="footer">
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
          <div class="footerImg">
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
        <!-- 二维码 -->
        <div class="ewm" v-show="eCode==1">
            <div>
            <div>
                <img @mouseenter="access" @mouseleave="leave" :style="imgStyle1" src="../../../public/img/user/ewm.png">
            </div>
            <div>
                <img :style="imgStyle2" src="../../../public/img/user/qrCode-help.png">
            </div>
            </div>
            <p>使用<a href="javascript:;">华为移动服务APP</a>扫一扫</p>
            <p>若您使用华为手机，请进入“设置”>“华为帐号”扫码登录。</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
      return {
          uname:"",
          upwd:"",
          imgStyle1:{
              "margin-left":0
          },
          imgStyle2:{
              opacity:0,
          },
          zCode:1,
          eCode:0,
      }
  },
  methods:{
      login(){
        this.axios.post("http://127.0.0.1:3000/login",`uname=${this.uname}&upwd=${this.upwd}`)
        .then(res=>{
          console.log(res.data.code);
          if(res.data.code == 200){
            var uid = res.data.uid;
            console.log(uid);
            this.$router.push("/");
          }else{
            alert(res.data.msg);
          }
        })
      },
      handleEnter(e){
        if(e.keyCode == 13){
          this.login();
        }
      },
      swtichUser(){
          this.zCode = 1;
          this.eCode = 0;
      },
      swtichCode(){
          this.zCode = 0;
          this.eCode = 1;
      },
      access(){
          this.imgStyle1["margin-left"] = "-5rem";
          setTimeout(()=>{
              this.imgStyle2.opacity = 1;
          },200);
      },
      leave(){
          this.imgStyle1["margin-left"] = 0;
        
          this.imgStyle2.opacity = 0;
      }
  }
};
</script>
<style>
* {
  margin: 0px;
  padding: 0px;
}
#container {
  /*整个容器的大小*/
  width: 100vw;
  height: 590px;
  background-color: #081638;
  margin: 40px 0 0 0;
}
#container > div {
  /*cintainer的容器里面div的大小位置*/
  height: 590px;
  background: url(../../../public/img/user/login_default_bg.png) no-repeat;
  margin: 0 0 0 12rem;
}
#container > div::before {
  content: "";
  display: table;
}
#container > div > div {
  /*登录框容器的大小*/
  width: 380px;
  height: 530px;
  border: 1px solid #ffffff;
  background-color: #fff;
  margin: 30px 0 0 45rem;
}
#container > div > div:nth-child(1) > div > a:first-child {
  /*'账号登录'的位置样式*/
  display: inline-block;
  color: #000;
  width: 7.5rem;
  border-right: 2px solid #cccccc;
  font-size: 20px;
  margin: 2rem 0 0 4rem;
}
#container > div > div:nth-child(1) > div > a:last-child {
  /*'扫码登录'的位置样式*/
  display: inline-block;
  color: #000;
  width: 7.5rem;
  font-size: 20px;
  margin: 2rem 0 0 2rem;
}
#container .d1{
    /* display: none; */
}
#container .d1 > .form {
  /*div表单里面第一个div大小位置*/
  width: 20rem;
  height: 35px;
  border-bottom: 1px solid #ccc;
  margin: 3rem 0 0 20px;
}
#container .d1>.form>div:nth-child(1)>input,                                        /*input表的样式*/
#container .d1>.form>div:nth-child(2)>input {
  outline: none;
  border: 0px;
  margin-left: 10px;
}
#container .d1 > .form > div:nth-child(1) {
  /*div表单里面第二个input外div大小位置*/
  width: 20rem;
  height: 35px;
  border-bottom: 1px solid #ccc;
  margin: 1rem 0 0 0px;
}
#container .d1 > .form > div:nth-child(2) {
  /*div表单里面第二个input外div大小位置*/
  width: 20rem;
  height: 35px;
  border-bottom: 1px solid #ccc;
  margin: 1rem 0 0 0px;
}
#container .d1 > .form > i {
  /*'短信验证登录'的样式*/
  font-size: 13px;
  color: #007dff;
  margin: 20px 0 0 0;
}
#container .d1 > .form > i:hover {
  /*'短信验证登录'hover样式*/
  color: #0064cc;
}
#container .d1 > .form > a {
  /*登录按钮*/
  display: block;
  width: 20rem;
  height: 3rem;
  /* border: 1px solid; */
  border-radius: 30px;
  background-color: #b40707;
  margin: 15px 0 0 0px;
  text-align: center;
  line-height: 40px;
  color: #fff;
}
#container .d1 > .form > a:hover {
  /*登陆按钮hover样式*/
  background-color: #c70000;
}
#container .d1 > .form > .cb {
  /*'记住华为账号'的样式*/
  margin: 25px 0 0 0px;
  font-size: 12px;
}
#container .d1 > .form > .cb > input {
  /*'单选框样式'*/
  width: 15px;
  height: 15px;
  vertical-align: bottom;
}
#container .d1 > .form > .cb > span {
  /*'记住华为账号'左margin*/
  margin-left: 5px;
}
#container .d1 > .form > .cb > a {
  /*'更多'的样式*/
  display: inline-block;
  margin-left: 12rem;
  color: #007dff;
}
#container .d1 > .form > .cb > a:hover {
  /*'更多'hover样式*/
  color: #0064cc;
}

#container .d1 > .reg {
  /*注册/忘记 容器大小弹性布局*/
  display: flex;
  width: 20rem;
  /* border: 1px solid; */
  font-size: 13px;
  margin-top: 12.5rem;
}
#container .d1 > .reg > div > a {
  /*注册/忘记 字体的颜色*/
  color: #007dff;
}
#container .d1 > .reg > div > a:hover {
  /*注册/忘记 字体hover的颜色*/
  color: #0064cc;
}
#container .d1 > .reg > :nth-child(1) {
  /*'注册'位置样式*/
  margin: 5px 0 0 7.8rem;
  padding-right: 8px;
  border-right: 1px solid #cccccc;
}
#container .d1 > .reg > :nth-child(2) {
  /*'忘记'位置样式*/
  margin-top: 5px;
  padding-left: 10px;
}

#container .d1 > .footer {
  /*'其他登录方式的容器'*/
  display: flex;
  margin: 5rem 0 0 0;
}
#container .d1 > .footer > div:nth-child(1) {
  /*↑容器里面的第一图片的位置*/
  margin: 0 0 0 2rem;
}
#container .d1 > .footer > div:nth-child(2) {
  /*↑容器里面的第二个容器的位置*/
  display: block;
  margin: 0.5rem 0 0 2rem;
}
#container .d1 > .footer > div:nth-child(2) > p {
  /*↑容器里面的p字体的样式*/
  font-size: 12px;
  color: #cccccc;
}
#container .d1 > .footer > div:nth-child(3) {
  /*↑容器里面的第三图片的位置*/
  margin: 0 0 0 2rem;
}

#container .d1 > .footerImg {
  /*表单最下面容器的位置*/
  margin-left: 3rem;
}
#container .d1 > .footerImg > ul > li {
  /*表单下面容器里面li的样式*/
  width: 50px;
  height: 50px;
  overflow: hidden;
  margin-left: 2rem;
}
#container .d1 > .footerImg > ul > li:nth-child(1) > div:nth-child(1) > img {
  /*QQ黑图*/
  margin: -6px 0 0 -65px;
}
#container .d1 > .footerImg > ul > li:nth-child(1) > div:nth-child(2) > img {
  /*QQ彩图*/
  margin: -52px 0 0 -65px;
}
#container .qq:hover,                                                               /*鼠标移动到图片上鼠标变为小手*/
#container .zfb:hover,
#container .wx:hover {
  cursor: pointer;
}
#container .qq:hover > .qqOne {
  /*黑QQ>彩QQ*/
  display: none;
}

#container .d1 > .footerImg > ul > li:nth-child(2) > div:nth-child(1) > img {
  /*支付宝黑图*/
  margin: -6px 0 0 -125px;
}
#container .d1 > .footerImg > ul > li:nth-child(2) > div:nth-child(2) > img {
  /*支付宝彩图*/
  margin: -52px 0 0 -125px;
}
#container .zfb:hover > .zfbTwo {
  /*黑支付宝>彩支付宝*/
  display: none;
}

#container .d1 > .footerImg > ul > li:nth-child(3) > div:nth-child(1) > img {
  /*黑微信*/
  margin: -6px 0 0 -5px;
}
#container .d1 > .footerImg > ul > li:nth-child(3) > div:nth-child(2) > img {
  /*彩微信*/
  margin: -52px 0 0 -5px;
}
#container .wx:hover > .wxThree {
  /*黑微信>彩微信*/
  display: none;
}

#container .ewm>div{
    /* 二维码页面让二维码和手机弹性布局 */
    display: flex;
}
#container .ewm>div>div:nth-child(1){
    /* 二维码图片的位置 */
    margin: 6rem 0 0 7rem;
}
#container .ewm>div>div:nth-child(1)>img{
    /* 二维码图片的大小 */
    width: 150px;height: 150px;
}
#container .ewm>div>div:nth-child(1)>img{
    /* 二维码移动的动画效果 */
   transition: all .3s linear;
}
#container .ewm>div>div:nth-child(2){
    
}
#container .ewm>div>div:nth-child(2)>img{
    /* 手机的位置 */
    position: absolute;
    top: 261px;
    left: 69.5rem;
    /* display: none; */
    transition: all .3s linear;
}
#container .ewm>p{
    /* 二维码下面p字体的样式 */
    font-size: 13px;
    text-align: center;
}
#container .ewm>p:nth-child(2){
    /* 二维码下面第一个p标签的上边距 */
    margin-top: 3rem;
}
#container .ewm>p:nth-child(3){
    /* 二维码下面第二个p标签的行高 */
    line-height: 25px;
}
#container>div>div>div>.active{
    /* '账号登录','扫码登录'的选中效果 */
    color: #B40707 !important;
}
</style>
