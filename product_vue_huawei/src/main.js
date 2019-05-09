import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'element-ui/lib/theme-chalk/index.css'
import 'element-ui/lib/index.js'

Vue.config.productionTip = false
import elementUi from "element-ui";
Vue.use(elementUi);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
