import "./bootstrap";
import { createApp,nextTick  } from "vue";
import router from "./router/router";
import store from "./store";
import App from "./App.vue";
import LoadScript from "vue-plugin-load-script";
import VueSweetalert2 from "vue-sweetalert2";
import "sweetalert2/dist/sweetalert2.min.css";
import { loadScript } from "vue-plugin-load-script";
const app = createApp(App);
app.use(LoadScript);
app.use(VueSweetalert2);
app.use(store);
app.use(router);

router.isReady().then(() => {
    app.mount("body");
    loadExternalScripts();
});
  
async function loadExternalScripts() {
    const scripts = [
        "assets/js/core.min.js",
        "assets/js/mouse.js",
        "assets/js/main.js",
    ];

    try {
        for (const src of scripts) {
            await loadScript(src);
        }
    } catch (error) {
        console.error("Error loading external scripts:", error);
    }
}
