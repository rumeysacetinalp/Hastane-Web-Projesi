from googleapiclient.discovery import build
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from googleapiclient.http import MediaFileUpload

from googleapiclient.http import MediaIoBaseUpload
import io

class GoogleDriveUploader:
    def __init__(self, api_key):
        self.api_key = api_key

    def authenticate(self):
        # API'ye yetkilendirme yap
        drive_service = build('drive', 'v3', developerKey=self.api_key)
        return drive_service

    def upload_file(self, uploaded_file, file_name):
        drive_service = self.authenticate()
        file_metadata = {'name': file_name}
        
        # Dosya içeriğini al
        file_content = uploaded_file.read()
        
        # Dosyayı Google Drive'a yükleme işlemi
        media = MediaIoBaseUpload(io.BytesIO(file_content), mimetype='image/jpeg')
        file = drive_service.files().create(body=file_metadata, media_body=media, fields='id').execute()
        file_id = file.get('id')
        
        # Dosyanın URL'sini oluştur
        file_url = f"https://drive.google.com/file/d/{file_id}"
        
        return file_id, file_url