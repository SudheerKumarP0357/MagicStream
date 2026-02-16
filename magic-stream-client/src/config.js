export const getConfig = () => {
  return window.__RUNTIME_CONFIG__ || {
    apiUrl: 'http://localhost:3000' // fallback for development
  };
};