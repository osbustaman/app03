import os
from PIL import Image
from django.db import models
from django.contrib import admin
from django.contrib.auth.models import User
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
            raise ValidationError(
                "Para el logo solo se permiten imágenes en formato .jpg, .jpeg, .png o .gif.")

        ext2 = os.path.splitext(self.com_imagecompanyicon.name)[1].lower()
        if not ext2 in ['.jpg', '.jpeg', '.png', '.gif']:
            raise ValidationError(
                "Para el icono solo se permiten imágenes en formato .jpg, .jpeg, .png o .gif.")

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
    list_display = ('sn_id', 'sn_name', 'sn_icon')

class SocialNetworkCompany(TimeStampedModel):

    ICON_NETWORK = (
        (1, 'fab fa-twitter fw-normal'),
        (2, 'fab fa-facebook-f fw-normal'),
        (3, 'fab fa-linkedin-in fw-normal'),
        (4, 'fab fa-instagram fw-normal'),
        (5, 'fab fa-youtube fw-normal'),
    )

    snc_id = models.AutoField("Key", primary_key=True)
    snc_name = models.CharField("nombre red", max_length=100)
    snc_icon = models.IntegerField("icon red", choices=ICON_NETWORK)
    snc_link = models.TextField("link red")

    def __int__(self):
        return self.snc_id

    def __str__(self) -> str:
        return self.snc_name

    def save(self, *args, **kwargs):
        super(SocialNetworkCompany, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_social_network_company'
        ordering = ['snc_id']
        verbose_name_plural = 'Redes Sociales de la Empresa'


class SocialNetworkCompanyAdmin(admin.ModelAdmin):
    list_display = ('snc_id', 'snc_name', 'snc_icon', 'snc_link')


class Carrousel(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    carr_id = models.AutoField("Key", primary_key=True)
    carr_title = models.CharField("titulo slider", max_length=50)
    carr_downloadtext = models.TextField("texto de bajada")
    carr_isbutton = models.IntegerField("Tiene link?", choices=IS)
    carr_linkbutton = models.TextField(
        "link del botón", max_length=50, null=True, blank=True)
    carr_buttontext = models.CharField(
        "texto del botón", max_length=10, null=True, blank=True)
    carr_nameimage = models.CharField("nombre imagen", max_length=50)
    carr_image = models.ImageField(
        "subir imagen", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/')
    carr_isactive = models.IntegerField(
        "Slider activo", choices=IS, default=True)

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
                raise ValidationError(
                    "La imagen debe tener una resolución de 1920x1080 píxeles.")

            # Validar que la extensión de la imagen sea una de las permitidas
            ext = os.path.splitext(self.carr_image.name)[1].lower()
            if not ext in ['.jpg', '.jpeg', '.png', '.gif']:
                raise ValidationError(
                    "Solo se permiten imágenes en formato .jpg, .jpeg, .png y .gif.")
        else:
            raise ValidationError("Debe subir una imagen.")

    class Meta:
        db_table = 'web_carrousel'
        ordering = ['carr_id']
        verbose_name_plural = 'El carrusel'


class CarrouselAdmin(admin.ModelAdmin):
    list_display = ('carr_id', 'carr_title', 'carr_image',
                    'carr_isbutton', 'carr_isactive')


class Menu(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    me_id = models.AutoField("Key", primary_key=True)
    me_name = models.CharField("nombre menu", max_length=100)
    me_hasasearchengine = models.IntegerField(
        "tiene buscador?", choices=IS, default=2)
    me_isactive = models.IntegerField("Menu activo", choices=IS, default=1)

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
    list_display = ('me_id', 'me_name', 'me_hasasearchengine', 'me_isactive')


class Items(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    TYPE_PAGE = (
        (1, 'Home'),
        (2, 'About'),
        (3, 'WhyChooseUs'),
        (4, 'OurServices'),
        (5, 'Contact'),
        (6, 'Carrousel'),
        (7, 'MyCarrouselClients'),
        (8, 'OurServicesPage'),
        
    )

    it_id = models.AutoField("Key", primary_key=True)
    menu = models.ForeignKey(Menu, verbose_name="Menu",
                             on_delete=models.PROTECT, db_column="it_menu_id")
    it_name = models.CharField("nombre item", max_length=100)
    it_link = models.TextField("link del item", max_length=150)
    it_pagetype = models.IntegerField(
        "tipo de página", choices=TYPE_PAGE, null=True, blank=True)
    it_order = models.IntegerField("posición del item")
    it_lincactive = models.CharField(
        "link activo", max_length=10, default='active')
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
    list_display = ('it_id', 'menu', 'it_name', 'it_link',
                    'it_pagetype', 'it_order', 'it_active')
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

    TYPE_PAGE = (
        (1, 'Home'),
        (2, 'About'),
        (3, 'WhyChooseUs'),
        (4, 'OurServices'),
        (5, 'Contact'),
        (6, 'Carrousel'),
        (7, 'MyCarrouselClients'),
        (8, 'OurServicesPage'),
    )

    plu_id = models.AutoField("Key", primary_key=True)
    plu_elementname = models.CharField("nombre del elemento", max_length=100)
    plu_page = models.IntegerField(
        "nombre de la página elemento", choices=TYPE_PAGE, null=True, blank=True)
    plu_icon = models.CharField(
        "icono del elemento", max_length=100, null=True, blank=True)
    plu_title = models.CharField(
        "título del elemento", max_length=100, null=True, blank=True)
    plu_text = models.TextField("texto", null=True, blank=True)
    plu_isbox = models.IntegerField("tiene recuadro", choices=IS, default=2)
    plu_linkactive = models.IntegerField("link activo", choices=IS, default=1)
    plu_link = models.TextField("link del elemento", null=True, blank=True)
    plu_image = models.ImageField(
        "subir imagen", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/', null=True, blank=True)
    plu_active = models.IntegerField("plugin activo", choices=IS, default=1)

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
    list_display = ('plu_id', 'plu_elementname', 'plu_isbox',
                    'plu_icon', 'plu_active', 'plu_page', 'plu_image')
    list_filter = ('plu_page', 'plu_active')


class BlockHome(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    DEFAULT_PAGE = (
        (1, 'About'),
        (2, 'WhyChooseUs'),
        (3, 'OurServices'),
        (4, 'Contact'),
        (100, 'FactStart'),
    )

    bh_id = models.AutoField("Key", primary_key=True)
    bh_name = models.CharField(
        "nombre bloque", help_text="es el tipo de elemento que se verá en la página", max_length=100)
    bh_title = models.CharField("titulo del bloque", max_length=100)
    bh_order = models.IntegerField("posición del bloque")
    bh_image = models.ImageField(
        "subir imagen", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/', null=True, blank=True)
    bh_html = RichTextField("HTML o texto para el bloque",
                            help_text="Ingrese el texto utilizando CKEditor.", null=True, blank=True)
    bh_defaultpage = models.IntegerField(
        "página por defecto", choices=DEFAULT_PAGE, null=True, blank=True)
    plugins = models.ManyToManyField(
        Plugins, db_column="bh_plugins_id", blank=True)
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
    list_display = ('bh_id', 'bh_name', 'bh_order',
                    'bh_active', 'bh_defaultpage', 'bh_image')

    def save_model(self, request, obj, form, change):
        # Llamamos al método save_model del padre para guardar el objeto en la base de datos
        super().save_model(request, obj, form, change)

        # Obtenemos la lista de plugins seleccionados en el formulario
        plugins_selected = form.cleaned_data['plugins']

        # Agregamos los plugins seleccionados a la relación ManyToManyField de plugins
        obj.plugins.set(plugins_selected)


class Pages(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    DEFAULT_PAGE = (
        (1, 'Home'),
        (2, 'About'),
        (3, 'WhyChooseUs'),
        (4, 'OurServices'),
        (5, 'Contact'),
        (6, 'Carrousel'),
        (7, 'MyCarrouselClients'),
        (8, 'OurServicesPage'),
    )

    pag_id = models.AutoField("Key", primary_key=True)
    pag_title = models.CharField("titulo de la página", max_length=100)
    pag_subtitle = models.CharField("sub titulo de la página", max_length=100)
    pag_backgroundimage = models.ImageField(
        "subir imagen de fondo", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/', null=True, blank=True)
    plugins = models.ManyToManyField(
        Plugins, db_column="pag_plugins_id", blank=True)
    pag_html = RichTextField("HTML o texto",
                            help_text="Ingrese el texto utilizando CKEditor.", null=True, blank=True)
    pag_defaultpage = models.IntegerField(
        "página por defecto", choices=DEFAULT_PAGE, null=True, blank=True)
    pag_active = models.IntegerField("plugin activo", choices=IS, default=1)

    def __int__(self):
        return self.pag_id

    def __str__(self) -> str:
        return self.pag_title

    def save(self, *args, **kwargs):
        super(Pages, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_pages'
        ordering = ['pag_id']
        verbose_name_plural = 'Páginas'


class PagesAdmin(admin.ModelAdmin):
    list_display = ('pag_id', 'pag_title', 'pag_backgroundimage', 'pag_defaultpage', 'pag_active')
    list_filter = ('pag_active',)


class Team(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    tm_id = models.AutoField("Key", primary_key=True)
    user = models.ForeignKey(User, verbose_name="User",
                             db_column="tm_user", on_delete=models.PROTECT)
    tm_positioncompany = models.CharField("Cargo", max_length=100)
    tm_issocialnetwork = models.IntegerField(
        "tiene redes sociales", choices=IS, default=1)
    tm_image = models.ImageField(
        "subir imagen", help_text="tamaño de la imagen 1920x1080, solo formatos .jpg|.png|.gif|.jpeg", upload_to='company_images/', null=True, blank=True)
    tm_active = models.IntegerField("persona activa", choices=IS, default=1)

    def __int__(self):
        return self.tm_id

    def __str__(self) -> str:
        return self.user.username
    username = property(__str__)

    def save(self, *args, **kwargs):
        super(Team, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_team'
        ordering = ['tm_id']
        verbose_name_plural = 'Team'


class TeamAdmin(admin.ModelAdmin):
    list_display = ('tm_id', 'username', 'tm_issocialnetwork',
                    'tm_positioncompany', 'tm_active', 'tm_image')
    list_filter = ('tm_active',)
    search_fields = ['user']

class TeamSocialNetwork(TimeStampedModel):

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    ICON_NETWORK = (
        (1, 'fab fa-twitter fw-normal'),
        (2, 'fab fa-facebook-f fw-normal'),
        (3, 'fab fa-linkedin-in fw-normal'),
        (4, 'fab fa-instagram fw-normal'),
        (5, 'fab fa-youtube fw-normal'),
    )

    tsn_id = models.AutoField("Key", primary_key=True)
    team = models.ForeignKey(Team, verbose_name="Team", on_delete=models.PROTECT, db_column="tsn_team_id")
    socialNetwork = models.ForeignKey(SocialNetwork, verbose_name="SocialNetwork", on_delete=models.PROTECT, db_column="tsn_social_network_id")
    tsn_link = models.TextField("link red social")
    tsn_active = models.IntegerField("red social activa", choices=IS, default=1)

    def __int__(self):
        return self.tsn_id

    def __str__(self) -> str:
        return f'{self.socialNetwork.sn_name } - {self.team.user.username}'
    teamSocialNetwork = property(__str__)

    def save(self, *args, **kwargs):
        super(TeamSocialNetwork, self).save(*args, **kwargs)

    class Meta:
        db_table = 'web_team_social_network'
        ordering = ['tsn_id']
        verbose_name_plural = 'Red Social del Usuario'


class TeamSocialNetworkAdmin(admin.ModelAdmin):
    list_display = ('tsn_id', 'teamSocialNetwork', 'tsn_active')
    list_filter = ('tsn_active',)
