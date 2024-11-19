// src/utils/domUtils.js

/**
 * Toggles the dropdown visibility by element ID
 * @param {string} dropdownId - The ID of the dropdown element
 */
export function toggleDropdown(dropdownId) {
    const dropdown = document.getElementById(dropdownId);
    if (dropdown) {
      dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
    }
  }
  
  /**
   * Toggles the sidebar visibility
   */
  export function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    if (sidebar) {
      sidebar.classList.toggle('hidden');
    }
  }
  