# FDTD Elektromanyetik Dalga Simülasyonu

Sonlu Farklar Zaman Domeninde (FDTD) yöntemi ile elektromanyetik dalga yayılımının interaktif simülasyonu.

## 🎓 Proje Geçmişi

Bu proje, 1998 yılında Gazi Üniversitesi Elektrik-Elektronik Mühendisliği Bölümü'nde hazırlanan bitirme ödevinin modern bir uygulamasıdır. Orijinal C programı, HTML5/JavaScript kullanılarak interaktif web uygulamasına dönüştürülmüştür.

## 🚀 Özellikler

### 1D FDTD Editörü
- İnteraktif malzeme ekleme (fareyle tıkla-sürükle)
- 5 farklı malzeme türü (Hava, Dielektrik εr=4/5.7, Metal, Kayıplı)
- 6 hazır geometri şablonu
- Geometri kaydetme/yükleme
- Gerçek zamanlı simülasyon kontrolü

### 3D FDTD Simülasyonu
- WebGL ile 3D görselleştirme
- Küp, küre, silindir, koni şekil araçları
- Kamera kontrolü (döndürme, zoom)
- Dalga yayılım animasyonu

## 🐳 Docker ile Çalıştırma

### Docker Compose (Önerilen)
```bash
docker-compose up -d
```
Tarayıcıda açın: http://localhost:8080

### Manuel Docker
```bash
# Image oluştur
docker build -t fdtd-simulation .

# Container başlat
docker run -d -p 8080:80 --name fdtd fdtd-simulation
```

### Docker Hub'dan Çekme
```bash
docker pull hcceylan/fdtd:latest
docker run -d -p 8080:80 hcceylan/fdtd:latest
```

## 💻 Yerel Geliştirme

Dosyaları doğrudan tarayıcıda açabilirsiniz:
```bash
open index.html
# veya
open interactive_fdtd_editor.html
open interactive_fdtd_3d.html
```

## 📚 Teorik Arka Plan

FDTD yöntemi, Maxwell denklemlerini zaman ve uzay domeninde sonlu farklar kullanarak sayısal olarak çözer:

**Maxwell Denklemleri:**
- ∂B/∂t + ∇×E = 0
- ∂D/∂t - ∇×H = -J

**Yee Algoritması:**
- Elektrik ve manyetik alan bileşenleri yarım adım kaydırılmış şekilde hesaplanır
- Kararlılık koşulu: c·Δt < Δx (Courant koşulu)

## 📖 Kaynaklar

1. K.S. Yee, "Numerical solutions of initial boundary value problems involving Maxwell's equations in isotropic media," IEEE Trans. Antennas Propagat., 1966
2. A. Taflove, "Computational Electrodynamics: The Finite-Difference Time-Domain Method"

## 👤 Yazar

**H. Çağlayan Ceylan**
- Gazi Üniversitesi, Elektrik-Elektronik Mühendisliği (1998)
- GitHub: [@hcceylan](https://github.com/hcceylan)

## 📄 Lisans

MIT License
