# Stage 1: Build the Flutter web application
FROM ubuntu:20.04 AS build

ENV DEBIAN_FRONTEND=noninteractive

# Install  dependencies
RUN apt-get update && \
    apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback python3 && \
    apt-get clean

# Set Flutter environment variables
ENV PUB_HOSTED_URL=https://pub.flutter-io.cn \
    FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# Download Flutter SDK from Flutter GitHub repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set Flutter environment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:$PATH"

# Run flutter doctor to ensure setup is correct
RUN flutter doctor

# Enable Flutter web
RUN flutter channel master && \
    flutter upgrade && \
    flutter config --enable-web

# Set the working directory
WORKDIR /app

# Copy the pubspec files and get dependencies
COPY kindergarten_app/pubspec.yaml kindergarten_app/pubspec.lock ./
RUN flutter pub get

# Copy the rest of the application code
COPY kindergarten_app .

# Build the Flutter web application
RUN flutter build web

# Stage 2: Serve the Flutter web application with Nginx
FROM nginx:alpine

# Copy the built files to the nginx web directory
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
