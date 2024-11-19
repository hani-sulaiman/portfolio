<template>
  <div class="education-management">
    <h2>Education Management</h2>
    <router-link to="/admin/educations/create">
      <button class="btn btn-success">Add Education</button>
    </router-link>
    <vue-good-table
      :columns="columns"
      :rows="educations"
      :search-options="{ enabled: true }"
      :pagination-options="{ enabled: true, perPage: 5 }">
      <template #table-row="props">
        <span v-if="props.column.field === 'actions'">
          <router-link :to="{ name: 'EditEducationPage', params: { id: props.row.id } }">
            <button class="btn btn-primary btn-sm">Edit</button>
          </router-link>
          <button class="btn btn-danger btn-sm" @click="deleteEducation(props.row.id)">Delete</button>
        </span>
        <span v-else-if="props.column.field === 'certificate_link'">
          <a :href="props.row.certificate_link" target="_blank">Certificate</a>
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
  name: 'EducationManagement',
  components: {
    VueGoodTable,
  },
  data() {
    return {
      educations: [],
      columns: [
        { label: 'Title', field: 'title', sortable: true },
        { label: 'Institute', field: 'institute', sortable: true },
        { label: 'From Date', field: 'from_date', sortable: true },
        { label: 'To Date', field: 'to_date', sortable: true },
        { label: 'Certificate Link', field: 'certificate_link', sortable: false },
        { label: 'Actions', field: 'actions', sortable: false },
      ],
    };
  },
  created() {
    this.fetchEducations();
  },
  methods: {
    async fetchEducations() {
      try {
        const response = await api.get('/educations');
        this.educations = response.data;
      } catch (error) {
        console.error('Failed to load educations:', error);
        alert('Failed to load educations. Please try again.');
      }
    },
    async deleteEducation(educationId) {
      try {
        await api.delete(`/educations/${educationId}`);
        this.educations = this.educations.filter((education) => education.id !== educationId);
        alert(`Education with ID ${educationId} has been deleted.`);
      } catch (error) {
        console.error('Failed to delete education:', error);
        alert('Failed to delete education. Please try again.');
      }
    },
  },
};
</script>
  