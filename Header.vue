<template>
  <div class="hw-header">
    <div class="layout">
    <div class="s-sub">
      <ul>
        <li><a href="">首页</a></li>
        <li><a href="">华为官网</a></li>
        <li><a href="">荣耀俱乐部</a></li>
        <li><a href="">花粉俱乐部</a></li>
        <li><a href="">V码(优购码)</a></li>
        <li><a href="">企业购</a></li>
        <li><a href="">Select Regin</a></li>
        <li><a href="">更多精彩</a></li>
      </ul>
    </div>
    <div class="s-main">
        <ul>
        <li><a href="">请登录</a></li>
        <li><a href="">注册</a></li>
        <li><a href="">我的订单</a></li>
        <li><a href="">客户服务</a></li>
        <li><a href="">网站导航</a></li>
        <li><a href="">手机版</a></li>
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
    return {}
  }
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
.hw-header>.layout>.s-sub>ul>li:last-child a::after{      /*左边列表 最后一个li的content加上∨*/
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
