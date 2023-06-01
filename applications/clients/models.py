from django.db import models
from django.contrib import admin
from model_utils.models import TimeStampedModel

# Create your models here.
class Country(TimeStampedModel):
    co_id = models.AutoField("Key", primary_key=True)
    co_name = models.CharField("Nombre país", max_length=255)
    co_code = models.IntegerField("Código area país", unique=True)

    def __int__(self):
        return self.co_id

    def __str__(self):
        return f"{self.co_name}"

    def save(self, *args, **kwargs):
        # print "save cto"
        super(Country, self).save(*args, **kwargs)

    class Meta:
        db_table = 'ba_pais'
        ordering = ['co_id']

class CountryAdmin(admin.ModelAdmin):
    list_display = ('co_id', 'co_name', 'co_code')

class Region(TimeStampedModel):
    re_id = models.AutoField("Key", primary_key=True)
    re_name = models.CharField("Nombre región", max_length=255)
    country = models.ForeignKey(Country, verbose_name="Country", blank=True, null=True, on_delete=models.PROTECT,
                             db_column="re_country_id")

    def __int__(self):
        return self.re_id
    
    def __str__(self):
        return f"{self.re_name}"

    def save(self, *args, **kwargs):
        super(Region, self).save(*args, **kwargs)

    class Meta:
        db_table = 'ba_region'
        ordering = ['re_id']

class RegionAdmin(admin.ModelAdmin):
    list_display = ('re_id', 're_name', 'country')

class Commune(TimeStampedModel):
    com_id = models.AutoField("Key", primary_key=True)
    com_name = models.CharField("Nombre comuna", max_length=255)
    region = models.ForeignKey(Region, verbose_name="Region", blank=True, null=True, on_delete=models.PROTECT,
                               db_column="com_region_id")

    def __int__(self):
        return self.com_id
    
    def __str__(self):
        return f"{self.com_name}"

    def save(self, *args, **kwargs):
        # print "save cto"
        super(Commune, self).save(*args, **kwargs)

    class Meta:
        db_table = 'ba_commune'
        ordering = ['com_id']

class CommuneAdmin(admin.ModelAdmin):
    list_display = ('com_id', 'com_name', 'region')

class Client(TimeStampedModel):
    OPTIONS = (
        (1, 'SI'),
        (2, 'NO'),
    )

    cli_id = models.AutoField("Key", primary_key=True)
    cli_name = models.CharField('Nombre del cliente', max_length=120)
    cli_dni = models.CharField('Rut del cliente', max_length=20)
    cli_representative_name = models.CharField("Nombre representante", max_length=255, null=True, blank=True)
    cli_admission_date = models.DateField("Fecha de ingreso", null=True, blank=True)
    country = models.ForeignKey(Country, verbose_name="Country", db_column="cli_country_id", null=True, blank=True, on_delete=models.PROTECT)
    region = models.ForeignKey(Region, verbose_name="Region", db_column="cli_region_id", null=True, blank=True, on_delete=models.PROTECT)
    commune = models.ForeignKey(Commune, verbose_name="Commune", db_column="cli_commune_id", null=True, blank=True, on_delete=models.PROTECT)
    cli_address = models.CharField("Dirección representante", max_length=255, null=True, blank=True)
    cli_active = models.IntegerField("Cliente activo", choices=OPTIONS, null=True, blank=True)
    
    def __int__(self):
        return self.cli_id
    
    def __str__(self):
        return f"{self.cli_name}"

    def save(self, *args, **kwargs):
        super(Client, self).save(*args, **kwargs)

    class Meta:
        db_table = 'ba_client'
        ordering = ['cli_id']
        unique_together = ('cli_dni',)


class ClientAdmin(admin.ModelAdmin):
    list_display = ('cli_id', 'cli_name', 'cli_dni', 'cli_active')