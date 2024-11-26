<template>
  <div class="project-management">
    <h2>Project Management</h2>
    <router-link to="/admin/projects/create">
      <button class="btn btn-success">Add Project</button>
    </router-link>

    <vue-good-table :columns="columns" :rows="projects" :search-options="{ enabled: true }"
      :pagination-options="{ enabled: true, perPage: 5 }">
      <template #table-row="props">
        <!-- Thumbnail image column -->
        <span v-if="props.column.field === 'thumbnail_image'">
          <img :src="props.row.thumbnail_url" alt="Thumbnail" class="thumbnail-image" />
        </span>
        <!-- Actions column -->
        <span v-else-if="props.column.field === 'actions'">
          <button class="btn btn-danger btn-sm" @click="deleteProject(props.row.id)">Delete</button>
        </span>
        <!-- Service column - ensure correct reference -->
        <span v-else-if="props.column.field === 'services'">
          <span v-for="service in props.row.services" class="service">
            {{ service.title }} 
          </span>
        </span>
        <!-- Other columns -->
        <span v-else>
          {{ props.formattedRow[props.column.field] }}
        </span>
      </template>
    </vue-good-table>
  </div>
</template>

<script>
import { VueGoodTable } from 'vue-good-table-next';
import api from '@/api';
import 'vue-good-table-next/dist/vue-good-table-next.css';

export default {
  name: 'ProjectManagement',
  components: {
    VueGoodTable,
  },
  data() {
    return {
      projects: [],
      columns: [
        { label: 'Title', field: 'title', sortable: true },
        { label: 'Thumbnail', field: 'thumbnail_image' },
        { label: 'Quick Info', field: 'quick_info', sortable: true },
        { label: 'Services', field: 'services', sortable: false },
        { label: 'Start Date', field: 'start_date', sortable: true },
        { label: 'Client', field: 'client_name', sortable: true },
        { label: 'Actions', field: 'actions', sortable: false },
      ],
    };
  },
  async created() {
    await this.fetchProjects();
  },
  methods: {
    async fetchProjects() {
      try {
        const response = await api.get('/projects');
        // Assuming response.data contains an array of projects with related services
        this.projects = response.data.map((project) => ({
          ...project,
          thumbnail_image: `${project.thumbnail_url}`, // Ensure URL is correct
        }));
      } catch (error) {
        console.error('Failed to load projects:', error);
        alert('Failed to load projects. Please try again.');
      }
    },
    async deleteProject(projectId) {
      try {
        await api.delete(`/projects/${projectId}`);
        this.projects = this.projects.filter((project) => project.id !== projectId);
        alert(`Project with ID ${projectId} deleted successfully.`);
      } catch (error) {
        console.error('Failed to delete project:', error);
        alert('Failed to delete project. Please try again.');
      }
    },
  },
};
</script>