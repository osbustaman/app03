from django.urls import path

from django.conf import settings
from django.conf.urls.static import static

from applications.web.views import index, pages

app_name = 'web_app'

urlpatterns = [
    path('', index, name='index'),
    path('acerca-de-nosotros/<int:page>/', pages, name='about')
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)