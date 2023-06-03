from rest_framework.response import Response
from rest_framework import generics, status

from django.core.validators import validate_email
from django.forms import ValidationError

from applications.web.api.serializer import RegisterMailSerializers, RequestWebSerializers
from applications.web.models import RequestWeb

class RequestWebView(generics.CreateAPIView):
    serializer_class = RequestWebSerializers

    def post(self, request, format=None):
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            data = {"data": True}
            return Response(data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
class RegisterMailView(generics.CreateAPIView):
    serializer_class = RegisterMailSerializers

    def post(self, request, format=None):
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            serializer.save()
            data = {"data": True}
            return Response(data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)