from django.contrib import admin
from django.urls import path
from .views import *
from django.contrib.auth.decorators import login_required
from django.views.static import serve
from django.conf import settings
from django.conf.urls import url,include    
app_name="Usuarios"

urlpatterns = [
    path('login/', ingresar),
]