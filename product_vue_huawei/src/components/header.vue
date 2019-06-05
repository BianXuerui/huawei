<template>
  <div class="hw-header">
    <div class="layout">
    <div class="s-sub">
      <ul>
        <li><a href="javascript:;">首页</a></li>
        <li><a href="javascript:;">华为官网</a></li>
        <li><a href="javascript:;">荣耀俱乐部</a></li>
        <li><a href="javascript:;">花粉俱乐部</a></li>
        <li><a href="javascript:;">V码(优购码)</a></li>
        <li><a href="javascript:;">企业购</a></li>
        <li><a href="javascript:;">Select Regin</a></li>
        <li class="nav_down_outer_li" @mouseenter="my_arrow_func_enter(0)" @mouseleave="my_arrow_func_leave(0)">
          <a href="javascript:;">更多精彩</a>
          <ul class="nav_down_ul nav_down_ul0">
              <li><a href="javascript:;">EMUI</a></li>
              <li><a href="javascript:;">应用市场</a></li>
              <li><a href="javascript:;">华为终端云空间</a></li>
              <li><a href="javascript:;">开发者联盟</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="s-main">
        <ul>
        <li v-if="!uid"><a href="javascript:;" @click="toViews" data-view="/login">请登录</a></li>
        <li v-if="uid"><a href="javascript:;" >欢迎用户:{{uname}}</a></li>
        <li v-if="uid"><a href="javascript:;" @click="quit">注销</a></li>
        <li v-if="!uid"><a href="javascript:;"  @click="toViews" data-view="/reg">注册</a></li>
        <li><a href="javascript:;">我的订单</a></li>
        <li><a href="javascript:;">客户服务</a></li>
        <li><a href="javascript:;">网站导航</a></li>
        <li><a href="javascript:;">手机版</a></li>
        <li>
          <table></table>
          <a href="">
            <img src="../../public/header/gwc.png">
            购物车
            </a>
          </li>
      </ul>
    </div>
    </div>  
  </div>  
</template>
<script>
export default {
  data() {
    return {
      uid: '',
      uname:'',
    }
  },
  created(){
    this.getUid();
  },
  methods:{
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
    toViews(e){
      this.$router.push(e.target.dataset.view);
    }
  },
  
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}

ul{ 
  list-style:none;
}

ul li{ float:left}

.hw-header>.layout{
  height: 1.8rem;
}

.hw-header>.layout>.s-sub>ul>li a:hover,                             /*导航栏所有a的hover样式*/
.hw-header>.layout>.s-main>ul>li a:hover{
  color:#CF0A2C;
}

.hw-header>.layout>.s-sub>ul>.nav_down_outer_li:hover>a,            /*鼠标停留li容器和ul列表背景颜色变为白色*/
.hw-header>.layout>.s-sub>ul>.nav_down_outer_li:hover>ul{
  background-color: #fff;
}
.hw-header>.layout>.s-sub>ul>.nav_down_outer_li{                    /*指明灯*/
  position: relative;
  z-index: 20;
}
.hw-header>.layout>.s-sub>ul>.nav_down_outer_li>ul{                 /*鼠标停留显示ul列表的样式*/
  display: none;
  position: absolute;
  top: 22px;
  left: -55px;
  z-index: 20;
  width: 120px;
  border-radius: 0 0 10px 10px;
}
.hw-header>.layout>.s-sub>ul>.nav_down_outer_li>ul>li{              /*停留显示ul列表里面li的样式*/
  width: 7rem;         
  text-align: center;
  margin-top: 10px;
}
.hw-header>.layout>.s-sub>ul>.nav_down_outer_li>ul>li>a:hover{      /*停留显示ul列表里面hover a的字体的颜色*/
  color:#CF0A2C;
}
.hw-header>.layout>.s-sub>ul>.nav_down_outer_li:hover>ul{           /*hover让ul列表显示*/
  display: block;
}

.hw-header>.layout>.s-sub::after{                      /*清除li的浮动*/
  clear:both;
  display: block;
  content: "";
}

.hw-header>.layout{                                   /*顶部导航栏的背景颜色宽度*/
  width: 100%;
  background-color:#F9F9F9;
}

.hw-header>.layout>.s-sub,
.hw-header>.layout>.s-main{                            /*左侧导航栏距左边的margin,左右两个div变为行内块元素*/
  margin-left: 10rem;
  display: inline-block;
}

.hw-header>.layout>.s-sub>ul>li::after,
.hw-header>.layout>.s-main>ul>li::after{               /*每个li后面加上 | 和 padding*/
  content: "|";
  color:#D3D3D3;
  position: relative;
  left:9px; 
  top: 0px;
}
.hw-header>.layout>.s-sub>ul>li:last-child::after{        /*左边列表 最后一个li的content内容清空*/
  content: "";
}
.hw-header>.layout>.s-sub>ul>li:last-child>a::after{      /*左边列表 最后一个li的content加上∨*/
  content: "∨";
}
.hw-header>.layout>.s-main>ul>li:nth-child(1)::after,
.hw-header>.layout>.s-main>ul>li:last-child::after,
.hw-header>.layout>.s-main>ul>li:nth-child(6)::after{     /*右边列表 第一个和最后一个li清除content*/
  content: "";
}
.hw-header>.layout>.s-main>ul>li:nth-child(4) a::after,   /*第四个第五个第六个li更换content*/
.hw-header>.layout>.s-main>ul>li:nth-child(5) a::after,
.hw-header>.layout>.s-main>ul>li:nth-child(6) a::after{
  content: "∨";
}
.hw-header>.layout>.s-main>ul>li:nth-child(7) img{
  vertical-align: middle;
}
.hw-header>.layout>.s-main>ul>li:last-child{
  background-color: #F2F2F2;
}

.hw-header>.layout>.s-sub a,
.hw-header>.layout>.s-main a{
  font-size: 12px;
  color: #A4A4A4;
}

.hw-header>.layout>.s-sub li,
.hw-header>.layout>.s-main li{                          /*每个li左右的padding距离*/                  
  padding: 0 8px;
}


</style>
