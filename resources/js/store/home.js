import api from "@/api";

const state = {
    heroQuote: "",
    servicesQuote: "",
    projectsQuote: "",
    clientsQuote: "",
    settings: {},
    statistics: {},
    services: [],
    educations: [],
    experiences: [],
    skills: [],
    clients: [],
};

const getters = {
    heroQuote: (state) => state.heroQuote,
    servicesQuote: (state) => state.servicesQuote,
    projectsQuote: (state) => state.projectsQuote,
    clientsQuote: (state) => state.clientsQuote,
    settings: (state) => state.settings,
    statistics: (state) => state.statistics,
    services: (state) => state.services,
    projects: (state) => state.projects,
    experiences: (state) => state.experiences,
    educations: (state) => state.educations,
    skills: (state) => state.skills,
    clients: (state) => state.clients,
};

const mutations = {
    SET_HERO_QUOTE(state, quote) {
        state.heroQuote = quote;
    },
    SET_SERVICES_QUOTE(state, quote) {
        state.servicesQuote = quote;
    },
    SET_PROJECTS_QUOTE(state, quote) {
        state.projectsQuote = quote;
    },
    SET_CLIENTS_QUOTE(state, quote) {
        state.clientsQuote = quote;
    },
    SET_SETTINGS(state, settings) {
        state.settings = settings;
    },
    SET_STATISTICS(state, statistics) {
        state.statistics = statistics;
    },
    SET_SERVICES(state, services) {
        state.services = services;
    },
    SET_PROJECTS(state, projects) {
        state.projects = projects;
    },
    SET_EDUCATIONS(state, educations) {
        state.educations = educations;
    },
    SET_EXPERIENCES(state, experiences) {
        state.experiences = experiences;
    },
    SET_SKILLS(state, skills) {
        state.skills = skills;
    },
    SET_CLIENTS(state, clients) {
        state.clients = clients;
    },
};

const actions = {
    async fetchSettings({ commit }) {
        try {
            const response = await api.get("/all-settings");
            commit("SET_SETTINGS", response.data);
        } catch (error) {
            console.error("Failed to fetch settings:", error);
        }
    },
    async fetchHeroSection({ commit }) {
        try {
            const heroResponse = await api.get("/hero-section");

            commit("SET_HERO_QUOTE", heroResponse.data.content.quote);

            const statisticsResponse = await api.get("/statistics");

            commit("SET_STATISTICS", statisticsResponse.data);
        } catch (error) {
            console.error("Failed to fetch hero section:", error);
        }
    },
    async fetchServicesSection({ commit }) {
        try {
            const servicesSectionResponse = await api.get("/services-section");
            commit(
                "SET_SERVICES_QUOTE",
                servicesSectionResponse.data.content.quote
            );

            const allServicesResponse = await api.get("/services");
            commit("SET_SERVICES", allServicesResponse.data);
        } catch (error) {
            console.error("Failed to fetch services section:", error);
        }
    },
    async fetchProjectsSection({ commit }) {
        try {
            const projectsSectionResponse = await api.get("/projects-section");
            commit(
                "SET_PROJECTS_QUOTE",
                projectsSectionResponse.data.content.quote
            );

            const allProjectsResponse = await api.get("/recent-projects");
            commit("SET_PROJECTS", allProjectsResponse.data);
        } catch (error) {
            console.error("Failed to fetch projects section:", error);
        }
    },
    async fetchEducationsSection({ commit }) {
        try {
            const allEducationsResponse = await api.get("/educations");
            commit("SET_EDUCATIONS", allEducationsResponse.data);
        } catch (error) {
            console.error("Failed to fetch educations section:", error);
        }
    },
    async fetchExperiencesSection({ commit }) {
        try {
            const allExperiencesResponse = await api.get("/experiences");
            commit("SET_EXPERIENCES", allExperiencesResponse.data);
        } catch (error) {
            console.error("Failed to fetch experiences section:", error);
        }
    },
    async fetchSkillsSection({ commit }) {
        try {

            const allSkillsResponse = await api.get("/skills");
            commit("SET_SKILLS", allSkillsResponse.data);
        } catch (error) {
            console.error("Failed to fetch skills section:", error);
        }
    },
    async fetchClientsSection({ commit }) {
        try {
            const clientsSectionResponse = await api.get("/clients-section");
            commit(
                "SET_CLIENTS_QUOTE",
                clientsSectionResponse.data.content.quote
            );

            const allClientsResponse = await api.get("/clients");
            commit("SET_CLIENTS", allClientsResponse.data);
        } catch (error) {
            console.error("Failed to fetch clients section:", error);
        }
    },
};

export default {
    namespaced: true,
    state,
    getters,
    mutations,
    actions,
};
