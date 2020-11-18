import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import myHeader from './components/Header.vue'
import myFooter from './components/Footer.vue'
import myBanner from './components/Banner.vue'
import myIndexList from './components/IndexList.vue'
import myDetailKnapsack from './components/DetailKnapsack.vue'
import myAddsub from './components/AddSub.vue'
import myRotation from './components/SomeRotation.vue'
import myMoreList from './components/MoreList.vue'
import myDetailCup from './components/DetailCup.vue'
import myDetailEggs from './components/DetailEggs.vue'
import myDetailPad from './components/DetailPad.vue'
 
axios.defaults.baseURL='http://127.0.0.1:3000';
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
Vue.prototype.axios = axios;
Vue.prototype.qs = qs;
Vue.component('myHeader',myHeader);
Vue.component('myFooter',myFooter);
Vue.component('myBanner',myBanner);
Vue.component('myIndexlist',myIndexList);
Vue.component('myDetailknapsack',myDetailKnapsack);
Vue.component('myAddsub',myAddsub);
Vue.component('myRotation',myRotation);
Vue.component('myMorelist',myMoreList);
Vue.component('myDetailcup',myDetailCup);
Vue.component('myDetaileggs',myDetailEggs);
Vue.component('myDetailpad',myDetailPad);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
