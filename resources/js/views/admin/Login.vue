<template>
  <div class="admin-login">
    <div class="login-container">
      <h2 class="login-title">Admin Login</h2>
      <form @submit.prevent="handleLogin">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" id="username" v-model="username" class="form-control" placeholder="Enter your username" />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" v-model="password" class="form-control" placeholder="Enter your password" />
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
      </form>
      <p v-if="errorMessage" class="error-message">{{ errorMessage }}</p>
    </div>
  </div>
</template>
<script>
import axios from 'axios';

export default {
  name: 'AdminLogin',
  data() {
    return {
      username: '',
      password: '',
      errorMessage: ''
    };
  },
  methods: {
    async handleLogin() {
      try {
        // Make a request to the Laravel API to log in the admin
        const response = await axios.post('/api/admin/login', {
          email: this.username,
          password: this.password
        });

        // Extract the token from the response
        const token = response.data.token;

        // Store the token in localStorage for authentication
        localStorage.setItem('adminToken', token);

        // Redirect to the Admin Dashboard after login
        this.$router.push({ name: 'AdminDashboard' });
      } catch (error) {
        // Handle login error (invalid credentials, server error, etc.)
        this.errorMessage = error.response?.data?.message || 'An error occurred during login';
      }
    }
  }
}
</script>

<style scoped>
*{
  color: #000;
}
.admin-login {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background-color: #f7f9fc;
}

.login-container {
  background: #ffffff;
  padding: 30px;
  border-radius: 8px;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
  width: 400px;
  max-width: 100%;
}

.login-title {
  text-align: center;
  margin-bottom: 20px;
}

.form-group {
  margin-bottom: 20px;
}

.form-group label {
  display: block;
  margin-bottom: 8px;
}

.form-control {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.btn-primary {
  width: 100%;
  padding: 10px;
  background-color: #6f42c1;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.btn-primary:hover {
  background-color: #5b36a1;
}

.error-message {
  color: red;
  text-align: center;
  margin-top: 15px;
}
</style>

