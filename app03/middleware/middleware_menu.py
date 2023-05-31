# -*- encoding: utf-8 -*-
import os
from django.core import serializers
from applications.web.models import Company

class menu_middleware_items(object):
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        return response

    def process_view(self, request, view_func, view_args, view_kwargs):

        try:
            if '/' in request.path:
                request.session['item'] = 'home'

            if 'acerca-de-nosotros/' in request.path:
                request.session['item'] = 'acerca-de-nosotros'

            if 'nuestros-servicios/' in request.path:
                request.session['item'] = 'nuestros-servicios'

            if 'contactanos/' in request.path:
                request.session['item'] = 'contactanos'
            
        except:
            pass