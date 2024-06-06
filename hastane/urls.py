from django.urls import path
from . import views
from django.urls import reverse

urlpatterns = [
    path('', views.index, name='index'),
    path('doktorgirisi/', views.doktor_girisi, name='doktor_girisi'),
    path('yöneticigirisi/', views.yönetici_girisi, name='yönetici_girisi'),
    path('randevugirisi/', views.randevu_girisi, name='randevu_girisi'),
    path('doktor-ekle/', views.doktor_ekle, name='doktor-ekle'),
    path('hasta-ekle/', views.hasta_ekle, name='hasta-ekle'),
    path('hasta-ara/', views.hasta_ara, name='hasta-ara'),
    path('hasta-sil/', views.hasta_sil, name='hasta-sil'),
    path('doktor-ara/', views.doktor_ara, name='doktor-ara'),
    path('doktor-sil/', views.doktor_sil, name='doktor-sil'),
    path('randevubilgi/', views.randevu_bilgi, name='randevu_bilgi'),
    path('doktorlari_getir/', views.doktorlari_getir, name='doktorlari_getir'),
    path('randevu_al/', views.randevu_al, name='randevu_al'),
    path('randevu_bilgi/<int:hasta_id>/', views.randevu_bilgi, name='randevu_bilgi'),
    path('doktor_randevular/', views.doktor_randevular, name='doktor_randevular'),
    path('guncelle_randevular/', views.guncelle_randevular, name='guncelle_randevular'),
    path('randevu-sil/', views.randevu_sil, name='randevu_sil'),
    path('doktor-guncelle/', views.doktor_guncelle, name='doktor_guncelle'),
    path('hasta-guncelle/', views.hasta_guncelle, name='hasta_guncelle'),
    path('upload/', views.upload_file, name='upload_file')
]
