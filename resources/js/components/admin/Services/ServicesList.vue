<template>
  <div class="service-management">
    <h2>Service Management</h2>
    <router-link to="/admin/services/create">
      <button class="btn btn-success">Add Service</button>
    </router-link>

    <vue-good-table
      :columns="columns"
      :rows="services"
      :search-options="{ enabled: true }"
      :pagination-options="{ enabled: true, perPage: 5 }"
    >
      <template #table-row="props">
        <!-- Icon column -->
        <span v-if="props.column.field === 'icon'">
          <span v-html="props.row.icon_code_html"></span>
        </span>
        <!-- Image column -->
        <span v-else-if="props.column.field === 'image_url'">
          <img :src="props.row.image_url" alt="Service Image" class="service-image" />
        </span>
        <!-- Actions column -->
        <span v-else-if="props.column.field === 'actions'">
          <button class="btn btn-danger btn-sm" @click="deleteService(props.row.id)">Delete</button>
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
  name: 'ServiceManagement',
  components: {
    VueGoodTable,
  },
  data() {
    return {
      services: [],
      columns: [
        { label: 'Title', field: 'title', sortable: true },
        { label: 'Icon', field: 'icon' },
        { label: 'Image', field: 'image_url' },
        { label: 'Content', field: 'content', sortable: true },
        { label: 'Actions', field: 'actions', sortable: false },
      ],
    };
  },
  created() {
    this.fetchServices();
  },
  methods: {
    async fetchServices() {
      try {
        const response = await api.get('/services');
        this.services = response.data;
      } catch (error) {
        console.error('Failed to load services:', error);
        alert('Failed to load services. Please try again.');
      }
    },
    async deleteService(serviceId) {
      try {
        await api.delete(`/services/${serviceId}`);
        this.services = this.services.filter((service) => service.id !== serviceId);
        alert(`Service with ID ${serviceId} deleted successfully.`);
      } catch (error) {
        console.error('Failed to delete service:', error);
        alert('Failed to delete service. Please try again.');
      }
    },
  },
};
</script>