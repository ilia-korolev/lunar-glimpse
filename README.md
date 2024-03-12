# flutter_astronomy

Flutter Astronomy

## Getting Started

Docker compose dev (only DB):
```
docker compose -f docker-compose.dev.yaml --env-file .env.dev up
```

Docker compose prod:
```
docker compose -f docker-compose.prod.yaml --env-file .env.prod up -d
```

Build and push the web frontend docker image
```
git pull &&
cd frontend/ &&
flutter build web --dart-define FLAVOR=production &&
docker build . -f web.Dockerfile -t ghcr.io/ilia-korolev/astro-web:latest &&
docker push ghcr.io/ilia-korolev/astro-web:latest &&
cd ..
```

Build and push the backend docker image
```
git pull &&
cd backend/ &&
dart_frog build &&
cd build/ &&
docker build . -t ghcr.io/ilia-korolev/astro-backend:latest &&
docker push ghcr.io/ilia-korolev/astro-backend:latest
```
