import axios from "axios";

// Create an Axios instance with default configurations
const api = axios.create({
    baseURL: "/api", // Prefix all requests with "/api"
    withCredentials: true, // Allow sending cookies with cross-origin requests (for Sanctum)
    headers: {
        "Content-Type": "application/json",
    },
});

// Request interceptor to add Authorization token and dynamically set Content-Type and CSRF token
api.interceptors.request.use(
    (config) => {
        // Retrieve the admin token from localStorage
        const token = localStorage.getItem("adminToken");
        if (token) {
            config.headers["Authorization"] = `Bearer ${token}`;
        }

        // Add CSRF token to headers if available
        const csrfToken = document
            .querySelector('meta[name="csrf-token"]')
            .getAttribute("content");
        if (csrfToken) {
            config.headers["X-CSRF-TOKEN"] = csrfToken;
        }

        if (!(config.data instanceof FormData)) {
            config.headers["Content-Type"] = "application/json";
        }
        return config;
    },
    (error) => {
        return Promise.reject(error);
    }
);

export default api;
