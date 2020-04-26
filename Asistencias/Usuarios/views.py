import json
import os
from django.shortcuts import render, redirect, HttpResponse, Http404, get_object_or_404
from Usuarios.forms import *
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.db import transaction
from django.db.models import Q
from django import forms
from django.http import JsonResponse, HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.core import serializers
from .models import *
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.conf import settings
import hashlib

def ingresar(request):
    if request.method == 'GET':
        if request.user.is_authenticated:
            return redirect('/documentos/')
        else:
            return render(request, "login.html")

    elif request.method == 'POST':
        email = request.POST.get('email', None)
        password = request.POST.get('password', None)

        try:
            usuario = Usuario.objects.get(email=email)
        except Usuario.DoesNotExist:
            usuario = None

        if usuario is not None:
            if usuario.is_active:
                user = authenticate(username=usuario.username, password=password)
                login(request, user)
                return redirect('/documentos/')
            else:
                return render(request, 'login.html', {'mensaje': 'success'})
        else:
            return render(request, 'login.html', {'mensaje': 'error'})