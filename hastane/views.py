from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, redirect
from django.http import JsonResponse
from django.contrib.auth.hashers import check_password, make_password
from django.db import connection
from datetime import datetime
from django.conf import settings
import json
import hashlib

import os
import google.auth
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.discovery import build, MediaFileUpload
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile



def index(request):
    return render(request, 'index.html')  

def doktor_girisi(request):
    return render(request, 'doktorgirisi.html')

def yönetici_girisi(request):
    return render(request, 'yönetici.html')

def randevu_girisi(request):
    return render(request, 'randevu.html')

def doktor_ekle(request):
    if request.method == 'POST':
        ad = request.POST.get('doktorAdi')
        soyad = request.POST.get('doktorSoyadi')
        uzmanlik_alani = request.POST.get('uzmanlikAlani')
        hastane_ismi = request.POST.get('hastaneAdi')
        sifre = request.POST.get('sifre')

        hashed_input_password = hashlib.sha256(sifre.encode()).hexdigest()

        # Ham SQL sorgusu ile veritabanına veri ekleme
        with connection.cursor() as cursor:
            cursor.execute("INSERT INTO Doktorlar (Ad, Soyad, UzmanlıkAlani, Hastane_ismi,sifre) VALUES (%s, %s, %s, %s,%s)", [ad, soyad, uzmanlik_alani, hastane_ismi,hashed_input_password])

        return JsonResponse({'success': True, 'message': 'Doktor başarıyla eklendi.'})
    else:
       return render(request, 'yönetici.html')


def hasta_ekle(request):
    if request.method == 'POST':
        
        ad = request.POST.get('ad')
        soyad = request.POST.get('soyad')
        dogum_tarihi = request.POST.get('dogumTarihi')
        cinsiyet = request.POST.get('cinsiyet')
        telefon = request.POST.get('telefon')
        adres = request.POST.get('adres')
        sifre = request.POST.get('sifre')

        hashed_input_password = hashlib.sha256(sifre.encode()).hexdigest()

        # Raw SQL query to insert data into the database
        with connection.cursor() as cursor:
            cursor.execute("INSERT INTO Hastalar (Ad, Soyad, DogumTarihi, Cinsiyet, Telefon, Adres, sifre) VALUES (%s, %s, %s, %s, %s, %s,%s)", [ad, soyad, dogum_tarihi, cinsiyet, telefon, adres,hashed_input_password])

        return JsonResponse({'success': True, 'message': 'Hasta başarıyla eklendi.'})
    else:
        return render(request, 'yönetici.html')




def hasta_ara(request):
    hasta_ad = request.GET.get('hasta_ad', '')  # Arama parametresini alın

    with connection.cursor() as cursor:
        cursor.execute("SELECT HastaID, Ad, Soyad, Telefon, Adres FROM Hastalar WHERE Ad LIKE %s OR Soyad LIKE %s", ['%' + hasta_ad + '%', '%' + hasta_ad + '%'])
        hastalar = cursor.fetchall()

    hasta_listesi = [{'id': hasta[0], 'ad': hasta[1], 'soyad': hasta[2], 'telefon': hasta[3], 'adres': hasta[4]} for hasta in hastalar]
    
    # Hata ayıklama için JSON çıktısını kontrol edin
    print("JSON response:", hasta_listesi)
    
    return JsonResponse({'hastalar': hasta_listesi})




def hasta_sil(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        hasta_id = data.get('hasta_id')
        print("Seçilen hasta ID'si:", hasta_id)  # Seçilen hasta ID'sini terminale yazdır

        # Ham SQL sorgusu ile hasta sil
        with connection.cursor() as cursor:
            cursor.execute("DELETE FROM Hastalar WHERE HastaID = %s", [hasta_id])

            # Silme işleminden etkilenen satır sayısını kontrol et
            if cursor.rowcount > 0:
                return JsonResponse({'success': True, 'message': 'Hasta başarıyla silindi.'})
            else:
                return JsonResponse({'success': False, 'message': 'Hasta bulunamadı.'})
    else:
        return JsonResponse({'success': False, 'message': 'Geçersiz istek.'})





def hasta_guncelle(request):
    if request.method == 'POST':
        data = json.loads(request.body)

        hasta_id = data.get('hasta_id')

        ad = data.get('ad')
        soyad = data.get('soyad')
        telefon = data.get('telefon')
        adres = data.get('adres')

        print("Seçilen hasta ID'si:", hasta_id,ad,soyad,telefon,adres)

        # Güncelleme işlemi için ham SQL sorgusu
        with connection.cursor() as cursor:
            cursor.execute("UPDATE Hastalar SET Ad = %s, Soyad = %s, Telefon = %s, Adres = %s WHERE HastaID = %s", [ad, soyad, telefon, adres, hasta_id])

            # Güncelleme işleminden etkilenen satır sayısını kontrol et
            if cursor.rowcount > 0:
                return JsonResponse({'success': True, 'message': 'Hasta başarıyla güncellendi.'})
            else:
                return JsonResponse({'success': False, 'message': 'Hasta güncellenemedi.'})
    else:
        return JsonResponse({'success': False, 'message': 'Geçersiz istek.'})










def doktor_ara(request):
    doktor_ad = request.GET.get('doktor_ad', '')  

    # SQL sorgusuyla doktorları arayın
    with connection.cursor() as cursor:
        cursor.execute("SELECT DoktorID, Ad, Soyad, UzmanlıkAlani, Hastane_ismi FROM Doktorlar WHERE Ad LIKE %s OR Soyad LIKE %s", ['%' + doktor_ad + '%', '%' + doktor_ad + '%'])
        doktorlar = cursor.fetchall()

    # Doktorları JSON formatında döndürün, ID'yi de ekleyin
    doktor_listesi = [{'id': doktor[0], 'ad': doktor[1], 'soyad': doktor[2], 'uzmanlik': doktor[3], 'hastane': doktor[4]} for doktor in doktorlar]
    return JsonResponse({'doktorlar': doktor_listesi})

             

def doktor_sil(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        doktor_id = data.get('doktor_id')
        print("Seçilen doktor ID'si:", doktor_id)  # Seçilen doktor ID'sini terminale yazdır

        # Ham SQL sorgusu ile doktor sil
        with connection.cursor() as cursor:
            cursor.execute("DELETE FROM Doktorlar WHERE DoktorID = %s", [doktor_id])

            # Silme işleminden etkilenen satır sayısını kontrol et
            if cursor.rowcount > 0:
                return JsonResponse({'success': True, 'message': 'Doktor başarıyla silindi.'})
            else:
                return JsonResponse({'success': False, 'message': 'Doktor bulunamadı.'})
    else:
        return JsonResponse({'success': False, 'message': 'Geçersiz istek.'})



def doktor_guncelle(request):
    if request.method == 'POST':
        data = json.loads(request.body)

        doktor_id = data.get('doktor_id')

        

        ad = data.get('ad')
        soyad = data.get('soyad')
        uzmanlik = data.get('uzmanlik')
        hastane = data.get('hastane')

        print("Seçilen doktor ID'si:", doktor_id,ad,soyad,uzmanlik,hastane)

        # Güncelleme işlemi için ham SQL sorgusu
        with connection.cursor() as cursor:
            cursor.execute("UPDATE Doktorlar SET Ad = %s, Soyad = %s, UzmanlıkAlani = %s, Hastane_ismi = %s WHERE DoktorID = %s", [ad, soyad, uzmanlik, hastane, doktor_id])

            # Güncelleme işleminden etkilenen satır sayısını kontrol et
            if cursor.rowcount > 0:
                return JsonResponse({'success': True, 'message': 'Doktor başarıyla güncellendi.'})
            else:
                return JsonResponse({'success': False, 'message': 'Doktor güncellenemedi.'})
    else:
        return JsonResponse({'success': False, 'message': 'Geçersiz istek.'})


def yönetici_girisi(request):
    if request.method == 'POST':
        yonetici_id = request.POST.get('yonetici_id')
        sifre = request.POST.get('sifre')

       
        hashed_input_password = hashlib.sha256(sifre.encode()).hexdigest()
        print(f"Hashed Input Password: {hashed_input_password}")  

        with connection.cursor() as cursor:
            cursor.execute("SELECT sifre FROM Yönetici WHERE YöneticiID = %s", [yonetici_id])
            row = cursor.fetchone()

            if row:
               
                hashed_stored_password = row[0]
                print(f"Stored Password Hash: {hashed_stored_password}")  

                if hashed_input_password == hashed_stored_password:
                    
                    return redirect('yönetici_girisi')
                else:
                   
                    return render(request, 'index.html', {'error_message': 'Hatalı kullanıcı adı veya şifre. Lütfen tekrar deneyin.'})
            else:
                
                return render(request, 'index.html', {'error_message': 'Hatalı kullanıcı adı veya şifre. Lütfen tekrar deneyin.'})
    else:
        
        return render(request, 'yönetici.html')
    



        

def randevu_girisi(request):
    if request.method == 'POST':
        hasta_id = request.POST.get('hasta_id')
        sifre = request.POST.get('sifre')

        
        hashed_input_password = hashlib.sha256(sifre.encode()).hexdigest()
        print(f"Hashed Input Password: {hashed_input_password}")  
     
       

        with connection.cursor() as cursor:
            cursor.execute("SELECT sifre, Ad, Soyad FROM Hastalar WHERE HastaID = %s", [hasta_id])
            row = cursor.fetchone()

            if row:
                
                hashed_stored_password = row[0]
                hasta_ad = row[1]
                hasta_soyad = row[2]
                print(f"Stored Password Hash: {hashed_stored_password}")  

                if hashed_input_password == hashed_stored_password:
                   
                    request.session['hasta_ad'] = hasta_ad
                    request.session['hasta_soyad'] = hasta_soyad
                    request.session['hasta_id'] = hasta_id

                    return redirect('randevu_bilgi')
                else:
                    
                    return render(request, 'index.html', {'error_message': 'Hatalı kullanıcı adı veya şifre. Lütfen tekrar deneyin.'})
            else:
               
                return render(request, 'index.html', {'error_message': 'Hatalı kullanıcı adı veya şifre. Lütfen tekrar deneyin.'})
    else:
       
        return render(request, 'randevu.html')
    

def randevu_al(request):
    if request.method == 'POST':
        hasta_id = request.POST.get('hasta_id')
        doktor_id = request.POST.get('doktor_id')
        randevu_tarihi = request.POST.get('randevu_tarihi')
        randevu_saati = request.POST.get('randevu_saati')
        uzmanlik = request.POST.get('uzmanlik_alani')
        hastane_adı = request.POST.get('hastane')

        with connection.cursor() as cursor:
            cursor.execute("""
                INSERT INTO Randevular (HastaID, DoktorID, RandevuTarihi, RandevuSaat, UzmanlıkAlani, Hastane_ismi)
                VALUES (%s, %s, %s, %s, %s, %s)
            """, [hasta_id, doktor_id, randevu_tarihi, randevu_saati, uzmanlik, hastane_adı])
            
            connection.commit()

        yeni_randevular = guncelle_randevular(hasta_id)
        return JsonResponse({'yeni_randevular': yeni_randevular})
    
    return render(request, 'randevu.html')

        


def randevu_bilgi(request):
    uzmanlik_alanlari = ["Kardiyoloji", "Nöroloji", "Ortopedi", "Göz Hastalıkları", "Kulak Burun Boğaz", "Dermatoloji", "Üroloji", "Psikiyatri", "Onkoloji", "Gastroenteroloji", "Dahiliye"]
    hastaneler = ["Acıbadem Hastanesi", "Memorial Hastanesi", "Florence Nightingale Hastanesi", "Medical Park Hastanesi", "Liv Hospital", "Kocaeli Üniversitesi Hastanesi", "Pendik Devlet Hastanesi", "Tuzla Devlet Hastanesi", "İstanbul Üniversitesi Tıp Fakültesi Hastanesi", "Kocaeli Devlet Hastanesi"]
    hours = range(9, 16)
    hasta_id = request.session.get('hasta_id')
    
    
    randevu_listesi = None
    if hasta_id:
        try:
            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT r.RandevuID, r.RandevuTarihi, r.RandevuSaat, d.Ad, d.Soyad, d.UzmanlıkAlani, d.Hastane_ismi
                    FROM Randevular r
                    JOIN Doktorlar d ON r.DoktorID = d.DoktorID
                    WHERE r.HastaID = %s
                    ORDER BY r.RandevuTarihi, r.RandevuSaat
                """, [hasta_id])
                randevular = cursor.fetchall()

              

            if randevular:
                
                randevu_listesi = []
                for r in randevular:
                    tarih = r[1].strftime('%d %B %Y')
                    saat = r[2].strftime('%H:%M')
                    randevu_listesi.append({
                        'randevu_id': r[0],
                        'tarih': tarih,
                        'saat': saat,
                        'doktor_ad': r[3],
                        'doktor_soyad': r[4],
                        'uzmanlik': r[5],
                        'hastane': r[6],
                    })

        except Exception as e:
           
            print("Hata:", e)
            return redirect('randevu.html')

    return render(request, 'randevu.html', {'uzmanlik_alanlari': uzmanlik_alanlari, 'hastaneler': hastaneler, 'hours': hours, 'hasta_id': hasta_id, 'randevular': randevu_listesi})





def guncelle_randevular(hasta_id):
    try:
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT r.RandevuID, r.RandevuTarihi, r.RandevuSaat, d.Ad, d.Soyad, d.UzmanlıkAlani, d.Hastane_ismi
                FROM Randevular r
                JOIN Doktorlar d ON r.DoktorID = d.DoktorID
                WHERE r.HastaID = %s
                ORDER BY r.RandevuTarihi, r.RandevuSaat
            """, [hasta_id])
            randevular = cursor.fetchall()

        randevu_listesi = []
        for r in randevular:
            tarih = r[1].strftime('%d %B %Y')
            saat = r[2].strftime('%H:%M')
            randevu_listesi.append({
                'randevu_id': r[0],
                'tarih': tarih,
                'saat': saat,
                'doktor_ad': r[3],
                'doktor_soyad': r[4],
                'uzmanlik': r[5],
                'hastane': r[6],
            })
        return randevu_listesi

    except Exception as e:
        print("Hata:", e)
        return None




def randevu_sil(request):
    if request.method == 'POST':
        randevu_id = request.POST.get('randevu_id')
        hasta_id = request.POST.get('hasta_id')

        with connection.cursor() as cursor:
            cursor.execute("DELETE FROM Randevular WHERE RandevuID = %s AND HastaID = %s", [randevu_id, hasta_id])
            connection.commit()

        yeni_randevular = guncelle_randevular(hasta_id)
        return JsonResponse({'yeni_randevular': yeni_randevular})

    return JsonResponse({'error': 'Geçersiz istek'}, status=400)





def doktorlari_getir(request):
    uzmanlik_alani = request.GET.get('uzmanlik_alani')
    hastane = request.GET.get('hastane')

    with connection.cursor() as cursor:
        cursor.execute("SELECT DoktorID, Ad, Soyad FROM Doktorlar WHERE UzmanlıkAlani = %s AND Hastane_ismi = %s", [uzmanlik_alani, hastane])
        doktorlar = cursor.fetchall()

    doktor_listesi = [{'id': doktor[0], 'ad': doktor[1], 'soyad': doktor[2]} for doktor in doktorlar]
    return JsonResponse({'doktorlar': doktor_listesi})






def doktor_randevular(request):
    doktor_id = request.session.get('doktor_id')

    if not doktor_id:
        return redirect('doktor_girisi')

    try:
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT r.RandevuID, r.RandevuTarihi, r.RandevuSaat, h.Ad, h.Soyad, h.Telefon, d.UzmanlıkAlani
                FROM Randevular r
                JOIN Hastalar h ON r.HastaID = h.HastaID
                JOIN Doktorlar d ON r.DoktorID = d.DoktorID
                WHERE r.DoktorID = %s
                ORDER BY r.RandevuTarihi, r.RandevuSaat
            """, [doktor_id])
            randevular = cursor.fetchall()

        randevu_listesi = []
        for r in randevular:
            tarih = r[1].strftime('%d %B %Y')  
            saat = datetime.strptime(str(r[2]), '%H:%M:%S').strftime('%H:%M')  
            randevu_listesi.append({
                'randevu_id': r[0],
                'tarih': tarih,
                'saat': saat,
                'hasta_ad': r[3],
                'hasta_soyad': r[4],
                'hasta_telefon': r[5],
                'uzmanlik': r[6]
            })

        return render(request, 'doktorgirisi.html', {'randevular': randevu_listesi})

    except Exception as e:
        return render(request, 'doktorgirisi.html', {'error_message': 'Randevular getirilemedi.'})






def doktor_girisi(request):
    if request.method == 'POST':
        doktor_id = request.POST.get('doktor_id')
        sifre = request.POST.get('sifre')

        hashed_input_password = hashlib.sha256(sifre.encode()).hexdigest()
        with connection.cursor() as cursor:
            cursor.execute("SELECT sifre, Ad, Soyad FROM Doktorlar WHERE DoktorID = %s", [doktor_id])
            row = cursor.fetchone()

            if row:
                hashed_stored_password = row[0]
                doktor_ad = row[1]
                doktor_soyad = row[2]

                if hashed_input_password == hashed_stored_password:
                    request.session['doktor_ad'] = doktor_ad
                    request.session['doktor_soyad'] = doktor_soyad
                    request.session['doktor_id'] = doktor_id
                    return redirect('doktor_randevular')
                else:
                    return render(request, 'index.html', {'error_message': 'Hatalı kullanıcı adı veya şifre. Lütfen tekrar deneyin.'})
            else:
                return render(request, 'index.html', {'error_message': 'Hatalı kullanıcı adı veya şifre. Lütfen tekrar deneyin.'})
    else:
        return render(request, 'doktorgirisi.html')
    


# def upload_report(request):
#     if request.method == 'POST' and request.FILES.get('dosya'):
#         uploaded_file = request.FILES['dosya']
#         file_name = uploaded_file.name
        
#         # Erişim belirteci (access token) burada alınmalı veya sağlanmalıdır
#         access_token = 'ya29.a0AXooCguZYJHLEG1r4WIyZ1VKfsRkbAVWlNFdDWbLwfGQVaaoaud447M6A7HGP_exQ-wIr2txodzhdlwnAg0tj1b656KP0h-gy1Fu71gZ70_S53UyuSiGD036KX9QQjXMplkkY2zizuO9jyCHxRrnGlwL6m-eBeKKLvFTaCgYKAUcSARASFQHGX2Mi4HIZnukVnhxFTDCNgpPlWw0171'

#         # Google Drive'a dosya yükleme işlemi
#         uploader = GoogleDriveUploader(api_key=access_token)
#         file_id, file_url = uploader.upload_file(uploaded_file, file_name)

#         if file_id:
#             return JsonResponse({'file_id': file_id, 'file_url': file_url})
#         else:
#             return JsonResponse({'error': 'Dosya yüklenemedi.'}, status=500)
#     else:
#         return JsonResponse({'error': 'Dosya yüklenmedi veya geçersiz bir istek yapıldı.'}, status=400)
    


def google_drive_authenticate():
    creds = None
    token_path = os.path.join(settings.BASE_DIR, 'ya29.a0AXooCgt95pExawampcQvSJVeOOLepf82uVJ6qdPdo0nZ6AreXydqr46MM1F94ebB2qlU9sdrZI-lUohhexEzdERoj3m2yZJfA1jy35Z2Yn5BXcuzPhUUuIFw79j4ajRgBKn8emug3xknfMp16eW8tyep9HHvidBZ1ntaaCgYKAaASARASFQHGX2MikhJlajmO2Jnd12pl1FEf8g0171')

    if os.path.exists(token_path):
        creds = Credentials.from_authorized_user_file(token_path, settings.GOOGLE_DRIVE_API_SCOPES)

    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                settings.GOOGLE_DRIVE_API_CLIENT_ID, settings.GOOGLE_DRIVE_API_SCOPES)
            creds = flow.run_local_server(port=0)

        with open(token_path, 'w') as token:
            token.write(creds.to_json())

    return creds

def upload_to_drive(file_path, file_name):
    creds = google_drive_authenticate()
    service = build('drive', 'v3', credentials=creds)
    
    file_metadata = {'name': file_name}
    media = MediaFileUpload(file_path, resumable=True)
    file = service.files().create(body=file_metadata, media_body=media, fields='id').execute()
    
    return file.get('id')

def upload_file(request):
    if request.method == 'POST' and request.FILES['dosya']:
        dosya = request.FILES['dosya']
        file_name = dosya.name
        file_path = default_storage.save(file_name, ContentFile(dosya.read()))

        file_id = upload_to_drive(file_path, file_name)
        os.remove(file_path)  # Yüklenen dosyayı sunucudan sil

        return render(request, 'doktorgirisi.html', {'file_id': file_id})

    return render(request, 'doktorgirisi.html')