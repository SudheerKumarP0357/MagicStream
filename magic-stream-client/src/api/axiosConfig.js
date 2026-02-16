import axios from 'axios';
import { getConfig } from '../config';
const config = getConfig();
// const apiUrl = import.meta.env.VITE_API_BASE_URL;
const apiUrl =  config.apiUrl

export default axios.create({
    baseURL:apiUrl,
    headers:{'Content-Type':'application/json'},
    withCredentials: true,
})