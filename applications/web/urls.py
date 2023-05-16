from django.urls import path

from django.conf import settings
from django.conf.urls.static import static

from applications.web.views import index, pages

app_name = 'web_app'

urlpatterns = [
    path('', index, name='index'),
    path('acerca-de-nosotros/<int:page>/', pages, name='about'),
    path('nuestros-servicios/<int:page>/', pages, name='our-services'),
    path('contactanos/<int:page>/', pages, name='our-services'),
    path('servicio/<int:page>/<int:plu_id>/', pages, name='our-services-page'),
    path('servicio/<int:page>/', pages, name='our-service-page')

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 