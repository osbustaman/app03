from django.core.validators import validate_email
from django.forms import ValidationError
from rest_framework import serializers

from applications.web.models import RequestWeb


class RequestWebSerializers(serializers.ModelSerializer):
    class Meta:
        model = RequestWeb
        fields = ('__all__')

    def validate(self, data):
        try:
            validate_email(data['rw_mailcontact'])
        except ValidationError:
            raise serializers.ValidationError("El correo electrónico no es válido")

        return data

class RegisterMailSerializers(serializers.ModelSerializer):
    class Meta:
        model = RequestWeb
        fields = ('rw_mailcontact',)

    def validate(self, data):
        try:
            validate_email(data['rw_mailcontact'])
        except ValidationError:
            raise serializers.ValidationError("El correo electrónico no es válido")

        return data