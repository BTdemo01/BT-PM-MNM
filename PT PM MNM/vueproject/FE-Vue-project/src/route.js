// src/router.js
import { createRouter, createWebHistory } from 'vue-router'
import Home from './Home.vue'  // import các component cần thiết

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
