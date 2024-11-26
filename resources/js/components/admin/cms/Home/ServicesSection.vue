<template>
  <div class="service-section-editor">
    <h2>Services Section Editor</h2>
    
    <div class="form-group">
      <label for="quote">Quote for Services Section:</label>
      <input type="text" v-model="quote" id="quote" class="form-control" placeholder="Enter your quote for the Services section" />
    </div>
    
    <button @click="saveQuote" class="btn btn-primary">Save</button>

    <p v-if="saveMessage" class="save-message">{{ saveMessage }}</p>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'ServicesSection',
  data() {
    return {
      quote: '',
      saveMessage: '',
    };
  },
  async created() {
    await this.fetchServicesSection();
  },
  methods: {
    async fetchServicesSection() {
      try {
        const response = await api.get('/services-section');
        if (response.data && response.data.content) {
          this.quote = response.data.content.quote;
        }
      } catch (error) {
        console.error('Failed to fetch services section:', error);
      }
    },
    async saveQuote() {
      try {
        const payload = { quote: this.quote };
        const response = await api.post('/services-section', payload);
        this.saveMessage = response.data.message;
      } catch (error) {
        console.error('Failed to save services section:', error);
        this.saveMessage = 'Failed to save the services section. Please try again.';
      }
    },
  },
};
</script>