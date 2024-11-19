<template>
    <main class="site-content" id="content">
        <!-- START: Breadcrumb Area -->
        <section class="breadcrumb_area" data-bg-image="/assets/img/contact-banner.jpg"
            data-bg-color="#140C1C">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb_content d-flex flex-column align-items-center">
                            <h2 class="title wow fadeInUp" data-wow-delay=".3s">Contact</h2>
                            <div class="breadcrumb_navigation wow fadeInUp" data-wow-delay=".5s">
                                <span><a href="index.html">Home</a></span>
                                <i class="far fa-long-arrow-right"></i>
                                <span class="current-item">Contact</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END: Breadcrumb Area -->
         <WorkTogtherSection/>
    </main>

</template>
<script>
import WorkTogtherSection from '../../components/public/Home/WorkTogtherSection.vue';
export default{
    components:{
        WorkTogtherSection
    }
}
</script>