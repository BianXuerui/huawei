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

Vue.use(Router)

export default new Router({
  routes: [
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
