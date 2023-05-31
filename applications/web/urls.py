from django.urls import path

from django.conf import settings
from django.conf.urls.static import static

from applications.web.views import index, pages, ajaxRequestMail, ajaxRegisterMail

app_name = 'web_app'

urlpatterns = [
    path('', index, name='index'),
    path('acerca-de-nosotros/', pages, name='about'),
    path('nuestros-servicios/', pages, name='services'),
    path('contactanos/', pages, name='contact'),
    path('ajaxRequest/', ajaxRequestMail, name='ajaxRequest'),
    path('ajaxRegisterMail/', ajaxRegisterMail, name='ajaxRegisterMail'),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 