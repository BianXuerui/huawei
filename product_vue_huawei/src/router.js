import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import Header from './components/Header.vue'
import Rotation from './components/header/Rotation.vue'
import Rotation1 from './components/header/Rotation1.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/Rotation1',component:Rotation1},
    {path:'/Rotation',component:Rotation},
    {path:'/Header',component:Header},
    {path: '/',component: index},
  ]
})
