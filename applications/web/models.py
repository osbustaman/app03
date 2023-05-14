import os
from PIL import Image
from django.db import models
from django.contrib import admin
from django.forms import ValidationError
from model_utils.models import TimeStampedModel
from ckeditor.fields import RichTextField

# Create your models here.
class Company(TimeStampedModel):

    com_id = models.AutoField("Key", primary_key=True)
    com_namecompany = models.CharField("nombre compañia", max_length=100)
    com_sitename = models.CharField("nombre del sitio", max_length=100)
    com_nameimagecompany = models.CharField(
        "nombre imagen compañia", max_length=100)
    com_imagecompany = models.ImageField(
        "subir imagen", upload_to='company_images/', help_text="solo formatos .jpg|.png|.gif|.jpeg")
    com_nameimagecompanyicon = models.CharField(
        "nombre icono imagen compañia", max_length=100)
    com_imagecompanyicon = models.ImageField(
        "subir imagen icon", upload_to='company_images/', help_text="solo formatos .jpg|.png|.gif|.jpeg")
    com_title = models.CharField("title del home", max_length=150)
    com_address = models.CharField(
        "dirección empresa", help_text="ej: lourdes 1012, Quinta Normal, Santiago", max_length=255)
    com_phone = models.CharField(
        "fono empresa", help_text="puede ir mas de uno seguido de un guión (-)", max_length=150)
    com_mail = models.CharField("mail empresa", max_length=150)
    com_textfooter = models.TextField("texto footer")

    def __int__(self):
        return self.com_id

    def __str__(self) -> str:
        return self.com_namecompany

    def save(self, *args, **kwargs):
        super(Company, self).save(*args, **kwargs)

    def clean(self):
        
        # Validar que la extensión de la imagen sea una de las permitidas
        ext1 = os.path.splitext(self.com_imagecompany.name)[1].lower()
        if not ext1 in ['.jpg', '.jpeg', '.png', '.gif']:
            raise ValidationError("Para el logo solo se permiten imágenes en formato .jpg, .jpeg, .png o .gif.")
        
        ext2 = os.path.splitext(self.com_imagecompanyicon.name)[1].lower()
        if not ext2 in ['.jpg', '.jpeg', '.png', '.gif']:
            raise ValidationError("Para el icono solo se permiten imágenes en formato .jpg, .jpeg, .png o .gif.")

    class Meta:
        db_table = 'web_company'
        ordering = ['com_id']
        verbose_name_plural = 'Las empresas'


class CompanyAdmin(admin.ModelAdmin):
    list_display = ('com_id', 'com_namecompany', 'com_imagecompany',
                    'com_imagecompanyicon', 'com_address', 'com_phone', 'com_mail')


class SocialNetwork(TimeStampedModel):

    ICON_NETWORK = (
        (1, 'fab fa-twitter fw-normal'),
        (2, 'fab fa-facebook-f fw-normal'),
        (3, 'fab fa-linkedin-in fw-normal'),
        (4, 'fab fa-instagram fw-normal'),
        (5, 'fab fa-youtube fw-normal'),
    )

    sn_id = models.AutoField("Key", primary_key=True)
    sn_name = models.CharField("nombre red", max_length=100)
    sn_icon = models.IntegerField("icon red", choices=ICON_NETWORK)
    sn_link = models.TextField("link red")

    def __int__(self):
        return self.sn_id

    def __str__(self) -> str:
        return self.sn_name

    def save(self, *args, **kwargs):
        super(SocialNetwork, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_social_network'
        ordering = ['sn_id']
        verbose_name_plural = 'Redes Sociales'


class SocialNetworkAdmin(admin.ModelAdmin):
    list_display = ('sn_id', 'sn_name', 'sn_icon', 'sn_link')


class Carrousel(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    carr_id = models.AutoField("Key", primary_key=True)
    carr_title = models.CharField("titulo slider", max_length=50)
    carr_downloadtext = models.TextField("texto de bajada")
    carr_isbutton = models.IntegerField("Tiene link?", choices=IS)
    carr_linkbutton = models.TextField("link del botón", max_length=50, null=True, blank=True)
    carr_buttontext = models.CharField("texto del botón", max_length=10, null=True, blank=True)
    carr_nameimage = models.CharField("nombre imagen", max_length=50)
    carr_image = models.ImageField(
        "subir imagen", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/')
    carr_isactive = models.IntegerField("Slider activo", choices=IS, default=True)

    def __int__(self):
        return self.carr_id

    def __str__(self) -> str:
        return self.carr_title

    def save(self, *args, **kwargs):
        super(Carrousel, self).save(*args, **kwargs)

    def clean(self):
        if self.carr_image:
            # Abrir la imagen y obtener su tamaño
            img = Image.open(self.carr_image)
            width, height = img.size

            # Validar que la imagen tenga una resolución de 1920x1080 píxeles
            if width != 1920 or height != 1080:
                raise ValidationError("La imagen debe tener una resolución de 1920x1080 píxeles.")
            
            # Validar que la extensión de la imagen sea una de las permitidas
            ext = os.path.splitext(self.carr_image.name)[1].lower()
            if not ext in ['.jpg', '.jpeg', '.png', '.gif']:
                raise ValidationError("Solo se permiten imágenes en formato .jpg, .jpeg, .png y .gif.")
        else:
            raise ValidationError("Debe subir una imagen.")

    class Meta:
        db_table = 'web_carrousel'
        ordering = ['carr_id']
        verbose_name_plural = 'El carrusel'

class CarrouselAdmin(admin.ModelAdmin):
    list_display = ('carr_id', 'carr_title', 'carr_image', 'carr_isbutton', 'carr_isactive')


class Menu(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    me_id = models.AutoField("Key", primary_key=True)
    me_name = models.CharField("nombre menu", max_length=100)
    me_hasasearchengine = models.IntegerField("tiene buscador?", choices=IS, default=2)

    def __int__(self):
        return self.me_id

    def __str__(self) -> str:
        return self.me_name

    def save(self, *args, **kwargs):
        super(Menu, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_menu'
        ordering = ['me_id']
        verbose_name = 'Menú'


class MenuAdmin(admin.ModelAdmin):
    list_display = ('me_id', 'me_name', 'me_hasasearchengine')


class Items(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    TYPE_PAGE = (
        (1, 'Inicio'),
        (2, 'Acerca de'),
        (3, 'Servivios'),
        (4, 'Contacto'),
    )

    it_id = models.AutoField("Key", primary_key=True)
    menu = models.ForeignKey(Menu, verbose_name="Menu", on_delete=models.PROTECT, db_column="it_menu_id")
    it_name = models.CharField("nombre item", max_length=100)
    it_link = models.TextField("link del item", max_length=150)
    it_pagetype = models.IntegerField("tipo de página", choices=TYPE_PAGE, null=True, blank=True)
    it_order = models.IntegerField("posición del item")
    it_lincactive = models.CharField("link activo", max_length=10, default='active')
    it_active = models.IntegerField("item activo", choices=IS, default=1)

    def __int__(self):
        return self.it_id

    def __str__(self) -> str:
        return self.it_name

    def save(self, *args, **kwargs):
        super(Items, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_items'
        ordering = ['it_id']
        verbose_name_plural = 'Items'


class ItemsAdmin(admin.ModelAdmin):
    list_display = ('it_id', 'menu', 'it_name', 'it_link', 'it_pagetype', 'it_order', 'it_active')
    list_filter = ('it_active', 'it_pagetype')


class OtherLinks(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    ol_id = models.AutoField("Key", primary_key=True)
    ol_name = models.CharField("nombre link", max_length=100)
    ol_link = models.TextField("link del item", max_length=150)
    ol_order = models.IntegerField("posición del link")
    ol_active = models.IntegerField("link activo", choices=IS, default=1)

    def __int__(self):
        return self.ol_id

    def __str__(self) -> str:
        return self.ol_name

    def save(self, *args, **kwargs):
        super(OtherLinks, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_other_links'
        ordering = ['ol_id']
        verbose_name_plural = 'Otros links'


class OtherLinksAdmin(admin.ModelAdmin):
    list_display = ('ol_id', 'ol_name', 'ol_link', 'ol_order', 'ol_active')


class Plugins(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    plu_id = models.AutoField("Key", primary_key=True)
    plu_elementname = models.CharField("nombre del elemento", max_length=100)
    plu_icon = models.CharField("icono del elemento", max_length=100, null=True, blank=True)
    plu_title = models.CharField("título del elemento", max_length=100, null=True, blank=True)
    plu_text = models.TextField("texto", null=True, blank=True)
    plu_isbox = models.IntegerField("tiene recuadro", choices=IS, default=2)
    plu_active = models.IntegerField("link activo", choices=IS, default=1)

    def __int__(self):
        return self.plu_id

    def __str__(self) -> str:
        return self.plu_elementname

    def save(self, *args, **kwargs):
        super(Plugins, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_plugins'
        ordering = ['plu_id']
        verbose_name_plural = 'Plugins'


class PluginsAdmin(admin.ModelAdmin):
    list_display = ('plu_id', 'plu_elementname', 'plu_isbox', 'plu_icon', 'plu_active')


class BlockHome(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    DEFAULT_PAGE = (
        (1, 'about'),
    )

    bh_id = models.AutoField("Key", primary_key=True)
    bh_name = models.CharField("nombre bloque", help_text="es el tipo de elemento que se verá en la página", max_length=100)
    bh_title = models.CharField("titulo del bloque", max_length=100)
    bh_order = models.IntegerField("posición del bloque")
    bh_image = models.ImageField(
        "subir imagen", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/')
    bh_html = RichTextField("HTML o texto para el bloque", help_text="Ingrese el texto utilizando CKEditor.", null=True, blank=True)
    bh_defaultpage = models.IntegerField("página por defecto", choices=DEFAULT_PAGE, null=True, blank=True)
    plugins = models.ManyToManyField(Plugins, db_column="bh_plugins_id", null=True, blank=True)
    bh_active = models.IntegerField("bloque activo", choices=IS, default=1)

    def __int__(self):
        return self.bh_id

    def __str__(self) -> str:
        return self.bh_name

    def save(self, *args, **kwargs):
        super(BlockHome, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_block_home'
        ordering = ['bh_id']


class BlockHomeAdmin(admin.ModelAdmin):
    list_display = ('bh_id', 'bh_name', 'bh_order', 'bh_active', 'bh_defaultpage', 'bh_image')


