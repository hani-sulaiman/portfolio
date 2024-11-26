<template>
    <!-- TESTIMONIAL SECTION START -->
    <section class="testimonial-section" id="testimonials-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-5">
            <div class="section-header">
              <h2 class="section-title wow fadeInLeft" data-wow-delay=".3s">My Client's Stories</h2>
              <p class="wow fadeInLeft" data-wow-delay=".4s">Empowering people in a new digital journey with my super services</p>
            </div>
          </div>
          <div class="col-lg-7 col-xl-6 offset-xl-1">
            <div class="testimonials-widget wow fadeInRight" data-wow-delay=".5s">
              <div class="owl-carousel testimonial-carousel">
                <div v-for="(client, index) in getClients" :key="index" class="testimonial-item">
                  <div class="top-area d-flex flex-wrap justify-content-between">
                    <div class="image-box">
                      <img src="/assets/img/profile.jpg" alt="" />
                    </div>
                  </div>
                  <p class="quote">
                    “{{ getClientComment(client, index) }}
                    <span v-if="shouldShowToggle(client.comment)" @click="toggleText(index)" class="view-more">
                      {{ expandedIndex === index ? ' View Less' : '... View More' }}
                    </span>
                  </p>
                  <h4 class="name">{{ client.full_name }}</h4>
                  <span class="designation">{{ client.email }}</span>
                  <span class="designation">{{ client.major }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- TESTIMONIAL SECTION END -->
  </template>
  
  <script>
  import { mapGetters } from 'vuex';
  
  export default {
    data() {
      return {
        expandedIndex: null, // Index of the expanded comment, null when none
        maxLength: 100 // Maximum length before truncation
      };
    },
    computed: {
      ...mapGetters('home', ['clients', 'clientsQuote']),
      getClients() {
        return this.clients;
      },
      quote() {
        return this.clientsQuote;
      }
    },
    methods: {
      toggleText(index) {
        // Toggle between expanding and collapsing text for the selected index
        this.expandedIndex = this.expandedIndex === index ? null : index;
      },
      shouldShowToggle(comment) {
        // Determine if the "View More" link should be shown
        return comment.length > this.maxLength;
      },
      getClientComment(client, index) {
        // Display full text if expanded, otherwise truncate it
        if (this.expandedIndex === index) {
          return client.comment;
        }
        return client.comment.length > this.maxLength
          ? client.comment.substring(0, this.maxLength) + '...'
          : client.comment;
      }
    }
  };
  </script>
  
  <style scoped>
  .view-more {
    display: block;
    color: #fff;
    font-weight: 700;
    cursor: pointer;
    text-decoration: underline;
  }
  </style>
  