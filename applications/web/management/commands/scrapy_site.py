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
    
    def save_statics_files(self, routes_files):
        for ruta_archivo in routes_files:
            
            parts = ruta_archivo.split("/")[:-1]
            destination_directory = os.path.join(*parts) if parts else ""

            route = f"{BASE_DIR}/templates/web/www/{destination_directory}"
            # Crear el directorio de destino si no existe
            if not os.path.exists(route):
                os.makedirs(route)

            nombre_archivo = os.path.basename(ruta_archivo)
            ruta_destino = os.path.join(destination_directory, nombre_archivo) if parts else ""
            
            route_static = f"{self.get_domain_url()}/{ruta_destino}"
            response = requests.get(route_static)
            with open(os.path.join(route, nombre_archivo), 'wb') as archivo:
                archivo.write(response.content)

    
    def get_route_files(self, url_file):
        response = requests.get(url_file)
        soup = BeautifulSoup(response.text, 'html.parser')

        routes_css = []
        routes_js = []
        routes_img = []

        for css_tag in soup.find_all('link', rel='stylesheet'):
            route_css = css_tag['href']
            routes_css.append(route_css)

        for js_tag in soup.find_all('script', src=True):
            route_js = js_tag['src']
            routes_js.append(route_js)

        for img_tag in soup.find_all('img', src=True):
            route_img = img_tag['src']
            routes_img.append(route_img)

        return routes_css, routes_js, routes_img

    def get_code_html(self, url):
        response = requests.get(url)
        return response.text
    
    def save_file_html(self, name_file, code_html, route=""):
        save_file = f"{BASE_DIR}/templates/web/www/{route}{name_file}"
        with open(save_file, 'w') as file:
            file.write(code_html)


    def modify_links(self, html_content, link_page):
        soup = BeautifulSoup(html_content, 'html.parser')
        a_tags = soup.find_all('a')

        for a_tag in a_tags:
            _tags = a_tag.get('data-bs-menu')
            if _tags == "menu-page":
                #print(link_page)
                href = a_tag.get('href')
                
                if href == "/":
                    the_link = href
                else:
                    the_page = href.replace("/", "")
                    the_link = f"{the_page}.html"
                # Realizar las modificaciones necesarias en el enlace
                # Por ejemplo, cambiar '/ruta' por '/nueva_ruta'
                new_href = href.replace(href, the_link)
                a_tag['href'] = new_href  # Asignar el nuevo enlace al atributo 'href'   

        modified_html = str(soup)  # Obtener el HTML modificado como una cadena de texto
        return modified_html

    def handle(self, *args, **options):

        items_objects = Items.objects.filter(it_active=1)
        for it in items_objects:
            if it.it_link == '/':
                name_file = "index.html"
                url_page = f"{self.get_domain_url()}{it.it_link}"
                code_html = self.get_code_html(url_page)
            else:
                name_file = f"{it.it_link}.html"
                url_page = f"{self.get_domain_url()}/{it.it_link}"
                code_html = self.get_code_html(url_page)
            
            code_html = self.modify_links(code_html, it.it_link)

            rutas_css, rutas_js, rutas_img = self.get_route_files(url_page)

            rutas_css = [ruta for ruta in rutas_css if not 'https' in ruta]
            rutas_js = [ruta for ruta in rutas_js if not 'https' in ruta]
            rutas_img = [ruta for ruta in rutas_img if not 'https' in ruta]

            # Guardar los archivos CSS en el directorio de destino
            self.save_file_html(name_file, code_html)
            self.save_statics_files(rutas_css)
            self.save_statics_files(rutas_js)
            self.save_statics_files(rutas_img)

            
