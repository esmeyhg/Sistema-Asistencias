from django import forms
from django.contrib.auth.forms import UserChangeForm, UserCreationForm
from django.forms import ModelForm, PasswordInput
from django.core.validators import FileExtensionValidator
from Usuarios.models import Usuario, Facilitador, Estudiante, Proveedor, Platica, Asistencia
from django.forms.models import inlineformset_factory
from bootstrap_datepicker_plus import DatePickerInput, TimePickerInput



class CrearUsuarioForm(UserCreationForm):
    class Meta(UserCreationForm):
        model = Usuario
        fields = ["username", "first_name", "last_name"]
        
class ModificarUsuarioForm(UserChangeForm):
    class Meta(UserChangeForm):
        model = Usuario
        fields = ["username", "first_name", "last_name"]

class EstudianteForm(ModelForm):

    class Meta:
        model = Estudiante
        fields = ['matricula', 'nombre', 'apellido_paterno', 'apellido_materno']

class FacilitadorForm(ModelForm):
    class Meta:
        model = Facilitador
        fields = ['nombre', 'apellido_paterno', 'apellido_materno', 'nivel_academico']

class ProveedorForm(ModelForm):
    class Meta:
        model = Proveedor
        fields = ['nombre']

class PlaticaForm(ModelForm):
    class Meta:
        model = Platica
        fields = ['nombre', 'fecha', 'hora', 'lugar', 'idProveedor', 'idFacilitador']
        labels = {
            'nombre': 'Nombre',
            'fecha': 'Fecha',
            'hora': 'Hora',
            'lugar': 'Lugar',
            'idProveedor': 'Proveedor',
            'idFacilitador':'Ponente',
        }
        proveedor = forms.ModelChoiceField(queryset=Proveedor.objects.filter(estado = True).order_by('nombre'), to_field_name="idProveedor")
        facilitador = forms.ModelChoiceField(queryset=Facilitador.objects.filter(estado = True).order_by('nombre'), to_field_name="idFacilitador")
        widgets = {
            'fecha': DatePickerInput(format='%Y-%m-%d'),
            'hora': TimePickerInput(),
        }

class AsistenciaForm(ModelForm):
    class Meta:
        model = Asistencia
        fields = ['idEstudiante', 'idPlatica', 'asistencia']
        labels = {
            'idEstudiante': 'Estudiante',
            'idPlatica': 'Plática',
            'asistencia': 'Asistencia',
        }


