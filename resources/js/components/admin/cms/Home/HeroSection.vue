<template>
  <div class="hero-section-editor">
    <h2>Hero Section Editor</h2>
    
    <div class="form-group">
      <label for="quote">Quote for Hero Section:</label>
      <input type="text" v-model="quote" id="quote" class="form-control" placeholder="Enter your quote for the hero section" />
    </div>
    
    <button @click="saveQuote" class="btn btn-primary">Save</button>

    <p v-if="saveMessage" class="save-message">{{ saveMessage }}</p>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'HeroSection',
  data() {
    return {
      quote: '',
      saveMessage: '',
    };
  },
  async created() {
    await this.fetchHeroSection();
  },
  methods: {
    async fetchHeroSection() {
      try {
        const response = await api.get('/hero-section');
        if (response.data && response.data.content) {
          this.quote = response.data.content.quote;
        }
      } catch (error) {
        console.error('Failed to fetch hero section:', error);
      }
    },
    async saveQuote() {
      try {
        const payload = { quote: this.quote };
        const response = await api.post('/hero-section', payload);
        this.saveMessage = response.data.message;
      } catch (error) {
        console.error('Failed to save hero section:', error);
        this.saveMessage = 'Failed to save the hero section. Please try again.';
      }
    },
  },
};
</script>