<template>
    <!-- HERO SECTION START -->
    <section class="hero-section d-flex align-items-center" id="intro">
        <div class="intro_text">
            <svg viewBox="0 0 1320 300">
                <text x="50%" Y="50%" text-anchor="middle">{{ "</>" }}</text>
            </svg>
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="hero-content-box">
                        <span class="hero-sub-title">I am {{ getSettings.fullname }}</span>
                        <h1 class="hero-title">Machine Learning Engineer + Fullstack Developer</h1>

                        <div class="hero-image-box d-md-none text-center">
                            <img :src="getSettings.personalPhoto" alt="" />
                        </div>

                        <p class="lead">
                            {{ getQuote }}
                        </p>
                        <div class="button-box d-flex flex-wrap align-items-center">
                            <a :href="getSettings.cvFile" target="_blank"
                                class="btn tj-btn-secondary">Download CV <i class="flaticon-download"></i></a>
                            <ul class="ul-reset social-icons">
                                <li>
                                    <a :href="getSettings.whatsappLink"><i
                                            class="fa-brands fa-whatsapp"></i></a>
                                </li>
                                <li>
                                    <a :href="getSettings.facebookLink"><i
                                            class="fa-brands fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a :href="getSettings.instagramLink"><i
                                            class="fa-brands fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a :href="getSettings.linkedinLink"><i
                                            class="fa-brands fa-linkedin-in"></i></a>
                                </li>
                                <li>
                                    <a :href="getSettings.githubLink"><i
                                            class="fa-brands fa-github"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 d-none d-md-block">
                    <div class="hero-image-box text-center">
                        <img :src="getSettings.personalPhoto" alt="" />
                    </div>
                </div>
            </div>
            <div class="funfact-area">
                <div class="row">
                    <div class="col-6 col-lg-3">
                        <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center">
                            <div class="number"><span class="odometer"
                                    :data-count="getStatistics.years_of_experience">0</span></div>
                            <div class="text">Years of <br />Experience</div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3">
                        <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center">
                            <div class="number"><span class="odometer"
                                    :data-count="getStatistics.projects_completed">0</span>+</div>
                            <div class="text">Project <br />Completed</div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3">
                        <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center">
                            <div class="number"><span class="odometer" :data-count="getStatistics.happy_clients">0</span>
                            </div>
                            <div class="text">Happy <br />Clients</div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3">
                        <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center">
                            <div class="number"><span class="odometer" :data-count="getStatistics.skills_count">0</span>
                            </div>
                            <div class="text">Have <br />Skills</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- HERO SECTION END -->
</template>
<script>
import { mapGetters } from 'vuex';
export default {
    computed: {
        ...mapGetters('home', [
            'heroQuote',
            'settings',
            'statistics',
        ]),
        getQuote() {
            return this.heroQuote;
        },
        getSettings() {
            return this.settings
        },
        getStatistics() {
            return this.statistics
        }
    },
    methods: {
        getValueByKey(key) {
            if (Array.isArray(this.getSettings)) {
                const setting = this.getSettings.find(item => item.key_setting === key);
                return setting ? setting.value_setting : null;
            } else {
               
                return null
            }

        }
    }

}
</script>