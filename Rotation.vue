<template>
  <div class="hw-Rotation">
    <div>
      <div>
        <img src="../../../public/logo.png">
      </div>
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
      <div>
        <input type="text">
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
    return {};
  }
};
</script>




<style scope>
* {
  margin: 0;
  padding: 0;
}

a {
  text-decoration: none;
}

.hw-Rotation>div {
  display: flex;
  padding: 20px 0 20px 0;
  justify-content: space-around
}

.hw-Rotation img {
  width: 210px;
}

ul {
  list-style: none;
  margin-top: 0.5rem;
}

ul li {
  float: left;
  line-height: 1.7rem;
  margin-left: 2rem;
  text-align: center;
  font-size: 14px;
}

ul li a {
  color: #000;
}

.hw-Rotation .list div {
  width: 70px;
  height: 25px;
  border-radius: 11px;
}

.hw-Rotation .list div a {
  color: #fff;
}

.hw-Rotation .list > :nth-child(1) div {
  background: #ff8486;
}
.hw-Rotation .list > :nth-child(2) div {
  background: #74c7ff;
}

div.input::before {
  content: "";
  display: table;
}
div.input img {
  width: 20px;
  margin-top: 5px;
}

.el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
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
