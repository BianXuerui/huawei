<template>
  <div class="hw-Rotation">
    <div>
      <!-- 左侧div -->
      <div>
        <img src="../../../public/logo.png">
      </div>
      <!-- 中间div -->
      <div>
        <ul class="list">
          <li>
            <div>
              <a href>华为专区</a>
            </div>
          </li>
          <li>
            <div>
              <a href>荣耀专区</a>
            </div>
          </li>
          <li>
            <a href>Mate 20系列</a>
          </li>
          <li>
            <a href>荣耀10</a>
          </li>
          <li>
            <a href>华为P30</a>
          </li>
          <li>
            <a href>荣耀V20</a>
          </li>
        </ul>
      </div>
      <!-- 右侧div -->
      <div>
        <input @focus="my_search_focus" @blur="my_search_blur" type="text">
        <a href="javascript:;"><img src="../../../public/rotation/ss.png" alt=""></a>
        <span :class="{my_over_show:is_search_focus}"><a href="javascript:;">HUAWEI&nbsp;P30</a></span>
        <span :class="{my_over_show:is_search_focus}"><a href="javascript:;">荣耀20i</a></span>
      </div>
    </div>
    </div>
    </template>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      is_search_focus:true
    }
  },
  methods:{
    my_search_focus(){
        this.is_search_focus=false;
    },
    my_search_blur(){
        this.is_search_focus=true;
    }
  }
}
</script>




<style scope>
* {
  margin: 0;
  padding: 0;
}

a {
  text-decoration: none;
}

.hw-Rotation>div {                                    /*让三个div分开显示*/
  display: flex;
  padding: 20px 0 20px 0;
  /* justify-content: space-around */
}
.hw-Rotation>div>div:first-child{                     /*三个div靠左边的margin的距离*/
  margin-left: 10rem; 
}
.hw-Rotation>div>div:nth-child(3){
  margin-left:7rem; 
}

.hw-Rotation img {                                    /*左侧图片的大小*/
  width: 210px;
}

ul {                                                  /*中间div ul的样式*/
  list-style: none;
  margin-top: 0.5rem;
}

ul li {                                               /*中间div li的样式*/
  float: left;
  line-height: 1.7rem;
  margin-left: 2rem;
  text-align: center;
  font-size: 14px;
}

ul li a {                                             /*中间div li a的样式*/
  color: #000;
}

.hw-Rotation .list div {                              /*中间div 左侧两个跑到框的样式*/
  width: 70px;
  height: 25px;
  border-radius: 11px;
}

.hw-Rotation .list div a {                            /*中间div 左侧两个跑到框文字的颜色*/
  color: #fff;
}

.hw-Rotation .list > :nth-child(1) div {              /*第一个跑道框的背景颜色*/
  background: #ff8486;
}
.hw-Rotation .list > :nth-child(2) div {              /*第二个跑道框的背景颜色*/
  background: #74c7ff;
}

.hw-Rotation>div>div:nth-child(3) img{                /*input表单后面搜索图片的大小*/
  width: 20px;
  margin-top: 2px;
  vertical-align: bottom;
}
.hw-Rotation>div>div:nth-child(3){                    /*input外面的div框 采用跑道形状 做一个视觉欺骗*/
  width:18rem;
  height:25px;
  margin-top: 7px;
  /* border: 1px solid green; */
  border-radius: 10rem;
  background-color:#F0F0F0;
}
.hw-Rotation>div>div:nth-child(3)>input{
  background-color: transparent;
  outline:none;                                       /* 去除input框的默认样式 1/2 */
  border:0px;                                         /* 去除input框的默认样式 2/2 */
  /* border:1px solid red; */
  width:90%;
  height:20px;
  margin-left:6px;
  /* border-radius: 10rem; */
  /* padding-top:8px; */
  /* position:relative; */
  /* z-index:-100; */
}
.hw-Rotation>div>div:nth-child(3)>span{
  /* border:1px solid red; */
  position:absolute;
  top:70px;
  /* left:0px; */
  /* display:none; */
}
.hw-Rotation>div>div:nth-child(3)>span.my_over_show{
  display:inline-block;
}
.hw-Rotation>div>div:nth-child(3)>span:nth-child(3){    /*input框上的文字的位置*/
  left: 73rem;
  top:3.5rem;
}
.hw-Rotation>div>div:nth-child(3)>span:nth-child(4){
  left: 78.5rem;
  top:3.5rem;
}
.hw-Rotation>div>div:nth-child(3) span a{
  font-size: 12px;
  color: #CF0A2C;
}
.el-carousel__item h3 {
    color: #475669;
    font-size: 38px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
</style>
