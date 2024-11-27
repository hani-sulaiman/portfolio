<template>
    <div class="circle" id="mouse-cursor"></div>
    <!-- HEADER START -->
    <header class="tj-header-area header-1 header-absolute" :class="routeName">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex flex-wrap align-items-center">
                    <div class="logo-box">
                        <a href="/">
                            <img :src="imageSrc" alt="" />
                        </a>
                    </div>

                    <div class="header-info-list d-none d-md-inline-block">
                        <ul class="ul-reset">
                            <li><a :href="'mailto:' + getSettings.email">{{ getSettings.email }}</a></li>
                        </ul>
                    </div>
                    <div class="header-menu" id="headerMenu">
                        <nav>
                            <ul>
                                <li>
                                    <a active-class="current-menu-item" href="/">Home</a>
                                </li>
                                <li>
                                    <a href="/about" active-class="current-menu-item">About</a>
                                </li>
                                <li>
                                    <a href="/works" active-class="current-menu-item">My Works</a>
                                </li>
                                <li>
                                    <a href="/contact">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <label class="switch">
                        <input type="checkbox" :class="{ checked: isNightMode }" @change="toggleMode">
                        <span class="slider round"></span>
                    </label>
                    <div class="mobile-menu d-lg-none"></div>
                    <div class="header-button">
                        <a :href="'https://wa.me/' + removePlusSign(getSettings.phoneNumber)" target="_blank"
                            class="btn tj-btn-primary">Chat me!</a>
                    </div>
                    <div class="menu-bar d-lg-none">
                        <button>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <header class="tj-header-area header-2 header-sticky sticky-out">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex flex-wrap align-items-center">
                    <div class="logo-box">
                        <a href="/">
                            <img :src="imageSrc" alt="" />
                        </a>
                    </div>
                    <div class="header-info-list d-none d-md-inline-block">
                        <ul class="ul-reset">
                            <li><a :href="'mailto:' + getSettings.email">{{ getSettings.email }}</a></li>
                        </ul>
                    </div>
                    <div class="header-menu">
                        <nav>
                            <ul>
                                <li>
                                    <a href="/">Home</a>
                                </li>
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/works">My Works</a>
                                </li>
                                <li>
                                    <a href="/contact">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <label class="switch">
                        <input type="checkbox" :class="{ checked: isNightMode }" @change="toggleMode">
                        <span class="slider round"></span>
                    </label>
                    <div class="mobile-menu d-lg-none"></div>
                    <div class="header-button">

                        <a :href="'https://wa.me/' + removePlusSign(getSettings.phoneNumber)" target="_blank"
                            class="btn tj-btn-primary">Chat me!</a>
                    </div>
                    <div class="menu-bar d-lg-none">
                        <button>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- HEADER END -->

    <router-view></router-view>
    <!-- FOOTER AREA START -->
    <footer class="tj-footer-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="footer-logo-box">
                        <a href="/"><img src="/assets/img/logo/logo.png" alt="" /></a>
                    </div>
                    <div class="footer-menu">
                        <nav>
                            <ul>
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/works">Works</a>
                                </li>
                                <li>
                                    <a href="/contact">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="copy-text">
                        <p>&copy; {{ getCurrentYear() }} All rights reserved by <a href="#" target="_blank">{{
                            getSettings.fullname }}
                            </a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>
<script>
import { mapGetters, mapActions } from 'vuex';
import { ref, computed } from 'vue';

export default {
    setup() {
        const nightmodeLogo = ref('/assets/img/logo/logo.png');
        const lightmodeLogo = ref('/assets/img/logo/logo-light.png');

        // Initialize isNightMode state from localStorage or default to false (light mode)
        const isNightMode = ref(localStorage.getItem('isNightMode') === 'true');

        // Function to toggle night mode and reload page
        const toggleMode = () => {
            // Toggle night mode state
            isNightMode.value = !isNightMode.value;

            // Update localStorage
            localStorage.setItem('isNightMode', isNightMode.value);

            // Reload the page after 0.5 seconds
            setTimeout(() => {
                const currentUrl = window.location.href.split('?')[0];
                window.location.replace(`${currentUrl}?nocache=${new Date().getTime()}`);

            }, 500);
        };

        // Apply initial theme based on isNightMode value
        if (isNightMode.value) {
            document.body.classList.remove('light-mode');
        } else {
            document.body.classList.add('light-mode');
        }
        const imageSrc = computed(() => {
            return isNightMode.value ? nightmodeLogo.value : lightmodeLogo.value;
        });
        return {
            isNightMode,
            toggleMode,
            lightmodeLogo,
            nightmodeLogo,
            imageSrc
        };
    },
    computed: {
        ...mapGetters('home', ['settings']),
        getSettings() {
            return this.settings;
        },
        routeName() {
            return this.$route.name;
        }
    },
    methods: {
        ...mapActions('home', ['fetchSettings']),
        getCurrentYear() {
            const currentYear = new Date().getFullYear();
            return currentYear;
        },
        removePlusSign(number) {
            return number ? number.replace(/\+/g, '') : null;
        },

    },
    async created() {
        await this.fetchSettings();

    },
};
</script>