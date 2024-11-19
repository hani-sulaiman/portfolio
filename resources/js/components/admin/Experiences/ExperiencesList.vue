<template>
  <div class="experience-management">
    <h2>Experience Management</h2>
    <router-link to="/admin/experiences/create">
      <button class="btn btn-success">Add Experience</button>
    </router-link>

    <vue-good-table
      :columns="columns"
      :rows="experiences"
      :search-options="{ enabled: true }"
      :pagination-options="{ enabled: true, perPage: 5 }"
    >
      <template #table-row="props">
        <span v-if="props.column.field === 'actions'">
          <router-link :to="{ name: 'EditExperiencePage', params: { id: props.row.id } }">
            <button class="btn btn-primary btn-sm">Edit</button>
          </router-link>
          <button class="btn btn-danger btn-sm" @click="deleteExperience(props.row.id)">Delete</button>
        </span>
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
  name: 'ExperienceManagement',
  components: {
    VueGoodTable,
  },
  data() {
    return {
      experiences: [],
      columns: [
        { label: 'Title', field: 'title', sortable: true },
        { label: 'Source', field: 'source', sortable: true },
        { label: 'From Date', field: 'from_date', sortable: true },
        { label: 'To Date', field: 'to_date', sortable: true },
        { label: 'Actions', field: 'actions', sortable: false },
      ],
    };
  },
  created() {
    this.fetchExperiences();
  },
  methods: {
    async fetchExperiences() {
      try {
        const response = await api.get('/experiences');
        this.experiences = response.data;
      } catch (error) {
        console.error('Failed to load experiences:', error);
        alert('Failed to load experiences. Please try again.');
      }
    },
    async deleteExperience(experienceId) {
      try {
        await api.delete(`/experiences/${experienceId}`);
        this.experiences = this.experiences.filter((experience) => experience.id !== experienceId);
        alert(`Experience with ID ${experienceId} deleted successfully.`);
      } catch (error) {
        console.error('Failed to delete experience:', error);
        alert('Failed to delete experience. Please try again.');
      }
    },
  },
};
</script>