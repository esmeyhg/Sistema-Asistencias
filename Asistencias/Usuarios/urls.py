from django.contrib import admin
from django.urls import path
from .views import *
from django.contrib.auth.decorators import login_required
from django.views.static import serve
from django.conf import settings
from django.conf.urls import url,include    
app_name="Usuarios"

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
    #path('registrarEstudiante/', login_required(crear_estudiante)),
    #path('deleteEstudiante/<int:idEstudiante>', login_required(borrar_estudiante)),
    path('detalleEstudiante/<int:idEstudiante>', login_required(edit)),
    path('updateEstudiante/<int:idEstudiante>', login_required(update)),
    path('facilitadores/', login_required(mostrar_facilitadores)),
    path('registrarFacilitador/', login_required(crear_facilitador)),
    path('deleteFacilitador/<int:idFacilitador>', login_required(borrar_facilitador)),
    path('detalleFacilitador/<int:idFacilitador>', login_required(editar_facilitador)),
    path('updateFacilitador/<int:idFacilitador>', login_required(update_facilitador)),
    #path('proveedores/', login_required(mostrar_proveedores, crear_proveedor)),
    #path('registrarProveedor/', login_required(crear_proveedor)),
    path('deleteProveedor/<int:idProveedor>', login_required(borrar_proveedor)),
    path('updateProveedor/<int:idProveedor>', login_required(update_proveedor)),
]