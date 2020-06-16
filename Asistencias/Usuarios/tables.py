import django_tables2 as tables 
from Usuarios.models import Usuario, Facilitador, Estudiante, Proveedor, Platica, Asistencia, Nivel



class PlaticaTable(tables.Table):
    class Meta:
        model = Platica
        fields = fields = ['nombre', 'fecha', 'hora', 'lugar', 'idProveedor', 'idFacilitador']
        labels = {
            'nombre': 'Nombre',
            'fecha': 'Fecha',
            'hora': 'Hora',
            'lugar': 'Lugar',
            'idProveedor': 'Proveedor',
            'idFacilitador':'Ponente',
        }