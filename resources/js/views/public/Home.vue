<template>
  <!-- Loader while the page is loading -->
  <LoaderComponent v-if="loading" />
  <!-- Main content -->
  <BackToTop />
  <div v-if="!loading">
    <LoaderComponent v-if="!loaded" />
    <HeroSection />
    <ServicesSection />
    <MyWorksSection />
    <ResumeSection />
    <SkillsSection />
    <MyClientsSection />
    <WorkTogtherSection />
  </div>
</template>

<script>
import LoaderComponent from '../../components/public/inc/LoaderComponent.vue';
import BackToTop from '../../components/public/inc/BackToTop.vue';
import HeroSection from '../../components/public/Home/HeroSection.vue';
import MyClientsSection from '../../components/public/Home/MyClientsSection.vue';
import MyWorksSection from '../../components/public/Home/MyWorksSection.vue';
import ResumeSection from '../../components/public/Home/ResumeSection.vue';
import ServicesSection from '../../components/public/Home/ServicesSection.vue';
import SkillsSection from '../../components/public/Home/SkillsSection.vue';
import WorkTogtherSection from '../../components/public/Home/WorkTogtherSection.vue';
import { mapActions } from 'vuex';
import { nextTick } from 'vue';
export default {
  name: 'HomeView',
  components: {
    LoaderComponent,
    BackToTop,
    HeroSection,
    MyClientsSection,
    MyWorksSection,
    ResumeSection,
    ServicesSection,
    SkillsSection,
    WorkTogtherSection,
  },
  data() {
    return {
      loading: true,
      loaded:false
    };
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
      'fetchClientsSection'
    ]),

  },
  async created() {
    try {
      await Promise.all([
        this.fetchSettings(),
        this.fetchHeroSection(),
        this.fetchServicesSection(),
        this.fetchProjectsSection(),
        this.fetchExperiencesSection(),
        this.fetchEducationsSection(),
        this.fetchSkillsSection(),
        this.fetchClientsSection(),
      ]);
    } catch (error) {
      console.error('Error fetching data:', error);
    } finally {
      this.loading = false;
    }
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
.loader-wrapper {
  text-align: center;
  margin-top: 50px;
}
</style>
