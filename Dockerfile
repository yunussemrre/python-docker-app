# Adim 1: Temel imajimizi seciyoruz. Python 3.9'un kurulu oldugu bir imaj.
FROM python:3.9-slim

# Adim 2: Imaj icinde calisma klasorumuzu olusturuyoruz.
WORKDIR /app

# Adim 3: Bilgisayarimizdaki uygulama kodunu, imajin icindeki /app klasorune kopyaliyoruz.
# Soldaki '.' bu klasordeki her sey demek, sagdaki '.' ise WORKDIR ile belirttigimiz /app demek.
COPY . .

# Adim 4: Konteyner baslatildiginda hangi komutun calistirilacagini belirtiyoruz.
# Bu komut app.py dosyasini calistiracak.
CMD ["python", "app.py"]
