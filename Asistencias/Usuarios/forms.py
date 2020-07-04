from django import forms
from django.contrib.auth.forms import UserChangeForm, UserCreationForm
from django.forms import ModelForm, PasswordInput
from django.core.validators import FileExtensionValidator
from Usuarios.models import Usuario, Facilitador, Estudiante, Proveedor, Platica, Asistencia, Nivel
from django.forms.models import inlineformset_factory
from bootstrap_datepicker_plus import DatePickerInput, TimePickerInput



class CrearUsuarioForm(UserCreationForm):
    class Meta(UserCreationForm):
        model = Usuario
        fields = ["username", "first_name", "last_name"]
        labels = {
            'username': 'Nombre usuario',
            'first_name': 'Nombre(s)',
            'last_name': 'Apellido(s)'
        }
        
class ModificarUsuarioForm(UserChangeForm):
    class Meta(UserChangeForm):
        model = Usuario
        fields = ["username", "first_name", "last_name"]
        labels = {
            'username': 'Nombre usuario',
            'first_name': 'Nombre(s)',
            'last_name': 'Apellido(s)'
        }

class EstudianteForm(ModelForm):
    matricula = forms.CharField(
        max_length=9,
        required=True,
        help_text='ejemplo: S12345678',
    )

    class Meta:
        model = Estudiante
        fields = ['matricula', 'nombre', 'apellido_paterno', 'apellido_materno']

class FacilitadorForm(ModelForm):
    class Meta:
        model = Facilitador
        fields = ['nombre', 'apellido_paterno', 'apellido_materno', 'nivel_academico']
        nivel_academico = forms.ModelChoiceField(queryset=Nivel.objects.all().order_by('nivel_academico'), to_field_name="nivel_academico")
        
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
            'hora': TimePickerInput(),
            'fecha': DatePickerInput(format='%Y-%m-%d'),
        }



class AsistenciaForm(ModelForm):
    class Meta:
        model = Asistencia
        fields = ['idPlatica','idEstudiante', 'asistencia']
        labels = {
            'idPlatica': 'Pláticas',
            'idEstudiante': 'Estudiantes',
            'asistencia': 'Asistencia',
        }
        estudiante = forms.ModelMultipleChoiceField(queryset=Estudiante.objects.filter(estado = True))
        widgets = {
            'idEstudiante': forms.CheckboxSelectMultiple(),
        }
