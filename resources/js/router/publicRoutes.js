import Home from "@/views/public/Home.vue";
import About from "@/views/public/About.vue";
import Contact from "../views/public/Contact.vue";
import Project from "../views/public/Projects.vue";

const publicRoutes = [
    { path: "/", name: "Home", component: Home ,meta: { layout: 'public' }},
    { path: "/about", name: "About", component: About ,meta: { layout: 'public' }},
    { path: "/contact", name: "Contact", component: Contact ,meta: { layout: 'public' }},
    { path: "/works", name: "Works", component: Project ,meta: { layout: 'public' }},
];

export default publicRoutes;
