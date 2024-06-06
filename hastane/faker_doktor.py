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
uzmanlik_alanlari = [
    "Kardiyoloji",
    "Nöroloji",
    "Ortopedi",
    "Göz Hastalıkları",
    "Kulak Burun Boğaz",
    "Dermatoloji",
    "Üroloji",
    "Psikiyatri",
    "Onkoloji",
    "Gastroenteroloji",
    "Dahiliye"
]

hastane = [
    "Acıbadem Hastanesi",
    "Memorial Hastanesi",
    "Florence Nightingale Hastanesi",
    "Medical Park Hastanesi",
    "Liv Hospital",
    "Kocaeli Üniversitesi Hastanesi",
    "Pendik Devlet Hastanesi",
    "Tuzla Devlet Hastanesi",
    "İstanbul Üniversitesi Tıp Fakültesi Hastanesi",
    "Kocaeli Devlet Hastanesi"
]



for _ in range(200):  
    ad = random.choice(isimler)
    soyad = random.choice(soyisimler)
    uzmanlikalanı=random.choice(uzmanlik_alanlari)
    hastaneismi= random.choice(hastane)
   
    
    sql_query = "INSERT INTO Doktorlar (Ad, Soyad, UzmanlıkAlani, Hastane_ismi) VALUES ('{}', '{}', '{}', '{}')".format(ad, soyad, uzmanlikalanı, hastaneismi)
    cursor.execute(sql_query)


conn.commit()

cursor.close()
conn.close()
