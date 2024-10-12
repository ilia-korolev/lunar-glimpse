<div align="center">
  <a title="Contributors" href="https://github.com/ilia-korolev/lunar-glimpse/graphs/contributors"><img src="https://img.shields.io/github/contributors/ilia-korolev/lunar-glimpse?style=for-the-badge"/></a>
  <a title="Stargazers" href="https://github.com/ilia-korolev/lunar-glimpse/stargazers"><img src="https://img.shields.io/github/stars/ilia-korolev/lunar-glimpse.svg?style=for-the-badge"/></a>
  <a title="Issues" href="https://github.com/ilia-korolev/lunar-glimpse/issues"><img src="https://img.shields.io/github/issues/ilia-korolev/lunar-glimpse.svg?style=for-the-badge"/></a>
  <a title="License" href="https://github.com/ilia-korolev/lunar-glimpse/blob/master/LICENSE"><img src="https://img.shields.io/github/license/ilia-korolev/lunar-glimpse.svg?style=for-the-badge"/></a>
  <a title="LinkedIn" href="https://www.linkedin.com/in/ikorolev-dev/"><img src="https://img.shields.io/badge/LinkedIn-555555?style=for-the-badge&logo=linkedin"/></a>
</div>

<div align="center">
  <img src="https://github.com/ilia-korolev/lunar-glimpse/assets/126729382/69bfeee3-818e-4d2f-b27e-f0a429aecf82" height="150" alt="logo"/>
  <h1 align="center">Lunar Glimpse</h1>
  <p align="center">
    Lunar Glimpse is your gateway to the wonders of space! Dive into a mesmerizing gallery of NASA's Astronomy Picture of the Day (APOD) photos, and stay informed with the latest astronomy news from various sources.
    <br />
    <br />
    <a href="https://github.com/ilia-korolev/lunar-glimpse/issues/new?template=bug_report.yaml">Report Bug</a>
    ·
    <a href="https://github.com/ilia-korolev/lunar-glimpse/issues/new?template=feature_request.yaml">Request Feature</a>
    ·
    <a href="https://github.com/ilia-korolev/lunar-glimpse/issues/new?template=question.yaml">Ask Question</a>
  </p>
</div>

## About the project

<p align="middle">
  <img src="https://github.com/ilia-korolev/lunar-glimpse/assets/126729382/33df8ebc-28dc-4bb8-8b3d-e1231ab9efa7"/>
  <img src="https://github.com/ilia-korolev/lunar-glimpse/assets/126729382/39e02c80-4b6f-4c6c-bc40-fd8948e2fcf7"/>
</p>

**Lunar Glimpse** is an astronomy application designed to bring the cosmos closer to space enthusiasts and curious minds alike. With a focus on user experience and educational value, our app provides a window into the universe through the lens of NASA's Astronomy Picture of the Day (APOD) and a curated selection of the latest astronomy news.

## Features

•  ✅ **Explore a Universe of Photos**: Marvel at awe-inspiring celestial objects and space phenomena captured by NASA's APOD program.

•  ✅ **Favorites at Your Fingertips**: Curate your own collection of your favorite space photos for easy access.

•  ✅ **Unravel the Mysteries**: Read the accompanying description for each picture to gain deeper insights.

•  ✅ **Download and Share**: Save your favorite space photos to your device or share them with friends on social media.

•  ✅ **Stay Up-to-Date on Discoveries**: Read the latest astronomy news from various sources to keep yourself informed about exciting breakthroughs.

•  ✅ **Responsive Design**: Enjoy a stellar experience on any device with our responsive design.

•  ✅ **Light or Dark? You Decide**: Select between a light or dark theme for a comfortable viewing experience.


## Accessing Lunar Glimpse

Download the Android app [here](https://play.google.com/store/apps/details?id=com.lunarglimpse.app) or visit the website [here](https://lunarglimpse.com/) to start your journey through the cosmos. The web version is currently in progress, and we recommend using the mobile app.

## Known Issues

•  **[WEB]** Sharing feature might not work perfectly on mobile devices.

•  **[WEB]** Loading indicator may not appear while high-resolution images load.

## Installation

This section provides detailed instructions on how to get Lunar Glimpse up and running on your local machine for development and testing purposes.

### Prerequisites

•  Docker and Docker Compose

•  Flutter SDK (for frontend)

•  Dart Frog (for backend)


### Development Setup

#### [DEV] Docker Compose 

```bash
docker compose -f docker-compose.dev.yaml --env-file .env.dev up
```

#### [DEV] Running Backend 
```bash
cd backend &&
DB_HOST=localhost DB_NAME='dev_db' DB_USER='dev_user' DB_PASSWORD='dev_password' TRANSLATION_SOURCE=none dart_frog dev
```

#### [PROD] Docker Compose 
```bash
docker compose -f docker-compose.prod.yaml --env-file .env.prod up -d
```

#### [PROD] Building and Deploying Web Frontend Container
```bash
git pull &&
cd frontend/ &&
flutter build web --dart-define FLAVOR=production --wasm &&
docker build . -f web.Dockerfile -t ghcr.io/ilia-korolev/astro-web:latest --platform=linux/amd64 &&
docker push ghcr.io/ilia-korolev/astro-web:latest &&
cd ..
```

#### [PROD] Building and Deploying Backend Container
```bash
git pull &&
cd backend/ &&
dart_frog build &&
cd build/ &&
docker build . -t ghcr.io/ilia-korolev/astro-backend:latest --platform=linux/amd64 &&
docker push ghcr.io/ilia-korolev/astro-backend:latest
```


## Contributing

We welcome contributions to Lunar Glimpse! If you're interested in helping improve the app, please check out our [contributing guidelines](CONTRIBUTING.md).


## Support and Feedback

If you encounter any issues or have suggestions, please feel free to open an issue on our [GitHub repository](https://github.com/ilia-korolev/lunar-glimpse).


## License

Lunar Glimpse is released under the [MIT License](LICENSE).