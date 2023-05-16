from django.shortcuts import render
from django.contrib.auth.decorators import login_required

from applications.web.models import BlockHome, Carrousel, Company, Items, OtherLinks, Pages, Plugins, SocialNetworkCompany
from applications.web.utils import elige_choices

# Create your views here.
def index(request):

    objectCompany = Company.objects.all()
    objectSocialNetworkCompany = SocialNetworkCompany.objects.all()
    objectCarrousel = Carrousel.objects.filter(carr_isactive = 1)
    objectItems = Items.objects.filter(menu__me_isactive = 1).order_by('it_order')
    objectOtherLinks = OtherLinks.objects.filter(ol_active = 1).order_by('ol_order')
    objectBlocks = BlockHome.objects.filter(bh_active = 1, bh_defaultpage__isnull=False).order_by('bh_order')
    vendors = Plugins.objects.filter(plu_active = 1, plu_page = 7)
    
    listSocialNetworksCompany = []
    for sn in objectSocialNetworkCompany:
        objectsSocialNetworksCompany = {
            'snc_link': sn.snc_link,
            'snc_icon': elige_choices(SocialNetworkCompany.ICON_NETWORK, sn.snc_icon)
        }
        listSocialNetworksCompany.append(objectsSocialNetworksCompany)

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
        'listSocialNetworksCompany': listSocialNetworksCompany,
        'objectCarrousel': objectCarrousel,
        'objectItems': objectItems,
        'objectOtherLinks': objectOtherLinks,
        'listBlocks': listBlocks,
        'vendors': vendors
    }
    return render(request, 'web/index.html', data)

def pages(request, page = None, plu_id = None):

    objectCompany = Company.objects.all()
    objectSocialNetworkCompany = SocialNetworkCompany.objects.all()
    objectItems = Items.objects.filter(menu__me_isactive = 1).order_by('it_order')
    objectOtherLinks = OtherLinks.objects.filter(ol_active = 1).order_by('ol_order')
    objectBlocks = BlockHome.objects.filter(bh_active = 1, bh_defaultpage__isnull=False).order_by('bh_order')
    vendors = Plugins.objects.filter(plu_active = 1, plu_page = 7)

    listSocialNetworksCompany = []
    for sn in objectSocialNetworkCompany:
        objectsSocialNetworksCompany = {
            'snc_link': sn.snc_link,
            'snc_icon': elige_choices(SocialNetworkCompany.ICON_NETWORK, sn.snc_icon)
        }
        listSocialNetworksCompany.append(objectsSocialNetworksCompany)

    listElements = []

    try:
        linkPage = objectItems.get(it_pagetype=page)
        namePage = elige_choices(Items.TYPE_PAGE, linkPage.it_pagetype)
        objectPage = Pages.objects.filter(pag_defaultpage = linkPage.it_pagetype).first()
        

        objectEmelemnts = {
                'title': objectPage.pag_title,
                'subTitle': objectPage.pag_subtitle,
                'image': objectPage.pag_backgroundimage,
                'text': objectPage.pag_html,
            }
        
        if linkPage.it_pagetype == 2:
            pass

        if linkPage.it_pagetype == 4:
            pass

        if linkPage.it_pagetype == 5:
            objectEmelemnts['plugins'] = objectPage.plugins

        if linkPage.it_pagetype == 8:
            pass


        listElements.append(objectEmelemnts)
    
    except:
        namePage = 'uorservicespage'

    data = {
        'objectCompany': objectCompany,
        'listSocialNetworksCompany': listSocialNetworksCompany,
        'objectItems': objectItems,
        'objectOtherLinks': objectOtherLinks,
        'listElements': listElements,
        'objectBlocks': objectBlocks,
        'vendors': vendors
    }
    return render(request, f'web/pages/{namePage}.html', data)