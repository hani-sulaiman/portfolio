<template>
  <div class="client-management">
    <h2>Client Management</h2>
    <router-link to="/admin/clients/create">
      <button class="btn btn-success">Create Client</button>
    </router-link>

    <vue-good-table
      :columns="columns"
      :rows="clients"
      :search-options="{ enabled: true }"
      :pagination-options="{ enabled: true, perPage: 5 }"
    >
      <template v-slot:table-row="props">
        <span v-if="props.column.field === 'photo'">
          <img :src="props.row.photo_url" alt="Client Photo" class="client-photo" />
        </span>
        <span v-else-if="props.column.field === 'actions'">
          <button class="btn btn-danger btn-sm" @click="deleteClient(props.row.id)">Delete</button>
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
  name: 'ClientManagement',
  components: {
    VueGoodTable,
  },
  data() {
    return {
      clients: [],
      columns: [
        { label: 'Full Name', field: 'full_name', sortable: true },
        { label: 'Email', field: 'email', sortable: true },
        { label: 'Major', field: 'major', sortable: true },
        { label: 'Photo', field: 'photo' },
        { label: 'Comment', field: 'comment', sortable: false },
        { label: 'Actions', field: 'actions', sortable: false },
      ],
    };
  },
  created() {
    this.fetchClients();
  },
  methods: {
    async fetchClients() {
      try {
        const response = await api.get('/clients');
        this.clients = response.data;
      } catch (error) {
        console.error('Failed to load clients:', error);
        alert('Failed to load clients. Please try again.');
      }
    },
    async deleteClient(clientId) {
      try {
        await api.delete(`/clients/${clientId}`);
        this.clients = this.clients.filter((client) => client.id !== clientId);
        alert(`Client with ID ${clientId} deleted successfully.`);
      } catch (error) {
        console.error('Failed to delete client:', error);
        alert('Failed to delete client. Please try again.');
      }
    },
  },
};
</script>