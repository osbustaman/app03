# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin

from applications.web.models import (
    Company
    , CompanyAdmin
    , Image
    , ImageAdmin
    , SocialNetwork
    , SocialNetworkAdmin
    , SocialNetworkCompany
    , SocialNetworkCompanyAdmin
    , Carrousel
    , CarrouselAdmin
    , Menu
    , MenuAdmin
    , Items
    , ItemsAdmin
    , OtherLinks
    , OtherLinksAdmin
    , Plugins
    , PluginsAdmin
    , BlockHome
    , BlockHomeAdmin
    , TypePages
    , TypePagesAdmin
    , Pages
    , PagesAdmin
    , Team
    , TeamAdmin
    , TeamSocialNetwork
    , TeamSocialNetworkAdmin
    , Services
    , ServicesAdmin
    , RequestWeb
    , RequestWebAdmin
    )


admin.site.register(Company, CompanyAdmin)
admin.site.register(Image, ImageAdmin)
admin.site.register(SocialNetwork, SocialNetworkAdmin)
admin.site.register(SocialNetworkCompany, SocialNetworkCompanyAdmin)
admin.site.register(Carrousel, CarrouselAdmin)
admin.site.register(Menu, MenuAdmin)
admin.site.register(Items, ItemsAdmin)
admin.site.register(OtherLinks, OtherLinksAdmin)
admin.site.register(Plugins, PluginsAdmin)
admin.site.register(BlockHome, BlockHomeAdmin)
admin.site.register(TypePages, TypePagesAdmin)
admin.site.register(Pages, PagesAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(TeamSocialNetwork, TeamSocialNetworkAdmin)
admin.site.register(Services, ServicesAdmin)
admin.site.register(RequestWeb, RequestWebAdmin)