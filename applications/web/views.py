from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# Create your views here.
def index(request):


    data = {

    }
    return render(request, 'web/index.html', data)