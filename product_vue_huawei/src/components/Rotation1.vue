<template>
<div class="hw-Rotation1">
<div>
  <!-- 轮播图 -->
  <el-carousel :interval="5000" arrow="always" :height="height">
    <el-carousel-item v-for="item in list" :key="item.id">
      <h3><img :src="item.src" alt=""></h3>
    </el-carousel-item>
  </el-carousel>
</div>
  <!-- 圆形轮播图 -->
<div class="img">
  <img src="../../../public/rotation/bg-slide.png">
</div>
  <!-- 图外信息框 -->
<div class="msg">
  <div class="msg1">
  <ul>
    <li>
      <div class="msg-right">
        <div class="msg-img">
          <img v-if="!uid" src="../../../public/rotation/name.png" />
          <img v-if="uid" src="../../../public/rotation/dl.jpg" />
        </div>
        <div class="msg-msg">
        <div>
          <p v-if="!uid">您好! 请 <span @click="toViews" data-view="/login">登录</span> / <span @click="toViews" data-view="/reg">注册</span></p>
          <p v-if="uid">欢迎:{{uname}} <span @click="quit">注销</span></p>
        </div>
        <div class="msg-msg-msg">
          <div>
            <a href="">新人福利</a>
          </div>
          <div>
            <a href="">会员频道</a>
          </div>
        </div>
        </div>
      </div>
    </li>
    <li>
      <ul class="li-img">
        <li class="img-img0">
          <a href="">
            <div></div>
            <p>企业够特惠</p>
          </a>
        </li>
        <li class="img-img1">
          <a href="">
            <div></div>
            <p>以旧换新</p>
          </a>
        </li>
        <li class="img-img2">
          <a href="">
            <div></div>
            <p>会员领卷</p>
          </a>
        </li>
        <li class="img-img3">
          <a href="">
            <div></div>
            <p>新品优享购</p>
          </a>
        </li>
        <li class="img-img4">
          <a href="">
            <div></div>
            <p>荣耀数码</p>
          </a>
        </li>
        <li class="img-img5">
          <a href="">
            <div></div>
            <p>华为数码</p>
          </a>
        </li>
      </ul>
    </li>
    <li class="li-div">
      <!-- 上一排：公告 -->
      <div>
          <span><a href="javascript:;">公告</a></span>
          <span>
              <!-- ul>li -->
              <ul :class="{announce_go_top:is_announce_move}">
                  <li v-for="(item,i) of small_announce_list">
                      <a href="javascript:;">
                          {{item.title}}
                          <!-- {{small_announce_list[1].title}} -->
                      </a>
                  </li>
                  <!-- <li v-for="(item,i) of small_announce_list" :key="i">
                      <a href="javascript:;">{{item.title}}</a>
                  </li> -->
                  <!-- <li><a href="javascript:;">会员购机享多重优惠</a></li>
                  <li><a href="javascript:;">华为51活动公告</a></li>
                  <li><a href="javascript:;">5月购机抽奖公告</a></li>
                  <li><a href="javascript:;">nova系列购机享福利</a></li>
                  <li><a href="javascript:;">荣耀五一耀出游活动公告</a></li> -->
              </ul>
          </span>
      </div>
      <div>
        <ul>
          <li class="img-img6">
            <div></div>
            <p>优购码</p>
          </li>
          <li class="img-img7">
            <div></div>
            <p>实名认证</p>
          </li>
          <li class="img-img8">
            <div></div>
            <p>补购保障</p>
          </li>
        </ul>
      </div>
    </li>
  </ul>
  </div>
</div>
 <!-- 图内信息框 -->
<div class="message">
  <ul>
    <li>
      <div>
        <p>手机</p>
        <p><a href="">荣耀 </a><a href=""> HUAWEI P系列</a></p>
      </div>
      <div class="message1">
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀1</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀1</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/1.png" alt="">
              <span>荣耀</span>
            </a>
          </li>
        </ul>
        <ul>
          <div class="seeAll">
            <div>
              <div>
                <img src="../../../public/rotation/right.png">
              </div>
              <span>查看全部</span>
            </div>
          </div>
        </ul>
      </div>
    </li>
    <li>
      <div>
        <p>笔记本&amp;平板</p>
        <p><a href="">平板电脑 </a><a href=""> 笔记本电脑</a></p>
      </div>
      <div class="message2">
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/2.png" />
              <span>笔记本电脑</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/2.png" />
              <span>笔记本电脑</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/2.png" />
              <span>笔记本电脑</span>
            </a>
          </li>
          <li>
            <div class="seeAll">
            <div>
              <div>
                <img src="../../../public/rotation/right.png">
              </div>
              <span>查看全部</span>
            </div>
          </div>
          </li>
        </ul>
      </div>
    </li>
    <li>
      <div>
        <p>智能穿戴</p>
        <p><a href="">手环 </a><a href=""> 手表 VR</a></p>
      </div>
      <div class="message3">
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/3.png" />
              <span>手环</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/3.png" />
              <span>手环</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/3.png" />
              <span>手环</span>
            </a>
          </li>
          <li>
            <div class="seeAll">
            <div>
              <div>
                <img src="../../../public/rotation/right.png">
              </div>
              <span>查看全部</span>
            </div>
          </div>
          </li>
        </ul>
      </div>
    </li>
    <li>
      <div>
        <p>智能家居</p>
        <p><a href="">路由器 </a><a href=""> 电视盒子 </a><a href=""> 照明</a></p>
      </div>
      <div class="message4">
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/4.png" />
              <span>路由器</span>
            </a>
          </li>
          <li>
            <div class="seeAll">
            <div>
              <div>
                <img src="../../../public/rotation/right.png">
              </div>
              <span>查看全部</span>
            </div>
          </div>
          </li>
        </ul>
      </div>
    </li>
    <li>
      <div>
        <p>热销配件</p>
        <p><a href="">保护壳 </a><a href=""> 移动电源 </a><a href=""> 耳机</a></p>
      </div>
      <div class="message5">
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/5.png" />
              <span>保护壳</span>
            </a>
          </li>
          <li>
            <div class="seeAll">
            <div>
              <div>
                <img src="../../../public/rotation/right.png">
              </div>
              <span>查看全部</span>
            </div>
          </div>
          </li>
        </ul>
      </div>
    </li>
    <li>
      <div>
        <p>增值服务&amp;其它</p>
        <p><a href="">智能计算 </a><a href=""> 增值卡</a></p>
      </div>
      <div class="message6">
        <ul>
          <li>
            <a href="">
              <img src="../../img/shop/6.png" />
              <span>智能计算</span>
            </a>
          </li>
          <li>
            <a href="">
              <img src="../../img/shop/6.png" />
              <span>智能计算</span>
            </a>
          </li>
          <li>
            <div class="seeAll">
            <div>
              <div>
                <img src="../../../public/rotation/right.png">
              </div>
              <span>查看全部</span>
            </div>
          </div>
          </li>
        </ul>
      </div>
    </li>
  </ul>
</div>
</div>
</template>
<script>
export default {
    data() {
        return {
            list:[
            {src: require('../../../public/rotation/6.jpg')},
            {src: require('../../../public/rotation/1.jpg')},
            {src: require('../../../public/rotation/2.jpg')},
            {src: require('../../../public/rotation/3.jpg')},
            {src: require('../../../public/rotation/4.jpg')},
            {src: require('../../../public/rotation/5.jpg')},
        ],
        height:'550px',
        uid:'',
        uname:'',
        small_announce_list:[ /* 公告栏小轮播 */
                                {aid:0,title:"会员购机享多重优惠"},
                                {aid:1,title:"华为51活动公告"},
                                {aid:2,title:"5月购机抽奖公告"},
                                {aid:3,title:"nova系列购机享福利"},
                                {aid:4,title:"荣耀五一耀出游活动公告"}
                            ],
        // announce_id:0,
        is_announce_move:false
        }
    },
    mounted(){
            setInterval(this.announce_move,2000);//页面公告的显示
        },
    created(){
      this.getUid();
    },
    methods:{
      announce_move(){
                this.is_announce_move=true;
                var timer=setTimeout(()=>{
                    this.small_announce_list.push(this.small_announce_list[0]);//末尾追加
                    this.small_announce_list.shift();//删除第一个
                    this.is_announce_move=false;
                },500)
            },
      toViews(e){
        this.$router.push(e.target.dataset.view);
      },
      getUid(){
        this.axios.get("http://127.0.0.1:3000/getUid")
        .then(res=>{
          // console.log(res.data.uid);
          this.uid = res.data.uid;
          this.uname = res.data.uname;
          console.log(res.data.uname);
        })
      },
    quit(){
        this.axios.get("http://127.0.0.1:3000/quit")
        .then(res=>{
          history.go(0);
      })
    },
    },
}
</script>
<style>
/* 公告轮播图 */
.hw-Rotation1 .li-div>div:first-child{                                      /*公告框框*/
  height:50px;
  position: relative;
  overflow: hidden;
}
.hw-Rotation1 .li-div>div:first-child>span:first-child{                     /*'公告'文字的位置*/
  position: relative;
  top: 13px;
  left: -85px;
}
.hw-Rotation1 .li-div>div:first-child>span:first-child>a{                  /*'公告'文字样式*/ 
  font-size: 14px;
  font-weight: 700;
  color:#777777;
}
.hw-Rotation1 .li-div>div:first-child>span:nth-child(2){                    /*'公告内容'框大小位置样式*/
  display:block;
  position:relative;
  height: 45px;
}
.hw-Rotation1 .li-div>div:first-child>span:nth-child(2)>ul{                 /*'公告内容文字'位置*/
  display: block;
  position: absolute;
  top: -23px;
  left: 45px;
}
.hw-Rotation1 .li-div>div:first-child>span:nth-child(2)>ul.announce_go_top{
  transition: all 0.5s ease-in;
  margin-top: -30px;
}
.hw-Rotation1 .li-div>div:first-child>span:nth-child(2)>ul>li{
  height:30px;
  line-height:30px;
}
.hw-Rotation1 .li-div>div:first-child>span:nth-child(2)>ul>li>a{              /*公告内容文字的颜色*/
  color: #6f6f6f;
  font-size: 12px;
}
.hw-Rotation1 .li-div>div:first-child>span:nth-child(2)>ul>li>a:hover{        /*公告内容鼠标停留文字的颜色*/
  color:#D3454B;  
}
/*白色小框*/
 .li-img p{
   font-size:8px;
   color:#777777;
 }
 /* 奇怪图形 */
  div.img img{
    width: 98.9vw;
    margin:0 auto;
    position: absolute;
    top:615px;
    z-index: 100;
  }
  .img{
    /* width: 1000px; */
    
  }

  .msg{
    width: 1205px;
    margin:0 auto;
    position: relative;
    z-index: 100;
  }

  .msg1{
    width: 1205px;
    height: 100px;
    border-radius: 10px;
    margin:0 auto;
    background:#fff;
    position: absolute;
    top: -50px;
  }

  .msg1>ul>li:nth-child(2){
    margin-left:0px;
  }

  .msg img{
    width: 60px;
    margin-top: 10px;
    border-radius:50%; 
  }

  .msg-right{
    width: 270px;
    height:70px;
    border-right:1px solid #EEEEEE;
  }

  .msg-img,.msg-msg,.msg-msg-msg div{
    float:left;
    font-size: 12px;
  }
  .msg-msg{
    margin-left: 10px;
    color: #848484;
  }
  .msg-msg-msg div{
    display: block;
    width: 80px;
    height:25px;
    border-radius: 10px;
    margin-top: 5px;
  }
  .msg-msg>div>p>span:nth-child(1),.msg-msg>div>p>span:nth-child(2){
  /* 中间部分登录/注册字体样式 */
    color: #000;
  }
  .msg-msg>div>p>span:nth-child(1):hover,.msg-msg>div>p>span:nth-child(2):hover{
   /* 中间部分登录/注册字体hover样式 */
    color:#CB242B;
    cursor: pointer;
  }
  .msg-msg-msg div:nth-child(1){
    line-height:25px;
    border:1px solid #E47B7F;
  }
  .msg-msg-msg div:nth-child(1) a{
    color:#E47B7F;
  }
  .msg-msg-msg div:nth-child(2){
    line-height: 25px;
    background:#595454;
    margin-left: 10px;
  }
  .msg-msg-msg div:nth-child(2) a{
    color:#FDE4B3;
  }

  .img-img0 div{
    width: 45px;
    height:45px;
    margin-left: 15px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-size: 350px;
  }
  .img-img1 div{
    width: 45px;
    height:45px;
    margin-left: 15px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -50px;
    background-size: 350px;
  }
  .img-img2 div{
    width: 45px;
    height:45px;
    margin-left: 15px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -95px;
    background-size: 350px;
  }
  .img-img3 div{
    width: 45px;
    height:45px;
    margin-left: 15px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -140px;
    background-size: 350px;
  }
  .img-img4 div{
    width: 45px;
    height:45px;
    margin-left: 15px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -185px;
    background-size: 350px;
  }
  .img-img5 div{
    width: 45px;
    height:45px;
    margin-left: 15px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -235px;
    background-size: 350px;
  }
  .img-img6 div{
    width: 25px;
    height:20px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -275px;
    background-size: 350px;
    float:left;
  }
  .img-img7 div{
    width: 25px;
    height:20px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -300px;
    background-size: 350px;
    float:left;
  }
  .img-img8 div{
    width: 25px;
    height:20px;
    background: url(../../../public/rotation/li.png) no-repeat;
    background-position-x: -325px;
    background-size: 350px;
    float:left;
  }
  .li-div li{
    margin-left:23px;
  }
  .li-div p{
    font-size: 3px;
    float:left
  }
  .li-div>div:first-child{
    width:260px;
    height:40px;
    border-left: 1px solid #EEEEEE;
  }
  .li-div>div:nth-child(2){
    width:260px;
    height:40px;
    border-top:1px solid #EEEEEE;
    border-left: 1px solid #EEEEEE;
  }
  /* 轮播图 */
      /* 灰色底框限制高 */
      .hw-Rotation1 .el-carousel__item,.el-carousel__mask{
        /* height:80% !important; */
      }
  .hw-Rotation1 .el-carousel{                                     /*控制轮播图右边没有白框 下面没有滚动条*/
    width: 98.9vw;
  }
  .hw-Rotation1 .el-carousel__item{
    width: 100vw;
  }
  .hw-Rotation1 .el-carousel__item h3{
    /* width:100vw; */
    width: 100vw;
  }
  .hw-Rotation1 .el-carousel__item h3 img{
    margin-left:-230px;
    /* width: 100vw; */
  }
  
  .hw-Rotation1 .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .hw-Rotation1 .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }

  .hw-Rotation1>div:first-child{
    width: 98vw;
    /* margin:0 auto; */
  }
  /* 轮播按钮 */
  .hw-Rotation1 .el-carousel__arrow{
    width: 60px !important;
    height: 60px !important;
  }
  .hw-Rotation1 .el-carousel__arrow--left{
    left:25rem !important;
  }
  .hw-Rotation1 .el-carousel__arrow--right{
    right:10rem !important;
  }
  /* 轮播指示器 */
  .hw-Rotation1 .el-carousel__indicators{
    left: 80rem !important;
    top: 28rem;
  }
  .hw-Rotation1 .el-carousel__indicator{
    padding:12px 0 !important;
    margin-left:0.5rem !important;
  }
  .hw-Rotation1 .el-carousel__button{
    width:15px !important;
    height:15px !important;
    border-radius:50%;
    border:1px solid #fff !important;
  }
  
  /* Message图内信息框 */
  .message{
    width: 210px;
    height: 450px;
    border-radius: 10px;
    background:#FFFDFD;
    position: absolute;
    top: 8rem;
    left:10.5rem;
    z-index: 100;
  }

  .message>ul>li{
    width: 200px;
    height: 73px;
    margin-left: 0px;
  }
  .message li li{
    float:none;
    margin:1.5rem;
  }
  div.message li div:nth-child(2){
    border-radius:10px;
    background-color:#fff;
    position:absolute;
    top:0;
    left:12rem;
    display:none;
    height:28.1rem; 
  }
  
  div.message .message1{
    width:43rem;
  }
  .message1 a,.message2 a,.message3 a,.message4 a,.message5 a,.message6 a{
   display:block;
   display:flex;
   width:12rem;
   height:5rem;
   margin-top:1rem;
   border-radius:10px;
  }
  .message1 a:hover,.message2 a:hover,.message3 a:hover,
  .message4 a:hover,.message5 a:hover,.message6 a:hover{                            /*轮播图容器里面白色框里面小框的hover背景颜色*/
    background:#F6F6F6;
  }
  .message img{
    width:56px;
    height:56px;
    margin:10px 0 0 5px;
  }
  .message span{
    margin:1.5rem 0 0 0;
    color:#777;
    font-size:13px;
  }
  div.message .message1 ul,div.message .message2 ul,
  div.message .message3 ul,div.message .message4 ul,
  div.message .message5 ul,div.message .message6 ul{
    float: left;
  } 
  
  div.message .message2{
    width:15rem;
  }
  div.message .message3{
    width:15rem;
  }
  div.message .message4{
    width:60rem;
  }
  div.message .message5{
    width:60rem;
  }
  div.message .message6{
    width:15rem;
  }
  .message>ul>li:nth-child(1):hover div.message1,.message>ul>li:nth-child(2):hover div.message2,
  .message>ul>li:nth-child(3):hover div.message3,.message>ul>li:nth-child(4):hover div.message4,
  .message>ul>li:nth-child(5):hover div.message5,.message>ul>li:nth-child(6):hover div.message6{
    background:#fff;
    display:block;
  }
  .message>ul>li:nth-child(1):hover div.message2{
    background:#fff;
    display:block;
  }
  .message>ul>li:nth-child(1):hover div.message3{
    background:#fff;
    display:block;
  }
  .message>ul>li:nth-child(1):hover div.message4{
    background:#fff;
    display:block;
  }
  .message>ul>li:nth-child(1):hover div.message5{
    background:#fff;
    display:block;
  }
  .message>ul>li:nth-child(1):hover div.message6{
    background:#fff;
    display:block;
  }
  

  .message>ul>li>div{
    width: 160px;
    height: 73px;
    border-bottom:1px solid #EEEEEE;
    margin:0 auto;
  }

  .message>ul>li>div>p{
    text-align: left;
    color:#848484;
  }
  .message>ul>li>div>p:hover{
    color:#D3454B;
  }
  .message>ul>li>div p:first-child{
    font-size: 16px !important;
    line-height: 40px;
  }
  .message>ul>li>div p:last-child{
    font-size: 12px;
    line-height: 1px;
    
  }
  .message>ul>li>div p a{
    font-size:12px;
    color:#A6A6B7;
  }
  .message>ul>li>div p a:hover{
    color:#D3454B;
  }
  .message>ul>li:last-child>div{
    border-bottom:0px;
  }

  .hw-Rotation1 .seeAll{                                      /*查看全部最外层容器的样式*/
    width: 190px;height: 80px;
    /* border: 1px solid; */
    margin-top: 22px;
    border-radius: 10px;
  }
  .hw-Rotation1 .seeAll::before{
    content: "";
    display: table;
  }
  .hw-Rotation1 .seeAll>div{
    width: 120px;height: 40px;
    border: 1px solid #F2F2F2;
    margin: 18px 0 0 10px;
    border-radius: 70px;
    display: flex;
  }
  .hw-Rotation1 .seeAll>div>span{
    margin: 5px 0 0 5px;
  }
  .hw-Rotation1 .seeAll>div>div{
    width: 40px;height: 40px;
    border: 1px solid #F2F2F2;
    border-radius: 20px;
    margin: 0 0 0 0;
  }
  .hw-Rotation1 .seeAll img{
    width: 15px;height: 15px;
    margin: 12px 0 0 0;
  }
</style>
