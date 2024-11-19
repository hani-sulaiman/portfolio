<template>
  <div class="skill-management">
    <h2>Skill Management</h2>
    <router-link to="/admin/skills/create">
      <button class="btn btn-success">Add Skill</button>
    </router-link>

    <vue-good-table
      :columns="columns"
      :rows="skills"
      :search-options="{ enabled: true }"
      :pagination-options="{ enabled: true, perPage: 5 }"
      v-if="skills"
    >
      <template #table-row="props">
        <span v-if="props.column.field === 'icon_url'">
          <img :src="props.row.icon_url" alt="Skill Icon" class="icon-image-preview" />
        </span>
        <span v-else-if="props.column.field === 'actions'">
          <button class="btn btn-danger btn-sm" @click="deleteSkill(props.row.id)">Delete</button>
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
  name: 'SkillManagement',
  components: {
    VueGoodTable,
  },
  data() {
    return {
      skills: [],
      columns: [
        { label: 'Title', field: 'title', sortable: true },
        { label: 'Percentage', field: 'percentage', sortable: true },
        { label: 'Icon Image', field: 'icon_url' },
        { label: 'Actions', field: 'actions', sortable: false },
      ],
    };
  },
  async created() {
    await this.fetchSkills();
  },
  methods: {
    async fetchSkills() {
      try {
        const response = await api.get('/skills');
        this.skills = response.data;
      } catch (error) {
        console.error('Failed to load skills:', error);
        alert('Failed to load skills. Please try again.');
      }
    },
    async deleteSkill(skillId) {
      try {
        await api.delete(`/skills/${skillId}`);
        this.skills = this.skills.filter((skill) => skill.id !== skillId);
        alert(`Skill with ID ${skillId} deleted successfully.`);
      } catch (error) {
        console.error('Failed to delete skill:', error);
        alert('Failed to delete skill. Please try again.');
      }
    },
  },
};
</script>