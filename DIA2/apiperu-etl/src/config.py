from decouple import config

class config:
    api_token = config('APIPERU_TOKEN')
    api_url_dni = config('API_URL_DNI')