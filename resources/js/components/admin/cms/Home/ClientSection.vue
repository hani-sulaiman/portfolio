<template>
  <div class="client-section-editor">
    <h2>Client Section Editor</h2>
    
    <div class="form-group">
      <label for="quote">Quote for Client Section:</label>
      <input type="text" v-model="quote" id="quote" class="form-control" placeholder="Enter your quote for the Client section" />
    </div>
    
    <button @click="saveQuote" class="btn btn-primary">Save</button>

    <p v-if="saveMessage" class="save-message">{{ saveMessage }}</p>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'ClientSection',
  data() {
    return {
      quote: '',
      saveMessage: '',
    };
  },
  async created() {
    await this.fetchClientSection();
  },
  methods: {
    async fetchClientSection() {
      try {
        const response = await api.get('/client-section');
        if (response.data && response.data.content) {
          this.quote = response.data.content.quote;
        }
      } catch (error) {
        console.error('Failed to fetch client section:', error);
      }
    },
    async saveQuote() {
      try {
        const payload = { quote: this.quote };
        const response = await api.post('/client-section', payload);
        this.saveMessage = response.data.message;
      } catch (error) {
        console.error('Failed to save client section:', error);
        this.saveMessage = 'Failed to save the client section. Please try again.';
      }
    },
  },
};
</script>