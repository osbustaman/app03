import requests
import os

from bs4 import BeautifulSoup
from urllib.parse import urlparse
from django.core.management.base import BaseCommand

from app03.settings.base import BASE_DIR
from applications.web.models import Items

class Command(BaseCommand):
    name_domain = "http://127.0.0.1:8080"
    help = 'Se inicia la carga de datos para el administrador de clientes'

    def get_domain_url(self):
        parsed_url = urlparse(self.name_domain)
        domain = parsed_url.scheme + '://' + parsed_url.netloc
        return domain
    
    def save_statics_files(self, routes_files, destination_directory):
        for ruta_archivo in routes_files:

            print(" *************** ")
            print(ruta_archivo)
            print(" *************** ")


            """nombre_archivo = os.path.basename(ruta_archivo)
            ruta_destino = os.path.join(destination_directory, nombre_archivo)

            response = requests.get(ruta_archivo)
            with open(ruta_destino, 'wb') as archivo:
                archivo.write(response.content)"""
    
    def get_route_files(self, url_file):
        response = requests.get(url_file)
        soup = BeautifulSoup(response.text, 'html.parser')

        routes_css = []
        routes_js = []

        for css_tag in soup.find_all('link', rel='stylesheet'):
            route_css = css_tag['href']
            routes_css.append(route_css)

        for js_tag in soup.find_all('script', src=True):
            route_js = js_tag['src']
            routes_js.append(route_js)

        return routes_css, routes_js

    def get_code_html(self, url):
        response = requests.get(url)
        return response.text
    
    def save_file_html(self, name_file, code_html, route=""):
        save_file = f"{BASE_DIR}/templates/web/www/{route}{name_file}"
        with open(save_file, 'w') as file:
            file.write(code_html)

    def handle(self, *args, **options):

        items_objects = Items.objects.filter(it_active=1)
        for it in items_objects:
            if it.it_link == '/':
                name_file = "index.html"

                print("Obtener el código HTML de la página")
                url_page = f"{self.get_domain_url()}{it.it_link}"
                code_html = self.get_code_html(url_page)
            else:
                name_file = f"{it.it_link}.html"
                print("Obtener el código HTML de la página")
                url_page = f"{self.get_domain_url()}/{it.it_link}"
                code_html = self.get_code_html(url_page)

            print(" Obtener las rutas de los archivos CSS y JS")
            rutas_css, rutas_js = self.get_route_files(url_page)
            #print(rutas_css)
            #print(rutas_js)
            #print(f"{self.get_domain_url()}/{it.it_link}")

            rutas_css = [ruta for ruta in rutas_css if 'https' in ruta]

            print(rutas_css)

            # Guardar los archivos CSS en el directorio de destino
            self.save_statics_files(rutas_css, '/')

            print("Guardar el código HTML en un archivo")
            self.save_file_html(name_file, code_html)

            print("El archivo HTML se ha guardado exitosamente.")