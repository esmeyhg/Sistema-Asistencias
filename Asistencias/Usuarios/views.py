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
from django.views.generic import CreateView, UpdateView

#METODOS DEL USUARIO, INGRESAR AL SISTEMA, REGISTRARSE, CONSULTAR SU INFO. Y ACTUALIZARLA.

def ingresar(request):
    if request.method == 'GET':
        if request.user.is_authenticated:
            return redirect('/estudiantes/')
        else:
            return render(request, "login.html")

    elif request.method == 'POST':
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)

        try:
            usuario = Usuario.objects.get(username=username)
        except Usuario.DoesNotExist:
            usuario = None

        if usuario is not None:
            user = authenticate(username=usuario.username, password=password)
            login(request, user)
            return redirect('/estudiantes/')
        else:
            return render(request, 'login.html', {'mensaje': 'error'})


def registrar(request):
    if request.method == 'GET':
        form = CrearUsuarioForm(use_required_attribute=False)
        return render(request, 'registro.html', {'form': form})
    elif request.method == 'POST':
        form = CrearUsuarioForm(request.POST, request.FILES)
        if form.is_valid():
            instance = form.save(commit = False)
            instance.is_active=True
            instance.save()
            return render(request, 'login.html', {'form': form, 'mensaje':'success'})
        else:
            form = CrearUsuarioForm(request.POST)
            return render(request, 'registro.html', {'form': form})

def abrir_home(request):
    return render(request, "estudiantes/estudiantes.html")

def cuenta_usuario(request):
    if request.method == 'POST':
        form = ModificarUsuarioForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
            return redirect('/cuenta/')
    elif request.method == 'DELETE':
        usuario = User.objects.get(username=request.user.username)
        print(usuario.username)
        usuario.is_active = False
        usuario.save()
        logout(request)
        return redirect('/login/')
    else:
        form = ModificarUsuarioForm(instance=request.user)
        return render(request, "cuenta.html", {"form": form})

def borrar_usuario(request):
    usuario = Usuario.objects.get(username=request.user.username)
    usuario.is_active = False
    usuario.save()
    logout(request)
    return redirect('/login/')

#METODOS DE LOS ESTUDIANTES, MOSTRAR, REGISTRAR, ELIMINAR Y ACTUALIZAR INFORMACION

def mostrar_estudiantes(request):
    estudiantes = Estudiante.objects.filter(estado = True)

    info = {}
    info["estudiantes"] = estudiantes

    context = {"info": info}
    return render(request, "estudiantes/estudiantes.html", context)

def edit(request, idEstudiante):
    estudiante = Estudiante.objects.get(id=idEstudiante)
    return render (request, 'estudiantes/principal_estudiante.html', {'estudiante':estudiante})

def update(request, idEstudiante):
    estudiante = get_object_or_404(Estudiante, id=idEstudiante)
    estudianteForm = EstudianteForm(request.POST or None, instance=estudiante)
    if estudianteForm.is_valid():
        estudianteForm.save()
        return redirect("/estudiantes")
    return render(request, 'estudiantes/editar_estudiante.html', {'form':estudianteForm})

#METODOS DE LOS FACILITADORES, MOSTRAR, REGISTRAR, ELIMINAR, ACTUALIZAR
def mostrar_facilitadores(request):
    facilitadores = Facilitador.objects.filter(estado = True)

    info = {}
    info["facilitadores"] = facilitadores

    context = {"info": info}
    return render(request, "facilitadores/facilitadores.html", context)

def borrar_facilitador(request, idFacilitador):
    facilitador = Facilitador.objects.get(id=idFacilitador)
    facilitador.estado = False
    facilitador.save()
    return redirect('/facilitadores')

def crear_facilitador(request):
    facilitadorForm = FacilitadorForm(request.POST or None)
    if facilitadorForm.is_valid():
        facilitadorForm.save()
        return redirect('/facilitadores')
    return render(request, 'facilitadores/registro_facilitador.html', {'form': facilitadorForm})

def editar_facilitador(request, idFacilitador):
    facilitador = Facilitador.objects.get(id=idFacilitador)
    return render (request, 'facilitadores/principal_facilitador.html', {'facilitador':facilitador})

def update_facilitador(request, idFacilitador):
    facilitador = get_object_or_404(Facilitador, id=idFacilitador)
    facilitadorForm = FacilitadorForm(request.POST or None, instance=facilitador)
    if facilitadorForm.is_valid():
        facilitadorForm.save()
        return redirect('/facilitadores')
    return render(request, 'facilitadores/editar_facilitador.html', {'form':facilitadorForm})

#METODOS DE LOS PROVEEDORES, MOSTRAR, REGISTRAR, ELIMINAR, ACTUALIZAR
def mostrar_proveedores(request):
    proveedores = Proveedor.objects.filter(estado = True)

    info = {}
    info["proveedores"] = proveedores

    context = {"info": info}
    return render(request, "proveedores/proveedores.html", context)

def borrar_proveedor(request, idProveedor):
    proveedor = Proveedor.objects.get(id=idProveedor)
    proveedor.estado = False
    proveedor.save()
    return redirect('/proveedores')

def update_proveedor(request, idProveedor):
    proveedor = get_object_or_404(Proveedor, id=idProveedor)
    proveedorForm = ProveedorForm(request.POST or None, instance=proveedor)
    if proveedorForm.is_valid():
        proveedorForm.save()
        return redirect('/proveedores')
    return render(request, 'proveedores/editar_proveedor.html', {'form':proveedorForm})


def salir(request):
    logout(request)
    return redirect('/login/')