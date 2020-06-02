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
    path('registro/', registrar),
    path('logout/', salir),
    path('delete/', login_required(borrar_usuario)),
    path('cuenta/', login_required(cuenta_usuario)),
    path('estudiantes/', login_required(mostrar_estudiantes)),
    path('registrarEstudiante/', login_required(crear_estudiante)),
    path('deleteEstudiante/<int:idEstudiante>', login_required(borrar_estudiante)),
    path('detalleEstudiante/<int:idEstudiante>', login_required(edit)),
    path('updateEstudiante/<int:idEstudiante>', login_required(update)),
    path('facilitadores/', login_required(mostrar_facilitadores)),
    path('registrarFacilitador/', login_required(crear_facilitador)),
    path('deleteFacilitador/<int:idFacilitador>', login_required(borrar_facilitador)),
    path('updateFacilitador/<int:idFacilitador>', login_required(update_facilitador)),
    path('proveedores/', login_required(mostrar_proveedores)),
    path('registrarProveedor/', login_required(crear_proveedor)),
    path('deleteProveedor/<int:idProveedor>', login_required(borrar_proveedor)),
    path('updateProveedor/<int:idProveedor>', login_required(update_proveedor)),
    path('platicas/', login_required(mostrar_platicas)),
    path('registrarPlatica/', login_required(crear_platica)),
    path('deletePlatica/<int:idPlatica>', login_required(borrar_platica)),
    path('updatePlatica/<int:idPlatica>', login_required(update_platica)),
    path('asistencias/<int:idPlatica>', login_required(mostrar_asistencias_platica)),
    path('asistencias/', login_required(mostrar_asistencias)),
    path('registrarAsistencias/', login_required(crear_asistencias)),
    path('deleteAsistencias/<int:idAsistencia>', login_required(borrar_asistencias)),
    path('updateAsistencias/<int:idAsistencia>', login_required(update_asistencias)),
]