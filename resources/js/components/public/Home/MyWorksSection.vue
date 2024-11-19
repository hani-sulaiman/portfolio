<template>
    <!-- PORTFOLIO SECTION START -->
    <section class="portfolio-section" id="works-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center">
                        <h2 class="section-title wow fadeInUp" data-wow-delay=".3s">My Recent Works</h2>
                        <p class="wow fadeInUp" data-wow-delay=".4s">
                            {{ quote }}
                        </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="portfolio-filter text-center wow fadeInUp" data-wow-delay=".5s">
                        <div class="button-group filter-button-group">
                            <button @click="filterProjects(null)" :class="{ active: !selectedService }">All</button>
                            <button v-for="(service, index) in projects" :key="index"
                                @click="filterProjects(service.service)"
                                :class="{ active: selectedService === service.service }">
                                {{ service.service }}
                            </button>
                            <div class="active-bg"></div>
                        </div>
                    </div>

                    <div class="portfolio-box wow fadeInUp" data-wow-delay=".6s">
                        <div class="portfolio-sizer"></div>
                        <div class="gutter-sizer"></div>

                        <div v-for="(project, index) in filteredProjects" :key="index"
                            :class="['portfolio-item', projectCategoryClass(project)]"
                            @click="openProjectPopup(project)">
                            <div class="image-box">
                                <img :src="project.thumbnail_url" :alt="project.title" />
                            </div>
                            <div class="content-box">
                                <h3 class="portfolio-title">{{ project.title }}</h3>
                                <p>{{ getShortContent(project.quick_info) }}</p>
                                <i class="flaticon-up-right-arrow"></i>
                                <button data-mfp-src="#portfolio-wrapper" class="portfolio-link modal-popup"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- PORTFOLIO SECTION END -->

    <!-- Start: Portfolio Popup -->
    <div id="portfolio-wrapper" class="popup_content_area zoom-anim-dialog mfp-hide" data-lenis-prevent
        v-if="selectedProject">
        <div class="popup_modal_img">
            <img :src="selectedProject.thumbnail_url" alt="Project Image" />
        </div>
        <div class="popup_modal_content">
            <div class="portfolio_info">
                <div class="portfolio_info_text">
                    <h2 class="title">{{ selectedProject.title }}</h2>
                    <div class="desc">
                        <p>{{ selectedProject.quick_info }}</p>
                    </div>
                    <a :href="selectedProject.project_link" class="btn tj-btn-primary" target="_blank">Live Preview <i
                            class="fal fa-arrow-right"></i></a>
                </div>
                <div class="portfolio_gallery owl-carousel">
                    <div class="gallery_item" v-for="img in selectedProject.more_images">
                        <img :src="img" alt="" />
                    </div>
                </div>
                <div class="portfolio_info_items">
                    <div class="info_item" v-if="selectedProject.client_name">
                        <div class="key">Client</div>
                        <div class="value">{{ selectedProject.client_name }}</div>
                    </div>
                    <div class="info_item">
                        <div class="key">Start Date</div>
                        <div class="value">{{ selectedProject.start_date }}</div>
                    </div>
                    <div class="info_item" v-if="selectedProject.partners">
                        <div class="key">Partners</div>
                        <div class="value">{{ selectedProject.partners }}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end: Portfolio Popup -->
</template>

<script>
import { nextTick } from 'vue';
import { mapGetters, mapActions } from 'vuex';
export default {
    data() {
        return {
            selectedProject: null,
            selectedService: null,
        };
    },
    computed: {
        ...mapGetters('home', ['projects', 'projectsQuote']),
        quote() {
            return this.projectsQuote;
        },
        filteredProjects() {
            // Get all projects from all services
            let projects = this.projects
                ? this.projects.reduce((all, service) => [...all, ...service.projects], [])
                : [];

            // Filter by selected service if available
            if (this.selectedService) {
                const selectedService = this.projects.find(
                    (service) => service.service === this.selectedService
                );
                projects = selectedService ? selectedService.projects : [];
            }

            // Limit projects to 6 if route is the homepage ("/")
            if (this.$route.path === '/') {
                return projects.slice(0, 6);
            }

            return projects;
        },
    },
    methods: {
        ...mapActions('home', ['fetchProjectsSection']),
        selectFirstProject() {
            if (this.projects && this.projects.length > 0) {
                for (let service of this.projects) {
                    if (service.projects && service.projects.length > 0) {
                        this.selectedProject = service.projects[0];
                        break;
                    }
                }
            }
        },
        getShortContent(text) {
            const words = text.split(/\s+/);
            const content = words.slice(0, 15);
            return content.join(' ') + '...';
        },
        filterProjects(serviceName) {
            this.selectedService = serviceName;
        },
        openProjectPopup(project) {
            this.selectedProject = project; // Set the currently selected project
        },
        projectCategoryClass(project) {
            const service = this.projects.find(s => s.projects.some(p => p.id === project.id));
            return service ? service.service.toLowerCase().replace(/\s+/g, '-') : '';
        },
    },
    async created() {
        await this.$store.dispatch('home/fetchProjectsSection');
        this.selectFirstProject();
    },

};
</script>