<template>
  <div class="create-client-page">
    <h2>Create New Client</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="fullName">Full Name</label>
        <input type="text" id="fullName" v-model="client.fullName" class="form-control" placeholder="Enter full name" />
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" v-model="client.email" class="form-control" placeholder="Enter email" />
      </div>

      <div class="form-group">
        <label for="major">Major</label>
        <input type="text" id="major" v-model="client.major" class="form-control" placeholder="Enter major" />
      </div>

      <div class="form-group">
        <label for="photo">Photo</label>
        <input type="file" id="photo" @change="handlePhotoChange" class="form-control" />
      </div>

      <div class="form-group">
        <label for="comment">Comment</label>
        <textarea id="comment" v-model="client.comment" class="form-control" placeholder="Enter a comment"></textarea>
      </div>

      <button type="submit" class="btn btn-success">Save Client</button>
      <button type="button" @click="cancel" class="btn btn-secondary">Cancel</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'CreateClientPage',
  data() {
    return {
      client: {
        fullName: '',
        email: '',
        major: '',
        comment: '',
      },
      photo: null, // Will store the photo file
    };
  },
  methods: {
    handlePhotoChange(event) {
      this.photo = event.target.files[0]; // Capture the photo file from the input
    },
    async handleSubmit() {
      try {
        // Create FormData to send along with the request
        const formData = new FormData();
        formData.append('full_name', this.client.fullName);
        formData.append('email', this.client.email);
        formData.append('major', this.client.major);
        formData.append('comment', this.client.comment);
        if (this.photo) {
          formData.append('photo', this.photo);
        }

        // Send POST request to create the client
        const response = await api.post('/clients', formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });

        alert(`Client "${response.data.full_name}" created successfully!`);
        this.$router.push({ name: 'ClientsList' });
      } catch (error) {
        console.error('Failed to create client:', error);
        alert('Failed to create client. Please try again.');
      }
    },
    cancel() {
      this.$router.push({ name: 'ClientsList' });
    },
  },
};
</script>