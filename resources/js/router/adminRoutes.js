import AdminDashboard from '../views/admin/Dashboard.vue';
import AdminSettings from '../views/admin/Settings.vue';
import AdminLogin from '../views/admin/Login.vue';
import HeroSectionCms from '../components/admin/cms/Home/HeroSection.vue';
import ServicesSectionCms from '../components/admin/cms/Home/ServicesSection.vue';
import ProjectsSectionCms from '../components/admin/cms/Home/ProjectsSection.vue';
import ClientSectionCms from '../components/admin/cms/Home/ClientSection.vue';
import WorkTogatherSectionCms from '../components/admin/cms/Home/WorkTogatherSection.vue';
import ClientsList from '../components/admin/Clients/ClientsList.vue';
import ClientsCreate from '../components/admin/Clients/ClientsCreate.vue';
import EducationsList from '../components/admin/Educations/EducationsList.vue';
import EducationsEdit from '../components/admin/Educations/EducationsEdit.vue';
import EducationsCreate from '../components/admin/Educations/EducationsCreate.vue';
import ExperiencesList from '../components/admin/Experiences/ExperiencesList.vue';
import ExperiencesCreate from '../components/admin/Experiences/ExperiencesCreate.vue';
import ExperiencesEdit from '../components/admin/Experiences/ExperiencesEdit.vue';
import ProjectsList from '../components/admin/Projects/ProjectsList.vue';
import ProjectsCreate from '../components/admin/Projects/ProjectsCreate.vue';
import ServicesList from '../components/admin/Services/ServicesList.vue';
import ServicesCreate from '../components/admin/Services/ServicesCreate.vue';
import SkillsList from '../components/admin/Skills/SkillsList.vue';
import SkillsCreate from '../components/admin/Skills/SkillsCreate.vue';
import Settings from '../views/admin/Settings.vue';

const adminRoutes = [
    { path: '/admin', name: 'AdminDashboard', component: AdminDashboard, meta: { layout: 'admin' } },
    { path: '/admin/settings', name: 'AdminSettings', component: AdminSettings, meta: { layout: 'admin' } },
    { path: '/admin/login', name: 'AdminLogin', component: AdminLogin, meta: { layout: 'general' } },
    
    { path: '/admin/cms/hero-section', name: 'HeroSectionCms', component: HeroSectionCms, meta: { layout: 'admin' } },
    { path: '/admin/cms/services-section', name: 'ServicesSectionCms', component: ServicesSectionCms, meta: { layout: 'admin' } },
    { path: '/admin/cms/projects-section', name: 'ProjectsSectionCms', component: ProjectsSectionCms, meta: { layout: 'admin' } },
    { path: '/admin/cms/client-section', name: 'ClientSectionCms', component: ClientSectionCms, meta: { layout: 'admin' } },
    { path: '/admin/cms/work-togather-section', name: 'WorkTogatherSectionCms', component: WorkTogatherSectionCms, meta: { layout: 'admin' } },

    { path: '/admin/clients', name: 'ClientsList', component: ClientsList, meta: { layout: 'admin' } },
    { path: '/admin/clients/create', name: 'CreateClientPage', component: ClientsCreate, meta: { layout: 'admin' } },

    { path: '/admin/educations', name: 'EducationManagement', component: EducationsList, meta: { layout: 'admin' } },
    { path: '/admin/educations/create', name: 'CreateEducationPage', component: EducationsCreate, meta: { layout: 'admin' } },
    { path: '/admin/educations/edit/:id', name: 'EditEducationPage', component: EducationsEdit, meta: { layout: 'admin' } },

    { path: '/admin/experiences', name: 'ExperienceManagement', component: ExperiencesList , meta: { layout: 'admin' } },
    { path: '/admin/experiences/create', name: 'CreateExperiencePage', component: ExperiencesCreate , meta: { layout: 'admin' } },
    { path: '/admin/experiences/edit/:id', name: 'EditExperiencePage', component: ExperiencesEdit , meta: { layout: 'admin' } },

    { path: '/admin/projects', name: 'ProjectManagement', component: ProjectsList, meta: { layout: 'admin' } },
    { path: '/admin/projects/create', name: 'CreateProjectPage', component: ProjectsCreate, meta: { layout: 'admin' } },


    { path: '/admin/services', name: 'ServiceManagement', component: ServicesList, meta: { layout: 'admin' } },
    { path: '/admin/services/create', name: 'CreateServicePage', component: ServicesCreate, meta: { layout: 'admin' } },

    { path: '/admin/skills', name: 'SkillManagement', component: SkillsList, meta: { layout: 'admin' } },
    { path: '/admin/skills/create', name: 'CreateSkillPage', component: SkillsCreate, meta: { layout: 'admin' } },

    { path: '/admin/settings', name: 'SettingsPage', component: Settings, meta: { layout: 'admin' } },
];

export default adminRoutes;
