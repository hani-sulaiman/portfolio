<template>
  <button class="hamburger-button" @click="handleSidebarToggle()">
    <i class="bi bi-list"></i>
  </button>
  <div class="sidebar" id="sidebar">
    <h4 class="text-center">CMS Portfolio</h4>
    <nav>
      <router-link to="/admin"><i class="bi bi-speedometer2"></i> Dashboard</router-link>
      <!-- Pages Dropdown -->
      <a href="#" class="dropdown-toggle" @click="handleDropdownToggle('pages-dropdown')">
        <i class="bi bi-file-earmark-text"></i> Pages
      </a>
      <div id="pages-dropdown" class="dropdown-content">
        <a href="#" @click="handleDropdownToggle('home-dropdown')">Home</a>
        <div id="home-dropdown" class="dropdown-content">
          <router-link to="/admin/cms/hero-section">Hero Section</router-link>
          <router-link to="/admin/cms/services-section">Services Section</router-link>
          <router-link to="/admin/cms/projects-section">Projects Section</router-link>
          <router-link to="/admin/cms/client-section">Client Section</router-link>
          <router-link to="#">Blogs Section</router-link> <!-- Not provided in routes, left as # -->
          <router-link to="/admin/cms/work-togather-section">Work Together Section</router-link>
        </div>
        <router-link to="/admin/cms/services">Services</router-link>
        <router-link to="/admin/cms/about">About</router-link>
        <router-link to="/admin/cms/contact">Contact</router-link>
      </div>

      <!-- Direct Navigation Links -->
      <router-link to="/admin/services"><i class="bi bi-tools"></i> Services</router-link>
      <router-link to="/admin/projects"><i class="bi bi-briefcase"></i> Projects</router-link>
      <router-link to="/admin/experiences"><i class="bi bi-person-badge"></i> Experiences</router-link>
      <router-link to="/admin/educations"><i class="bi bi-mortarboard"></i> Educations</router-link>
      <router-link to="/admin/skills"><i class="bi bi-stars"></i> Skills</router-link>
      <router-link to="/admin/clients"><i class="bi bi-people"></i> Clients</router-link>
      <router-link to="/admin/settings"><i class="bi bi-gear"></i> Settings</router-link>
    </nav>
  </div>
  <div class="main-content">
    <router-view></router-view>
  </div>
</template>

<script>
import { toggleDropdown, toggleSidebar } from '@/utils/adminUI.js';

export default {
  name: 'AdminLayout',
  methods: {
    handleDropdownToggle(dropdownId) {
      toggleDropdown(dropdownId);
    },
    handleSidebarToggle() {
      toggleSidebar();
    },
  },
};
</script>

<style scoped>

.dropdown-content {
  padding-left: 20px;
}

.router-link {
  text-decoration: none;
  color: inherit;
}

.thumbnail-preview {
  width: 100%;
  max-width: 400px;
  height: auto;
  border-radius: 8px;
}

.btn {
  margin-top: 15px;
}
</style>
