// src/router/index.js
import { createRouter, createWebHistory } from 'vue-router';

// Import Public and Admin Routes
import publicRoutes from './publicRoutes';
import adminRoutes from './adminRoutes';
import NotFound from '@/components/404.vue'
import Login from "@/views/admin/Login.vue";
// Combine Routes
const routes = [
    ...publicRoutes,
    ...adminRoutes,
    { path: "/admin/login", name: "AdminLogin", component: Login ,meta:{layout:"general"} },
    { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound,meta:{layout:"general"} },
];

// Create Router
const router = createRouter({
    history: createWebHistory(),
    routes,
});

function isAuthenticated() {
    return !!localStorage.getItem('adminToken');
}
router.beforeEach((to, from, next) => {
    if (to.path.startsWith('/admin') && to.name !== 'AdminLogin') {
        if (!isAuthenticated()) {
            next({ name: 'AdminLogin' });
        } else {
            next();
        }
    } else {
        next();
    }
});

export default router;
