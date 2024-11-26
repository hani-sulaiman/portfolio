<template>
  <component :is="layout">
    <router-view />
  </component>
</template>

<script>
import PublicLayout from '@/layout/PublicLayout.vue';
import AdminLayout from '@/layout/AdminLayout.vue';
import GeneralLayout from '@/layout/GeneralLayout.vue';

export default {
  name: 'App',
  computed: {
    layout() {
      if (this.$route.meta.layout === 'general') {
        return GeneralLayout;
      } else if (this.$route.meta.layout === 'admin') {
        return AdminLayout;
      } else if (this.$route.meta.layout === 'public') {
        return PublicLayout;
      }
    }
  },
  components: {
    PublicLayout,
    AdminLayout,
    GeneralLayout
  }
};
</script>
