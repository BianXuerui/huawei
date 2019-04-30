<template>
  <div class="hw-header">
    <div>
      <el-breadcrumb separator="|">
        <el-breadcrumb-item :to="{ path: '/' }"><a href="">首页</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">华为官网</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">荣耀俱乐部</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">花粉俱乐部</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">V码(优购码)</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">企业码</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">Select Region</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">更多精彩</a></el-breadcrumb-item>
        <div class="gdjc">
          <ul>
            <li><a href="">EMUI</a></li>
            <li><a href="">应用市场</a></li>
            <li><a href="">华为终端云空间</a></li>
            <li><a href="">开发者联盟</a></li>
          </ul>
        </div>
      </el-breadcrumb>
    </div>
    <div>
      <el-breadcrumb separator="|">
        <el-breadcrumb-item :to="{ path: '/' }"><a href="">请登录</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">注册</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">我的订单</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">客户服务</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">网站导航</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">手机版</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="">购物车</a></el-breadcrumb-item>
      </el-breadcrumb>
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
.el-breadcrumb__item a{
  color:#ACACAC;
  font-weight: 400;
}
div.hw-header a:hover{
  color: #CB242B;                                                     /*所有a:hover的颜色*/
}
div.el-breadcrumb>.el-breadcrumb__item:nth-child(8) /deep/ .el-breadcrumb__separator{
  display: none;
  margin: 0;
}
div.el-breadcrumb>.el-breadcrumb__item:nth-child(8){
  background: url(../img/down.jpg) no-repeat;
  background-position: 2.8rem 1.2rem;
  padding-right: 7rem;
}
div.el-breadcrumb>.el-breadcrumb__item:nth-child(8):hover{              /*头部第八个元素鼠标停留底色变白色*/
  /* background: #fff; */
  background: url(../img/up.png) no-repeat;
  background-position: 2.8rem 1.2rem;
  padding-right: 7rem;
}
.el-breadcrumb__item{
    line-height: 3rem;
    font-size: 12px;
}
div.hw-header {
  display: flex;
  justify-content: space-around;
  background: #f9f9f9;
  
}
div.hw-header .el-breadcrumb:last-child:hover>div.gdjc{                             /*鼠标停留事件*/
  background: #fff;
  display: block;
}

div.gdjc{
  width: 7rem;
  height: 8rem;
  border-radius: 10px;
  background-color: #fff;
  display: none;
  position: absolute;
  top:3rem;
  left: 37.7rem;
  z-index: 100;
  box-shadow: 0px 10px 10px 1px rgb(165, 164, 164);
}
div.gdjc ul{
  list-style: none;
}
div.gdjc ul li{
  float: none;
}
div.gdjc ul li a{
  font-size: 12px;
}
</style>
