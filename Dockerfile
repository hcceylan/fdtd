# FDTD Simulation - Docker Image
# Nginx ile statik dosyaları serve eder

FROM nginx:alpine

# Metadata
LABEL maintainer="H. Çağlayan Ceylan"
LABEL description="FDTD Electromagnetic Wave Simulation"
LABEL version="1.0"

# Nginx config dosyasını kopyala
COPY nginx.conf /etc/nginx/nginx.conf

# HTML dosyalarını kopyala
COPY *.html /usr/share/nginx/html/

# Index sayfası oluştur
COPY index.html /usr/share/nginx/html/

# Port 80'i aç
EXPOSE 80

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]
