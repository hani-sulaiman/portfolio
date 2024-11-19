<template>
    <LoaderComponent v-if="!loaded"/>
    <!-- Main content -->
    <BackToTop />
    <main class="site-content" id="content">
        <!-- START: Breadcrumb Area -->
        <section class="breadcrumb_area" data-bg-image="/assets/img/projects-banner.jpg" data-bg-color="#140C1C">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb_content d-flex flex-column align-items-center">
                            <h2 class="title wow fadeInUp" data-wow-delay=".3s">My Works</h2>
                            <div class="breadcrumb_navigation wow fadeInUp" data-wow-delay=".5s">
                                <span><a href="index.html">Home</a></span>
                                <i class="far fa-long-arrow-right"></i>
                                <span class="current-item">Works</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <MyWorksSection />
    </main>
</template>
<script>
import { nextTick } from 'vue';
import MyWorksSection from '../../components/public/Home/MyWorksSection.vue';
import LoaderComponent from '../../components/public/inc/BackToTop.vue';
import BackToTop from '../../components/public/inc/LoaderComponent.vue';
export default {
    components: { MyWorksSection, LoaderComponent, BackToTop },
    async mounted(){
    await nextTick()
    setTimeout(()=>{
      this.loaded = true
    },6000)
  }

}
</script>