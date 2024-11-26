<template>
    <!-- SERVICES SECTION START -->
    <section class="services-section" id="services-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center">
                        <h2 class="section-title wow fadeInUp" data-wow-delay=".3s">My Quality Services</h2>
                        <p class="wow fadeInUp" data-wow-delay=".4s">
                            {{ quote }}
                        </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="services-widget position-relative">
                        <div v-for="(service, index) in getServices" :key="index"
                            class="service-item d-flex flex-wrap align-items-center wow fadeInUp" data-wow-delay=".5s"
                            @click="openServicePopup(service)">
                            <div class="left-box d-flex flex-wrap align-items-center">
                                <span class="number">0{{ index + 1 }}</span>
                                <h3 class="service-title">{{ service.title }}</h3>
                            </div>
                            <div class="right-box">
                                <p>
                                    {{ getShortContent(service.content) }} ...
                                </p>
                            </div>
                            <i class="flaticon-up-right-arrow"></i>
                            <button data-mfp-src="#service-wrapper" class="service-link modal-popup"></button>
                        </div>

                        <div class="active-bg wow fadeInUp" data-wow-delay=".5s"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SERVICES SECTION END -->

    <!-- Start: Service Popup -->
    <div id="service-wrapper" class="popup_content_area zoom-anim-dialog mfp-hide" data-lenis-prevent
        v-show="selectedService">
        <div class="popup_modal_img">
            <img :src="selectedService.image_url" alt="" />
        </div>
        <div class="popup_modal_content">
            <div class="service_details">
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="service_details_content">
                            <div class="service_info">
                                <h6 class="subtitle">SERVICES</h6>
                                <h2 class="title">{{ selectedService.title }}</h2>
                                <div class="desc">
                                    <p v-html="selectedService.content"></p>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-xl-4">
                        <div class="tj_main_sidebar">
                            <div class="sidebar_widget services_list">
                                <div class="widget_title">
                                    <h3 class="title">All Services</h3>
                                </div>
                                <ul>
                                    <li v-for="(service, index) in services" :key="index"
                                        :class="{ active: selectedService.id === service.id }">
                                        <button @click="openServicePopup(service)">
                                            <i v-html="service.icon_code_html"></i>
                                            {{ service.title }}
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End: Service Popup -->
</template>

<script>
import { mapGetters } from 'vuex';
export default {
    data() {
        return {
            selectedService: null
        };
    },
    computed: {
        ...mapGetters('home', [
            'servicesQuote',
            'services',
        ]),
        quote() {
            return this.servicesQuote
        },
        getServices() {
            return this.services
        }
    },
    methods: {
        getShortContent(text) {
            const words = text.split(/\s+/);
            const content = words.slice(0, 30);
            return content.join(' ');
        },
        openServicePopup(service) {
            this.selectedService = service; // Set the currently selected service
        }
    },
    created() {
        this.selectedService = this.getServices[0]
    }
}
</script>
