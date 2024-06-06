import pyodbc
from faker import Faker
import random

# Faker nesnesi oluştur
fake = Faker('tr_TR')

conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=LAPTOP-HMHG8A0R\\SQLEXPRESS;DATABASE=Hastane;Trusted_Connection=yes')

cursor = conn.cursor()

# İsimler ve soyisimler listesi
isimler = ["Yusuf", "Alparslan", "Miraç", "Ömer Asaf", "Eymen", "Göktuğ", "Ömer", "Mustafa", "Aras", "Ali Asaf", "Ahmet", "Ali", "Kerem", "Poyraz", "Hamza", "Muhammed", "Çınar", "Mehmet", "Metehan", "Muhammed Ali", "Ayaz", "Emir", "Yiğit", "Mert", "Umut", "Yunus Emre", "İbrahim", "Alperen", "Kuzey", "Miran", "Zeynep", "Elif", "Asel", "Asya", "Defne", "Nehir", "Azra", "Zümra", "Eylül", "Ecrin", "Meryem", "Lina", "Eslem", "Masal", "Ebrar", "Elisa", "Ela", "Alya", "Zehra", "Miray", "Duru", "Hiranur", "Buğlem", "Ada", "Yağmur", "Esila", "İkra", "Öykü", "Gökçe", "Melek"]
soyisimler = ["Şen", "Kandemir", "Çevik", "Erkuran", "Tüten", "Öztürk", "Yüzbaşıoğlu", "Vural", "Yücel", "Sönmez", "Ertekin", "Dede", "Uyanık", "Aslan", "Akbulut", "Orhon", "Uz", "Yavuz", "Erdem", "Kulaç"]

# Faker ile rastgele veri üret ve SQL Server tablosuna ekle
for _ in range(200):  # 200 adet rastgele kayıt ekleyelim
    ad = random.choice(isimler)
    soyad = random.choice(soyisimler)
    dogum_tarihi = fake.date_of_birth(minimum_age=23, maximum_age=73)  # 23 ile 73 yaşları arasında doğum tarihleri
    cinsiyet = random.choice(['Erkek', 'Kadın'])
    telefon = '5' + ''.join([str(random.randint(0, 9)) for _ in range(9)])
    adres = fake.address()
    
    sql_query = "INSERT INTO Hastalar (Ad, Soyad, DogumTarihi, Cinsiyet, Telefon, Adres) VALUES ('{}', '{}', '{}', '{}', '{}', '{}')".format(ad, soyad, dogum_tarihi, cinsiyet, telefon, adres)
    cursor.execute(sql_query)

# Değişiklikleri kaydet
conn.commit()

# Bağlantıyı kapat
cursor.close()
conn.close()
