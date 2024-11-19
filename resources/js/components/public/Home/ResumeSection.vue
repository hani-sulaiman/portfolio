<template>
    <!-- RESUME SECTION START -->
    <section class="resume-section" id="resume-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="section-header wow fadeInUp" data-wow-delay=".3s">
                        <h2 class="section-title"><i class="flaticon-recommendation"></i> My Experience</h2>
                    </div>

                    <div class="resume-widget">
                        <div v-for="(experience,index) in getExperiences" class="resume-item wow fadeInLeft"
                            :data-wow-delay="'.' + (index + 4) + 's'">
                            <div class="time" v-if="isDateInCurrentYear(experience.from_date)">
                                {{ getYearFromDate(experience.from_date) }} - Present
                            </div>
                            <div class="time" v-else>Since {{ getYearFromDate(experience.from_date) }}</div>
                            <h3 class="resume-title">{{ experience.title }}</h3>
                            <div class="institute">{{ experience.source }}</div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="section-header wow fadeInUp" data-wow-delay=".4s">
                        <h2 class="section-title"><i class="flaticon-graduation-cap"></i> My Education</h2>
                    </div>

                    <div v-for="(education, index) in getEducations" class="resume-widget">
                        <div class="resume-item wow fadeInRight" :data-wow-delay="'.' + (index + 5) + 's'">
                            <div class="time">{{ getYearFromDate(education.from_date) }} -
                                {{ getYearFromDate(education.to_date) }}</div>
                            <h3 class="resume-title">{{ education.title }}</h3>
                            <div class="institute">{{ education.institute }}</div>
                            <a v-if="education.certificate_link" :href="education.certificate_link" target="_blank"
                                class="institute">Certificate Link</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- RESUME SECTION END -->
</template>
<script>
import { mapGetters } from 'vuex';
export default {
    name: 'Resume',
    computed: {
        ...mapGetters('home', ['educations', 'experiences']),
        getExperiences() {
            return this.experiences;
        },
        getEducations() {
            return this.educations;
        }
    },
    methods: {
        getYearFromDate(dateString) {
            const date = new Date(dateString);
            return date.getFullYear();
        },
        isDateInCurrentYear(dateString) {
            const inputDate = new Date(dateString);
            const currentYear = new Date().getFullYear();
            return inputDate.getFullYear() === currentYear;
        }
    },

}
</script>