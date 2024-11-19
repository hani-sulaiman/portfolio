<template>
  <div class="create-education-page">
    <h2>Create New Education</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" id="title" v-model="education.title" class="form-control" placeholder="Enter education title" />
      </div>

      <div class="form-group">
        <label for="institute">Institute</label>
        <input type="text" id="institute" v-model="education.institute" class="form-control" placeholder="Enter institute name" />
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
        <label for="certificate">Certificate (PDF)</label>
        <input type="file" id="certificate" @change="handleCertificateUpload" class="form-control" accept=".pdf" />
      </div>

      <button type="submit" class="btn btn-success">Save Education</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'CreateEducationPage',
  data() {
    return {
      education: {
        title: '',
        institute: '',
        from_date: '',
        to_date: '',
      },
      certificate: null, // Store the certificate file
    };
  },
  methods: {
    handleCertificateUpload(event) {
      this.certificate = event.target.files[0]; // Capture the selected file
    },
    async handleSubmit() {
      try {
        // Create FormData object for the file upload
        const formData = new FormData();
        formData.append('title', this.education.title);
        formData.append('institute', this.education.institute);
        formData.append('from_date', this.education.from_date);
        formData.append('to_date', this.education.to_date);
        if (this.certificate) {
          formData.append('certificate', this.certificate);
        }

        await api.post('/educations', formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });
        alert(`Education "${this.education.title}" created successfully!`);
        this.$router.push({ name: 'EducationManagement' });
      } catch (error) {
        console.error('Failed to create education:', error);
        alert('Failed to create education. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'EducationManagement' });
    },
  },
};
</script>