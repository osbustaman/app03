# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin

from applications.web.models import (
    Company
    , CompanyAdmin
    , Plugins
    , PluginsAdmin
    , SocialNetwork
    , SocialNetworkAdmin
    , Carrousel
    , CarrouselAdmin
    , Menu
    , MenuAdmin
    , Items
    , ItemsAdmin
    , OtherLinks
    , OtherLinksAdmin
    , BlockHome
    , BlockHomeAdmin
    )


admin.site.register(Company, CompanyAdmin)
admin.site.register(SocialNetwork, SocialNetworkAdmin)
admin.site.register(Carrousel, CarrouselAdmin)
admin.site.register(Menu, MenuAdmin)
admin.site.register(Items, ItemsAdmin)
admin.site.register(OtherLinks, OtherLinksAdmin)
admin.site.register(BlockHome, BlockHomeAdmin)
admin.site.register(Plugins, PluginsAdmin)