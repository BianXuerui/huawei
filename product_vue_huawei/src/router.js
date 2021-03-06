import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import Header from './components/Header.vue'
import Rotation from './components/header/Rotation.vue'
import Rotation1 from './components/header/Rotation1.vue'
import firstFloor from './components/container/firstFloor.vue'
import secondFloor from './components/container/secondFloor.vue'
import thirdFloor from './components/container/thirdFloor.vue'
import fourthFloor from './components/container/fourthFloor'
import fifthFloor from './components/container/fifthFloor'
import sixthFloor from './components/container/sixthFloor'
import sixth1Floor from './components/container/sixthFloor'
import seventhFloor from './components/container/seventhFloor'
import eighthFloor from './components/container/eighthFloor'
import ninthFloor from './components/container/ninthFloor'
import tenthFloor from './components/container/tenthFloor'
import eleventhFloor from './components/container/eleventhFloor'
import footer from './components/container/footer'
// 用户登录页面
import login from './views/login'
import reg from './views/register'
import userHeader from './components/user/userHeader'
import userContainer from './components/user/container'
import userFooter from './components/user/userFooter'
// 商品详情
import details from './components/Header'
import detailIndex from './components/details/detailIndex'

Vue.use(Router)

export default new Router({
  routes: [
    // 商品详情
    {path:'/details',component:details},
    {path:'/detailIndex',component:detailIndex},
    // 用户页
    {path:'/userFooter',component:userFooter},
    {path:'/userContainer',component:userContainer},
    {path:'/userHeader',component:userHeader},
    {path:'/reg',component:reg},
    {path:'/login',component:login},
    // index页
    {path:'/footer',component:footer},
    {path:'/eleventhFloor',component:eleventhFloor},
    {path:'/tenthFloor',component:tenthFloor},
    {path:'/ninthFloor',component:ninthFloor},
    {path:'/eighthFloor',component:eighthFloor},
    {path:'/seventhFloor',component:seventhFloor},
    {path:'/sixth1Floor',component:sixth1Floor},
    {path:'/sixthFloor',component:sixthFloor},
    {path:'/fifthFloor',component:fifthFloor},
    {path:'/fourthFloor',component:fourthFloor},
    {path:'/thirdFloor',component:thirdFloor},
    {path:'/secondFloor',component:secondFloor},
    {path:'/firstFloor',component:firstFloor},
    {path:'/Rotation1',component:Rotation1},
    {path:'/Rotation',component:Rotation},
    {path:'/Header',component:Header},
    {path: '/',component: index},
  ]
})
