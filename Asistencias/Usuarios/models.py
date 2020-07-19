from django import forms
from django.contrib.auth.models import AbstractUser, User
from django.core.validators import FileExtensionValidator
from django.db import models
from django.urls import reverse

class Usuario(AbstractUser):

    def __str__(self):
        return self.username

class Estudiante(models.Model):
    matricula = models.CharField(max_length=9, blank=False, unique=True)
    nombre = models.CharField(max_length=100, blank=False)
    apellido_paterno = models.CharField(max_length=100, blank=False)
    apellido_materno = models.CharField(max_length=100)
    estado = models.BooleanField(default=True)

    class Meta:
        ordering=['matricula']
        verbose_name = 'Estudiante'
        verbose_name_plural = 'Estudiantes'

    def __str__(self):
        return '%s %s %s %s' % (self.matricula, self.nombre, self.apellido_paterno, self.apellido_materno) 

class Nivel(models.Model):
    abreviatura = models.CharField(max_length=15, blank=False, unique=True)
    nivel_academico = models.CharField(max_length=15, blank=False, unique=True)

    class Meta:
        verbose_name = 'Nivel'
        verbose_name_plural = 'Niveles'

    def __str__(self):
        return '%s' % (self.nivel_academico) 

class Facilitador(models.Model):
    nombre = models.CharField(max_length=100, blank=False)
    apellido_paterno = models.CharField(max_length=100, blank=False)
    apellido_materno = models.CharField(max_length=100)
    nivel_academico = models.ForeignKey(Nivel, on_delete = models.CASCADE, default=None)
    estado = models.BooleanField(default=True)

    class Meta:
        ordering = ['-id']
        verbose_name = 'Facilitador'
        verbose_name_plural = 'Facilitadores'

    def __str__(self):
        return '%s %s %s %s' % (self.nivel_academico.abreviatura, self.nombre, self.apellido_paterno, self.apellido_materno) 

class Proveedor(models.Model):
    nombre = models.CharField(max_length=100, blank=False)
    estado = models.BooleanField(default=True)

    class Meta:
        ordering = ['-id']
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'

    def __str__(self):
        return self.nombre

class Platica(models.Model):
    nombre = models.CharField(max_length=250, blank=False)
    fecha = models.DateField()
    hora = models.TimeField()
    lugar = models.CharField(max_length=300)
    estado = models.BooleanField(default=True)
    idProveedor = models.ForeignKey(Proveedor, on_delete = models.CASCADE, default=None)
    idFacilitador = models.ForeignKey(Facilitador, on_delete = models.CASCADE, default=None)

    class Meta:
        ordering=['-fecha']
        verbose_name = 'Platica'
        verbose_name_plural = 'Platicas'

    def __str__(self):
        return '%s %s' % (self.fecha,self.nombre) 


class Asistencia(models.Model):
    idEstudiante = models.ManyToManyField(Estudiante)
    idPlatica = models.ForeignKey(Platica, on_delete = models.CASCADE)
    asistencia = models.BooleanField()

    class Meta:
        ordering = ['-id']
        verbose_name = 'Asistencia'
        verbose_name_plural = 'Asistencias'