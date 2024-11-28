<template>
      <LoaderComponent v-if="!loaded" />
      <BackToTop />
  <div v-if="!loading">
    <main class="site-content" id="content">
      <!-- START: Breadcrumb Area -->
      <section class="breadcrumb_area" data-bg-image="/assets/img/about.png" data-bg-color="#140C1C">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="breadcrumb_content d-flex flex-column align-items-center">
                <h2 class="title wow fadeInUp" data-wow-delay=".3s">About</h2>
                <div class="breadcrumb_navigation wow fadeInUp" data-wow-delay=".5s">
                  <span><a href="index.html">Home</a></span>
                  <i class="far fa-long-arrow-right"></i>
                  <span class="current-item">About</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- END: Breadcrumb Area -->

      <!-- START: Works Area -->
      <section class="works-section style-2" id="resume-section">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-header text-center">
                <h2 class="section-title wow fadeInUp" data-wow-delay=".3s">My Resume</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <div class="works-wrapper">
                <!-- Education Section -->
                <div class="works-content-item">
                  <h3 class="title wow fadeInLeft" data-wow-delay=".3s">Education</h3>
                  <div class="works-inner wow fadeInUp" data-wow-delay=".4s">
                    <div v-for="education in educations" :key="education.id" class="works-item">
                      <div class="works-icon">
                        <i class="flaticon-graduation-cap"></i>
                      </div>
                      <div class="works-content">
                        <span class="number">{{ getYearFromDate(education.from_date) }} - {{ getYearFromDate(education.to_date) }}</span>
                        <h5 class="title">{{ education.title }}</h5>
                        <span class="sub-title">{{ education.institute }}</span>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Work Experience Section -->
                <div class="works-content-item">
                  <h3 class="title wow fadeInRight" data-wow-delay=".3s">Work Experience</h3>
                  <div class="works-inner wow fadeInUp" data-wow-delay=".4s">
                    <div v-for="experience in experiences" :key="experience.id" class="works-item">
                      <div class="works-icon">
                        <i class="flaticon-suitcase"></i>
                      </div>
                      <div class="works-content">
                        <span class="number">{{ getYearFromDate(experience.from_date) }} - {{ getYearFromDate(experience.to_date) }}</span>
                        <h5 class="title">{{ experience.title }}</h5>
                        <span class="sub-title">{{ experience.institute }}</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- END: Works Area -->

      <!-- START: Skills Area -->
      <section class="skills-section style-3" id="skills-section">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-header text-center">
                <h2 class="section-title wow fadeInUp" data-wow-delay=".3s">My Skills</h2>
                <p class="text-uppercase wow fadeInUp" data-wow-delay=".4s">Offered Services</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="skills-widget d-flex flex-wrap justify-content-center align-items-center">
                <div v-for="skill in skills" :key="skill.id" class="skill-item wow fadeInUp" data-wow-delay=".3s">
                  <div class="skill-inner">
                    <div class="icon-box">
                      <img :src="skill.icon_url" alt="" />
                    </div>
                    <div class="number">{{ skill.percentage }}%</div>
                  </div>
                  <p>{{ skill.name }}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- END: Skills Area -->

      <!-- START: Counter Area -->
      <section class="counter-section">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="funfact-area">
                <div class="row">
                  <div class="col-6 col-lg-3">
                    <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center wow fadeInUp" data-wow-delay=".3s">
                      <div class="number"><span class="odometer" :data-count="statistics.years_of_experience">{{ statistics.years_of_experience }}</span></div>
                      <div class="text">Years of <br />Experience</div>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3">
                    <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center wow fadeInUp" data-wow-delay=".4s">
                      <div class="number"><span class="odometer" :data-count="statistics.projects_completed">{{ statistics.projects_completed }}</span>+</div>
                      <div class="text">Project <br />Completed</div>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3">
                    <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center wow fadeInUp" data-wow-delay=".5s">
                      <div class="number"><span class="odometer" :data-count="statistics.happy_clients">{{ statistics.happy_clients }}</span></div>
                      <div class="text">Happy <br />Clients</div>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3">
                    <div class="funfact-item d-flex flex-column flex-sm-row flex-wrap align-items-center wow fadeInUp" data-wow-delay=".6s">
                      <div class="number"><span class="odometer" :data-count="statistics.skills_count">{{ statistics.skills_count }}</span></div>
                      <div class="text">Have <br />Skills</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- END: Counter Area -->

      <!-- START: Text Area -->
      <section class="text-section">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="section-header">
                <div class="heading-left">
                  <p class="wow fadeInUp" data-wow-delay=".3s">Want to start a project?</p>
                  <h2 id="anim" class="section-title wow fadeInUp" data-wow-delay=".4s">Let’s have a chat</h2>
                </div>
                <div class="chat-mail wow fadeInRight" data-wow-delay=".5s">
                  <a class="link" :href="'mailto:'+settings.email">{{ settings.email }} <i class="fa-light fa-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- END: Text Area -->
    </main>
  </div>
</template>

<script>
import LoaderComponent from '../../components/public/inc/LoaderComponent.vue';
import BackToTop from '../../components/public/inc/BackToTop.vue';
import { mapGetters, mapActions } from 'vuex';
import { nextTick } from 'vue';

export default {
  name: 'HomeView',
  components: {
    LoaderComponent,
    BackToTop,
  },
  data() {
    return {
      loading: true,
      loaded:false
    };
  },
  computed: {
    ...mapGetters('home', [
      'heroQuote',
      'servicesQuote',
      'projectsQuote',
      'clientsQuote',
      'settings',
      'statistics',
      'services',
      'educations',
      'experiences',
      'skills',
      'clients',
    ]),
  },
  methods: {
    ...mapActions('home', [
      'fetchSettings',
      'fetchHeroSection',
      'fetchServicesSection',
      'fetchProjectsSection',
      'fetchEducationsSection',
      'fetchExperiencesSection',
      'fetchSkillsSection',
      'fetchClientsSection',
    ]),
    getYearFromDate(dateString) {
            const date = new Date(dateString);
            return date.getFullYear();
        },
  },
  async created() {
    await this.fetchSettings();
    await this.fetchHeroSection();
    await this.fetchServicesSection();
    await this.fetchProjectsSection();
    await this.fetchEducationsSection();
    await this.fetchExperiencesSection();
    await this.fetchSkillsSection();
    await this.fetchClientsSection();
    this.loading = false;
  },
  async mounted(){
    await nextTick()
    setTimeout(()=>{
      this.loaded = true
    },6000)
  }
};
</script>

<style scoped>
/* Styles remain unchanged */
</style>
