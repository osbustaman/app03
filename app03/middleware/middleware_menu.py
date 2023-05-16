# -*- encoding: utf-8 -*-
import os

class menu_middleware_items(object):
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        return response

    def process_view(self, request, view_func, view_args, view_kwargs):

        try:
            if '/' in request.path:
                request.session['item'] = 1

            if 'acerca-de-nosotros/2/' in request.path:
                request.session['item'] = 2

            if 'nuestros-servicios/4/' in request.path:
                request.session['item'] = 4

            if 'contactanos/5/' in request.path:
                request.session['item'] = 5
            
            if '/servicio/8/' in request.path:
                request.session['item'] = 4
        except:
            pass