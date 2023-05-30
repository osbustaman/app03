import json

from django.http import HttpResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from applications.web.models import BlockHome, Carrousel, Pages, RequestWeb, Services
from applications.web.utils import send_email

# Create your views here.
def index(request):

    objectCarrousel = Carrousel.objects.filter(carr_isactive = 1)
    objectBlocks = BlockHome.objects.filter(bh_active = 1).order_by('bh_id')

    data = {
        'objectCarrousel': objectCarrousel,
        'typePage': 'home',
        'objectBlocks': objectBlocks
    }
    return render(request, 'web/index.html', data)

def pages(request):

    namePage = (request.path).replace("/", "")
    objectPage = Pages.objects.filter(typePages__tp_shortnamepage = namePage).first()

    objectsServices = Services.objects.filter(serv_isactive = 1)

    data = {
        'namePage': f'web/pages/{namePage}.html',
        'objectPage': objectPage,
        'title': namePage.replace("-", " "),
        'objectsServices': objectsServices
    }
    return render(request, 'web/index.html', data)

@csrf_exempt
def ajaxRequestMail(request):

    try:

        sender_email = request.POST['emailInput']
        subject = request.POST['serviceSelect']
        message = request.POST['messageInput']

        send_email(sender_email, subject, message)

        rw = RequestWeb()
        rw.rw_namecontact = request.POST['nameInput']
        rw.services = Services.objects.get(serv_id = int(request.POST['serviceSelect']))
        rw.rw_phonocontact = request.POST['phoneInput']
        rw.rw_mailcontact = request.POST['emailInput']
        rw.rw_mesagge = request.POST['messageInput']
        rw.save()

        message = 'success'
        error = False

    except Exception as inst:
        message = 'failed'
        error = inst
    
    html = {
        'message': message,
        'error': error
    }
    response = json.dumps(html)
    return HttpResponse(response, content_type = 'application/json')

@csrf_exempt
def ajaxRegisterMail(request):

    try:

        rw = RequestWeb()
        rw.rw_mailcontact = request.POST['emailInput']
        rw.save()

        message = 'success'
        error = False

    except Exception as inst:
        message = 'failed'
        error = inst
    
    html = {
        'message': message,
        'error': error
    }
    response = json.dumps(html)
    return HttpResponse(response, content_type = 'application/json')