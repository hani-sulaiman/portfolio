<template>
  <div class="create-project-page">
    <h2>Create New Project</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="project.title" class="form-control" placeholder="Enter project title" />
      </div>

      <div class="form-group">
        <label for="thumbnailImage">Thumbnail Image</label>
        <input type="file" id="thumbnailImage" @change="handleThumbnailUpload" class="form-control" />
        <img v-if="thumbnailPreview" :src="thumbnailPreview" alt="Thumbnail Preview" class="thumbnail-preview" />
      </div>

      <div class="form-group">
        <label for="quickInfo">Quick Info</label>
        <input type="text" id="quickInfo" v-model="project.quick_info" class="form-control" placeholder="Enter quick info about the project" />
      </div>

      <div class="form-group">
        <label for="service">Services</label>
        <select id="service" v-model="project.service_ids" multiple class="form-control">
          <option v-for="service in services" :key="service.id" :value="service.id">{{ service.title }}</option>
        </select>
      </div>

      <div class="form-group">
        <label for="startDate">Start Date</label>
        <input type="date" id="startDate" v-model="project.start_date" class="form-control" />
      </div>

      <div class="form-group">
        <label for="client">Client</label>
        <input type="text" id="client" v-model="project.client_name" class="form-control" placeholder="Enter client name" />
      </div>

      <div class="form-group">
        <label for="partners">Project Partners</label>
        <input type="text" id="partners" v-model="project.partners" class="form-control" placeholder="Enter project partners names" />
      </div>

      <div class="form-group">
        <label for="projectLink">Project Link</label>
        <input type="text" id="projectLink" v-model="project.project_link" class="form-control" placeholder="Enter project link" />
      </div>

      <div class="form-group">
        <label for="description">Project Description</label>
        <textarea id="description" v-model="project.description" class="form-control" placeholder="Enter project description"></textarea>
      </div>

      <div class="form-group">
        <label for="techs">Project Techs</label>
        <input type="text" id="techs" v-model="project.techs" class="form-control" placeholder="Enter technologies used (comma separated)" />
      </div>

      <div class="form-group">
        <label for="moreImages">More Images</label>
        <input type="file" id="moreImages" multiple @change="handleMoreImagesUpload" class="form-control" />
        <div class="more-images-preview">
          <img v-for="(image, index) in moreImagesPreview" :key="index" :src="image" alt="More Image Preview" class="more-image-preview" />
        </div>
      </div>

      <button type="submit" class="btn btn-success">Save Project</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'CreateProjectPage',
  data() {
    return {
      project: {
        title: '',
        quick_info: '',
        service_ids: [], // Changed to an array to allow multiple service selection
        start_date: '',
        client_name: '',
        partners: '',
        project_link: '',
        description: '',
        techs: '',
        more_images: [],
      },
      services: [],
      thumbnail: '',
      thumbnailPreview: '',
      moreImagesPreview: [],
    };
  },
  async created() {
    await this.fetchServices();
  },
  methods: {
    async fetchServices() {
      try {
        const response = await api.get('/services');
        this.services = response.data;
      } catch (error) {
        console.error('Failed to load services:', error);
      }
    },
    handleThumbnailUpload(event) {
      const file = event.target.files[0];
      if (file) {
        this.project.thumbnail = file;
        this.thumbnailPreview = URL.createObjectURL(file);
      }
    },
    handleMoreImagesUpload(event) {
      this.project.more_images = Array.from(event.target.files);
      this.moreImagesPreview = this.project.more_images.map((file) => URL.createObjectURL(file));
    },
    async handleSubmit() {
      const formData = new FormData();
      formData.append('title', this.project.title);
      formData.append('quick_info', this.project.quick_info);
      formData.append('start_date', this.project.start_date);
      formData.append('client_name', this.project.client_name);
      formData.append('partners', this.project.partners);
      formData.append('project_link', this.project.project_link);
      formData.append('description', this.project.description);
      formData.append('techs', this.project.techs);

      if (this.project.thumbnail) {
        formData.append('thumbnail', this.project.thumbnail);
      }

      this.project.more_images.forEach((image, index) => {
        formData.append(`more_images[${index}]`, image);
      });

      // Append selected service IDs
      this.project.service_ids.forEach((service_id) => {
        formData.append('service_ids[]', service_id);
      });

      try {
        await api.post('/projects', formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });
        alert(`Project "${this.project.title}" created successfully!`);
        this.$router.push({ name: 'ProjectManagement' });
      } catch (error) {
        console.error('Failed to create project:', error);
        alert('Failed to create project. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'ProjectManagement' });
    },
  },
};
</script>