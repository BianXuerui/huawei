<template>
  <div id="userHeader">
    <div>
      <div>
        <img src="../../../public/img/user/HUAWEI.png">
      </div>
      <div>
        <h3>华为商城</h3>
      </div>
    </div>
    <div>
        <span>依据《网络安全法》，为保障您的帐号安全与正常使用，请尽快绑定您的手机号，感谢您的理解及支持！</span>
    </div>
  </div>
</template>
<script>
export default {};
</script>
<style>
* {
  margin: 0;
  padding: 0;
}
#userHeader {                                                   /*最上面div的背景颜色及大小*/
  width: 100vw;
  height: 70px;
  background-color: #ebebeb;
}
#userHeader::before{                                            /*在div的最上面加个空table*/
    content: "";
    display: table;
}
#userHeader>div:nth-child(1){                                                /*里面的整个大容器的位置及弹性布局*/
  display: flex;
  margin: 15px 0 0 250px;
}
#userHeader>div>div:nth-child(1) {                              /*里面大容器里面的第一个小容器的大小样式*/
  width: 160px;
  height: 35px;
  border-right: 2px solid #cccccc;
}
#userHeader>div>div:nth-child(2) {                              /*里面大容器里面的第二个小容器的大小样式*/
  margin: 5px 0 0 20px;
}
#userHeader>div>div:nth-child(2)>h3{                            /*里面大容器里面的第二个小容器的h3的字体样式*/
    font-weight: 400;
}

#userHeader>div:nth-child(2){
    width: 100vw;height: 40px;
    background-color: #FFFBE4;
    margin:20px 0 0 0;
    text-align: center;
}
#userHeader>div:nth-child(2)>span{
    line-height: 40px;
    font-size: 12px;
    color: #989898;
}
</style>

