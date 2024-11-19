<template>
  <div class="edit-experience-page">
    <h2>Edit Experience</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="experience.title" class="form-control" />
      </div>

      <div class="form-group">
        <label for="source">Source</label>
        <input type="text" id="source" v-model="experience.source" class="form-control" />
      </div>

      <div class="form-group">
        <label for="fromDate">From Date</label>
        <input type="date" id="fromDate" v-model="experience.from_date" class="form-control" />
      </div>

      <div class="form-group">
        <label for="toDate">To Date</label>
        <input type="date" id="toDate" v-model="experience.to_date" class="form-control" />
      </div>

      <button type="submit" class="btn btn-success">Update Experience</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'EditExperiencePage',
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
  async created() {
    try {
      const experienceId = this.$route.params.id;
      const response = await api.get(`/experiences/${experienceId}`);
      this.experience = response.data;
    } catch (error) {
      console.error('Failed to load experience:', error);
      alert('Experience not found');
      this.$router.push({ name: 'ExperienceManagement' });
    }
  },
  methods: {
    async handleSubmit() {
      try {
        await api.put(`/experiences/${this.experience.id}`, this.experience);
        alert(`Experience "${this.experience.title}" updated successfully!`);
        this.$router.push({ name: 'ExperienceManagement' });
      } catch (error) {
        console.error('Failed to update experience:', error);
        alert('Failed to update experience. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'ExperienceManagement' });
    },
  },
};
</script>
