from django.shortcuts import render
from django.contrib.auth.decorators import login_required

from applications.web.models import BlockHome, Carrousel, Company, Items, OtherLinks, SocialNetwork
from applications.web.utils import elige_choices

# Create your views here.
def index(request):

    objectCompany = Company.objects.all()
    objectSocialNetwork = SocialNetwork.objects.all()
    objectCarrousel = Carrousel.objects.filter(carr_isactive = 1)
    objectItems = Items.objects.filter(menu__me_isactive = 1).order_by('it_order')
    objectOtherLinks = OtherLinks.objects.filter(ol_active = 1).order_by('ol_order')
    objectBlocks = BlockHome.objects.filter(bh_active = 1, bh_defaultpage__isnull=False).order_by('bh_order')
    
    listSocialNetworks = []
    for sn in objectSocialNetwork:
        objectsSocialNetworks = {
            'sn_link': sn.sn_link,
            'sn_icon': elige_choices(SocialNetwork.ICON_NETWORK, sn.sn_icon)
        }
        listSocialNetworks.append(objectsSocialNetworks)

    listBlocks = []
    for blo in objectBlocks:
        defaultPage = elige_choices(BlockHome.DEFAULT_PAGE, blo.bh_defaultpage)
        objectsBlocks = {
            'block': blo,
            'bh_defaultpage': f'web/includes/' + defaultPage + '.html'
        }
        listBlocks.append(objectsBlocks)

    data = {
        'objectCompany': objectCompany,
        'listSocialNetworks': listSocialNetworks,
        'objectCarrousel': objectCarrousel,
        'objectItems': objectItems,
        'objectOtherLinks': objectOtherLinks,
        'listBlocks': listBlocks
    }
    return render(request, 'web/index.html', data)

def pages(request, page = None):

    objectCompany = Company.objects.all()
    objectSocialNetwork = SocialNetwork.objects.all()
    objectItems = Items.objects.filter(menu__me_isactive = 1).order_by('it_order')
    objectOtherLinks = OtherLinks.objects.filter(ol_active = 1).order_by('ol_order')

    listSocialNetworks = []
    for sn in objectSocialNetwork:
        objectsSocialNetworks = {
            'sn_link': sn.sn_link,
            'sn_icon': elige_choices(SocialNetwork.ICON_NETWORK, sn.sn_icon)
        }
        listSocialNetworks.append(objectsSocialNetworks)

    linkPage = objectItems.get(it_pagetype=page)
    namePage = elige_choices(Items.TYPE_PAGE, linkPage.it_pagetype)

    data = {
        'objectCompany': objectCompany,
        'listSocialNetworks': listSocialNetworks,
        'objectItems': objectItems,
        'objectOtherLinks': objectOtherLinks,
    }
    #return render(request, f'web/pages/{namePage}.html', data)
    return render(request, f'web/pages.html', data)