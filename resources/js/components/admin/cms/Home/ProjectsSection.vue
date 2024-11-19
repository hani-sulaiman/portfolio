<template>
  <div class="projects-section-editor">
    <h2>Projects Section Editor</h2>
    
    <div class="form-group">
      <label for="quote">Quote for Projects Section:</label>
      <input type="text" v-model="quote" id="quote" class="form-control" placeholder="Enter your quote for the Projects section" />
    </div>
    
    <button @click="saveQuote" class="btn btn-primary">Save</button>

    <p v-if="saveMessage" class="save-message">{{ saveMessage }}</p>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'ProjectsSection',
  data() {
    return {
      quote: '',
      saveMessage: '',
    };
  },
  async created() {
    await this.fetchProjectsSection();
  },
  methods: {
    async fetchProjectsSection() {
      try {
        const response = await api.get('/projects-section');
        if (response.data && response.data.content) {
          this.quote = response.data.content.quote;
        }
      } catch (error) {
        console.error('Failed to fetch projects section:', error);
      }
    },
    async saveQuote() {
      try {
        const payload = { quote: this.quote };
        const response = await api.post('/projects-section', payload);
        this.saveMessage = response.data.message;
      } catch (error) {
        console.error('Failed to save projects section:', error);
        this.saveMessage = 'Failed to save the projects section. Please try again.';
      }
    },
  },
};
</script>