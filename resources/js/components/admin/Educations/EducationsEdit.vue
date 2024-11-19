<template>
  <div class="edit-education-page">
    <h2>Edit Education</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="education.title" class="form-control" />
      </div>

      <div class="form-group">
        <label for="institute">Institute</label>
        <input type="text" id="institute" v-model="education.institute" class="form-control" />
      </div>

      <div class="form-group">
        <label for="fromDate">From Date</label>
        <input type="date" id="fromDate" v-model="education.from_date" class="form-control" />
      </div>

      <div class="form-group">
        <label for="toDate">To Date</label>
        <input type="date" id="toDate" v-model="education.to_date" class="form-control" />
      </div>

      <div class="form-group">
        <label for="certificate">Upload New Certificate (PDF)</label>
        <input type="file" id="certificate" @change="handleCertificateUpload" class="form-control" accept=".pdf" />
      </div>

      <button type="submit" class="btn btn-success">Update Education</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'EditEducationPage',
  data() {
    return {
      education: {
        title: '',
        institute: '',
        from_date: '',
        to_date: '',
      },
      certificate: null, // Store the new certificate file if provided
    };
  },
  async created() {
    try {
      const educationId = this.$route.params.id;
      const response = await api.get(`/educations/${educationId}`);
      this.education = response.data;
    } catch (error) {
      console.error('Failed to load education:', error);
      alert('Education not found');
      this.$router.push({ name: 'EducationManagement' });
    }
  },
  methods: {
    handleCertificateUpload(event) {
      this.certificate = event.target.files[0]; // Capture the selected file
    },
    async handleSubmit() {
      try {
        // Create FormData object for the update request
        const formData = new FormData();
        formData.append('title', this.education.title);
        formData.append('institute', this.education.institute);
        formData.append('from_date', this.education.from_date);
        formData.append('to_date', this.education.to_date);
        if (this.certificate) {
          formData.append('certificate', this.certificate);
        }

        await api.post(`/educations/${this.education.id}?_method=PUT`, formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });
        alert(`Education "${this.education.title}" updated successfully!`);
        this.$router.push({ name: 'EducationManagement' });
      } catch (error) {
        console.error('Failed to update education:', error);
        alert('Failed to update education. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'EducationManagement' });
    },
  },
};
</script>