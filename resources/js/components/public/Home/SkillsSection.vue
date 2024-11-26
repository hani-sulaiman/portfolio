<template>
    <!-- SKILLS SECTION START -->
    <section class="skills-section" id="skills-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center">
                        <h2 class="section-title wow fadeInUp" data-wow-delay=".3s">My Skills</h2>
                        <p class="wow fadeInUp" data-wow-delay=".4s">
                            We put your ideas and thus your wishes in the form of a unique web project that inspires
                            you and
                            you customers.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="skills-widget d-flex flex-wrap justify-content-center align-items-center">
                        <div v-for="(skill, index ) in getSkills" class="skill-item wow fadeInUp"
                            :data-wow-delay="(index /10) + 's'">
                            <div class="skill-inner">
                                <div class="icon-box">
                                    <img :src="skill.icon_url" alt="" />
                                </div>
                                <div class="number">{{ skill.percentage }}%</div>
                            </div>
                            <p>{{ skill.title }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SKILLS SECTION END -->

</template>
<script>
import { mapGetters } from 'vuex';
export default {
    computed: {
        ...mapGetters('home', ['skills']),
        getSkills() {
            return this.skills;
        }
    }
}
</script>