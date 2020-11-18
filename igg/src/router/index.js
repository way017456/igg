import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
//开始页面
import SignCode from '../views/SignCode.vue'
import SignPassword from '../views/SignPassword.vue'
import Signemail from '../views/Signemail.vue'
import Index from '../views/Index.vue'
import Details from '../views/Details.vue'
import List from '../views/List.vue'

Vue.use(VueRouter)
 
const routes = [
  
  {
    path:'/',
    component:Index
  },
  {
    path:'/list/:cid',
    component:List,
    props:true
  },
  {
    path:'/details/:id',
    component: Details,
    // name:'details',
    props:true
  },
  {
    path:'/signemail',
    component:Signemail
  },
  {
    path:'/signcode',
    component:SignCode
  },
  {
    path:'/signpassword',
    component:SignPassword
  }
  // {
  //   path: '/',
  //   name: 'Home',
  //   component: Home
  // },
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // },
]

const router = new VueRouter({
  routes
})

export default router
