from django.contrib import admin

from applications.clients.models import (
    Country
    , CountryAdmin
    , Region
    , RegionAdmin
    , Commune
    , CommuneAdmin
    , Client
    , ClientAdmin
)

# Register your models here.

admin.site.register(Country, CountryAdmin)
admin.site.register(Region, RegionAdmin)
admin.site.register(Commune, CommuneAdmin)
admin.site.register(Client, ClientAdmin)
