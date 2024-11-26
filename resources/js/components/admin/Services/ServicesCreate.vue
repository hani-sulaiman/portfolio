<template>
  <div class="create-service-page">
    <h2>Create New Service</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="service.title" class="form-control" placeholder="Enter service title" />
      </div>

      <div class="form-group">
        <label for="icon">Icon (HTML Code)</label>
        <textarea id="icon" v-model="service.icon_code_html" class="form-control" placeholder="Enter icon HTML code"></textarea>
      </div>

      <div class="form-group">
        <label for="content">Content</label>
        <textarea id="content" v-model="service.content" class="form-control" placeholder="Enter service content"></textarea>
      </div>

      <div class="form-group">
        <label for="image">Service Image</label>
        <input type="file" id="image" @change="handleImageUpload" class="form-control" />
        <img v-if="imagePreview" :src="imagePreview" alt="Image Preview" class="image-preview" />
      </div>

      <button type="submit" class="btn btn-success">Save Service</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'CreateServicePage',
  data() {
    return {
      service: {
        title: '',
        icon_code_html: '',
        content: '',
        image: null,
      },
      imagePreview: '',
    };
  },
  methods: {
    handleImageUpload(event) {
      const file = event.target.files[0];
      if (file) {
        this.service.image = file;
        this.imagePreview = URL.createObjectURL(file);
      }
    },
    async handleSubmit() {
      const formData = new FormData();
      formData.append('title', this.service.title);
      formData.append('icon_code_html', this.service.icon_code_html);
      formData.append('content', this.service.content);
      if (this.service.image) {
        formData.append('image', this.service.image);
      }

      try {
        await api.post('/services', formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });
        alert('Service created successfully!');
        this.$router.push({ name: 'ServiceManagement' });
      } catch (error) {
        console.error('Failed to create service:', error);
        alert('Failed to create service. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'ServiceManagement' });
    },
  },
};
</script>