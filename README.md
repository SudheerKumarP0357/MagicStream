# MagicStream 🎬✨

Movie streaming platform with AI recommendation built with modern web technologies (React/Go/gin-gonic/MongoDB) 

---

## About  

This project is a full-stack simulation of a modern **Movie Streaming Platform**, designed to showcase how different technologies can be combined to deliver a scalable, AI-powered application.  

The system brings together a **React-based frontend** for an engaging user experience, a **Go-based backend** for high-performance API services that runs on the gin (gin-gonic) web framework, and an **AI-powered recommendation engine** to personalize movie suggestions using **LangChainGo** and **OpenAI**.  

It also demonstrates how **MongoDB** can serve as a reliable, scalable database solution for managing media metadata and user preferences.  

---

## Features

- Movie Streaming service simulated on the front end using React and React-Player
- Web API service written using GO and runs on the gin-gonic web framework 
- AI Recommendation service using LangChainGo, Go and OpenAI
- Scalable backend storage provided by MongoDB

---

## Tech Stack

| Frontend / Client | JavaScript / React |
| Backend / Server | Go / gin-gonic |
| Storage / Database | MongoDB |
 
---

## Link to Video Tutorial on How to Build the App
- https://youtu.be/jBf7of9JTV8

---

### Installation

1. Clone the repo  
   ```bash
   git clone https://github.com/GavinLonDigital/MagicStream.git
   cd MagicStream

2. Nothing

docker run --name backend -d -p 8080:8080 -e ALLOWED_ORIGINS=http://localhost:8000 -e MONGODB_URI=mongodb://root:password@host.docker.internal:27017 -e DATABASE_NAME=magic-stream-movies -e OPENAI_API_KEY=179RevaWlyQkWlpki8A -e RECOMMENDED_MOVIE_LIMIT=5 -e SECRET_KEY=your_secret_key -e SECRET_REFRESH_KEY=your_refresh_secret_key magic-stream/backend

docker run --name frontend -d -p 8000:80 -e API_URL=http://localhost:8080 magic-stream/frontend

docker run --name mongodb -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=password  magic-stream/mongodb