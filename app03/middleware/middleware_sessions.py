import json
from django.core import serializers

from applications.web.models import Company, Items, OtherLinks, SocialNetwork, SocialNetworkCompany
from applications.web.utils import elige_choices

def middleware_sessions(get_response):
    def middleware(request):

        # Código de middleware antes de almacenar el objeto en la sesión

        try:
            objectCompany = Company.objects.all().first()
            serializedObj = serializers.serialize('json', [objectCompany])
            request.session['object_serialzer'] = json.loads(serializedObj)


            objectsSocialNetwork = SocialNetworkCompany.objects.all()
            lstSocialNetwork = []
            for sn in objectsSocialNetwork:
                jsonSocialNetwork = {
                    'sn_icon': elige_choices(SocialNetwork.ICON_NETWORK, sn.socialNetwork.sn_icon),
                    'sn_name': sn.socialNetwork.sn_name,
                    'snc_link': sn.snc_link
                }
                lstSocialNetwork.append(jsonSocialNetwork)
            request.session['lst_social_network'] = lstSocialNetwork


            objectItems = Items.objects.filter(menu__me_isactive = 1).order_by('it_order')
            lstItems = []
            for item in objectItems:
                jsonItems = {
                    'it_name': item.it_name,
                    'it_link': item.it_link,
                }
                lstItems.append(jsonItems)
            request.session['lst_items'] = lstItems


            objectOtherLinks = OtherLinks.objects.filter(ol_active = 1).order_by('ol_order')
            lstOtherLinks = []
            for ol in objectOtherLinks:
                jsonOtherLinks = {
                    'ol_name': ol.ol_name,
                    'ol_link': ol.ol_link,
                }
                lstOtherLinks.append(jsonOtherLinks)
            request.session['lst_other_links'] = lstOtherLinks

            response = get_response(request)

            # Código de middleware después de procesar la respuesta

            return response
        except Exception as inst:
            pass

    return middleware