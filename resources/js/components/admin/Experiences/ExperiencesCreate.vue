<template>
  <div class="create-experience-page">
    <h2>Create New Experience</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="experience.title" class="form-control" placeholder="Enter experience title" />
      </div>

      <div class="form-group">
        <label for="source">Source</label>
        <input type="text" id="source" v-model="experience.source" class="form-control" placeholder="Enter company or organization name" />
      </div>

      <div class="form-group">
        <label for="fromDate">From Date</label>
        <input type="date" id="fromDate" v-model="experience.from_date" class="form-control" />
      </div>

      <div class="form-group">
        <label for="toDate">To Date</label>
        <input type="date" id="toDate" v-model="experience.to_date" class="form-control" />
      </div>

      <button type="submit" class="btn btn-success">Save Experience</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'CreateExperiencePage',
  data() {
    return {
      experience: {
        title: '',
        source: '',
        from_date: '',
        to_date: '',
      },
    };
  },
  methods: {
    async handleSubmit() {
      try {
        await api.post('/experiences', this.experience);
        alert(`Experience "${this.experience.title}" created successfully!`);
        this.$router.push({ name: 'ExperienceManagement' });
      } catch (error) {
        console.error('Failed to create experience:', error);
        alert('Failed to create experience. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'ExperienceManagement' });
    },
  },
};
</script>