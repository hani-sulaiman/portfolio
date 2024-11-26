<template>
  <div class="settings-page">
    <h2>Personal Information Settings</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group" v-for="(label, key) in settingFields" :key="key">
        <label :for="key">{{ label }}</label>
        <input 
          :type="inputType[key] || 'text'" 
          :id="key" 
          v-model="settings[key]" 
          class="form-control" 
          :placeholder="`Enter your ${label.toLowerCase()}`" />
      </div>

      <!-- File Upload for Personal Photo -->
      <div class="form-group">
        <label for="personalPhoto">Personal Photo</label>
        <input type="file" id="personalPhoto" @change="handleImageUpload" class="form-control" />
        <img v-if="photoPreview" :src="photoPreview" alt="Photo Preview" class="photo-preview" />
      </div>

      <!-- File Upload for CV -->
      <div class="form-group">
        <label for="cvFile">CV File (PDF)</label>
        <input type="file" id="cvFile" @change="handleCvUpload" class="form-control" />
        <p v-if="cvLink" class="cv-link">
          <a :href="cvLink" target="_blank">View Current CV</a>
        </p>
      </div>

      <button type="submit" class="btn btn-success">Save Settings</button>
    </form>
  </div>
</template>

<script>
import api from '@/api';

export default {
  name: 'SettingsPage',
  data() {
    return {
      settings: {
        fullname: '',
        phoneNumber: '',
        email: '',
        mainMajor: '',
        whatsappLink: '',
        facebookLink: '',
        instagramLink: '',
        githubLink: '',
        linkedinLink: '',
        address: '',
        experienceStartDate: '',
      },
      settingFields: {
        fullname: 'Full Name',
        phoneNumber: 'Phone Number',
        email: 'Email',
        mainMajor: 'Main Major',
        whatsappLink: 'WhatsApp Link',
        facebookLink: 'Facebook Link',
        instagramLink: 'Instagram Link',
        githubLink: 'GitHub Link',
        linkedinLink: 'LinkedIn Link',
        address: 'Address',
        experienceStartDate: 'Experience Start Date',
      },
      inputType: {
        email: 'email',
        whatsappLink: 'url',
        facebookLink: 'url',
        instagramLink: 'url',
        githubLink: 'url',
        linkedinLink: 'url',
        experienceStartDate: 'date',
      },
      personalPhoto: null,
      photoPreview: '',
      cvFile: null,
      cvLink: '',
    };
  },
  async created() {
    await this.fetchSettings();
  },
  methods: {
    async fetchSettings() {
      try {
        const response = await api.get('/settings');
        if (response.data.length) {
          response.data.forEach(setting => {
            if (this.settings.hasOwnProperty(setting.key_setting)) {
              this.settings[setting.key_setting] = setting.value_setting;
            } else if (setting.key_setting === 'personalPhoto') {
              this.photoPreview = setting.value_setting;
            } else if (setting.key_setting === 'cvFile') {
              this.cvLink = setting.value_setting;
            }
          });
        }
      } catch (error) {
        console.error('Failed to load settings:', error);
      }
    },
    handleImageUpload(event) {
      const file = event.target.files[0];
      if (file) {
        this.personalPhoto = file;
        this.photoPreview = URL.createObjectURL(file);
      }
    },
    handleCvUpload(event) {
      const file = event.target.files[0];
      if (file) {
        this.cvFile = file;
      }
    },
    async handleSubmit() {
      const formData = new FormData();

      // Append all settings as form fields
      for (const [key, value] of Object.entries(this.settings)) {
        formData.append(`settings[${key}]`, value);
      }

      // Append the personal photo if available
      if (this.personalPhoto) {
        formData.append('personalPhoto', this.personalPhoto);
      }

      // Append the CV file if available
      if (this.cvFile) {
        formData.append('cvFile', this.cvFile);
      }

      try {
        await api.post('/settings', formData, {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        });
        alert('Settings saved successfully!');
      } catch (error) {
        console.error('Failed to save settings:', error);
        alert('Failed to save settings. Please try again.');
      }
    },
  },
};
</script>

<style scoped>
.settings-page {
  max-width: 800px;
  margin: 20px auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 8px;
  background: #f9f9f9;
}

.form-group {
  margin-bottom: 15px;
}

.photo-preview {
  margin-top: 15px;
  width: 100px;
  height: auto;
  border-radius: 8px;
}

.cv-link {
  margin-top: 10px;
}

.btn {
  margin-top: 15px;
}
</style>
