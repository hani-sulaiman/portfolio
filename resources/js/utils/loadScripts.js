// utils/loadScripts.js
export function loadScript(url) {
    return new Promise((resolve, reject) => {
        if (document.querySelector(`script[src="${url}"]`)) {
            resolve(); // Script is already loaded
            return;
        }

        const script = document.createElement("script");
        script.type = "text/javascript";
        script.async = true;
        script.src = url;

        script.onload = () => resolve();
        script.onerror = () =>
            reject(new Error(`Failed to load script: ${url}`));

        document.body.appendChild(script);
    });
}
