<template>
  <div class="create-skill-page">
    <h2>Create New Skill</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="skill.title" class="form-control" placeholder="Enter skill title" />
      </div>

      <div class="form-group">
        <label for="percentage">Percentage</label>
        <input type="number" id="percentage" v-model="skill.percentage" class="form-control" placeholder="Enter skill percentage" />
      </div>

      <div class="form-group">
        <label for="iconImage">Icon Image</label>
        <input type="file" id="iconImage" @change="handleIconUpload" class="form-control" />
        <img v-if="iconPreview" :src="iconPreview" alt="Icon Preview" class="icon-image-preview" />
      </div>

      <button type="submit" class="btn btn-success">Save Skill</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'CreateSkillPage',
  data() {
    return {
      skill: {
        title: '',
        percentage: '',
        iconImage: null,
      },
      iconPreview: '',
    };
  },
  methods: {
    handleIconUpload(event) {
      const file = event.target.files[0];
      if (file) {
        this.skill.iconImage = file;
        this.iconPreview = URL.createObjectURL(file);
      }
    },
    async handleSubmit() {
      const formData = new FormData();
      formData.append('title', this.skill.title);
      formData.append('percentage', this.skill.percentage);
      if (this.skill.iconImage) {
        formData.append('iconImage', this.skill.iconImage);
      }

      try {
        await api.post('/skills', formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });
        alert(`Skill "${this.skill.title}" created successfully!`);
        this.$router.push({ name: 'SkillManagement' });
      } catch (error) {
        console.error('Failed to create skill:', error);
        alert('Failed to create skill. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'SkillManagement' });
    },
  },
};
</script>