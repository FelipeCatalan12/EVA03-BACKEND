from django.shortcuts import render
from django.contrib.auth.decorators import login_required


# Create your views here.


def index(request):
    data = {
        'title': 'Clinica Veterinaria Chucky',
        'message': 'Bienvenido a la clinica veterinaria Chucky',
        'info':'Esta es una clinica veterinaria que se encarga de cuidar a tus mascotas, para que puedas estar tranquilo y seguro de que tu mascota esta en buenas manos.',
        'informacion2': 'Podras ver e ingresar a los diferentes servicios que ofrecemos, como por ejemplo: Ingresar a la tienda, ver los servicios que ofrecemos, ver los productos que ofrecemos, ver los medicamentos que ofrecemos, ver los clientes que tenemos, ver los empleados que tenemos,'
    }
    return render(request, 'home.html', data)

@login_required
def vistaAdmin(request):
    if request.user.is_superuser:
        return render(request, 'homeAdmin.html')
    else:
        return render(request, 'homeUser.html')