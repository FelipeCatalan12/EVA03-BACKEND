from django.shortcuts import render
from .models import Productos, Categoria
from django.http import HttpResponseRedirect
from django.urls import reverse
from .forms import ProductoForm
# Create your views here.


def panel(request):
    data = {
        'title': 'Panel de Administración',
    }
    return render(request, 'homeAdmin.html', data)

def listarProductos(request):

    productos = Productos.objects.all()

    data = {
        'title': 'Listar Productos',
        'productos': productos,
    }
    return render(request, 'menus/crudProductos/listarProductos.html', data)


def agregarProductos(request):
    formProductos = ProductoForm()

    if request.method == 'POST':
        formProductos = ProductoForm(request.POST)
    if formProductos.is_valid():
        print("Guardando el formulario...")
        formProductos.save()
        return HttpResponseRedirect(reverse("listarProductos"))
    else:
        print(formProductos.errors)
        
    data = {'formProductos': formProductos,
            'titulo': 'Agregar Productos'
            }
    return render(request, 'menus/crudProductos/agregarProductos.html',data)


def actualizarProductos(request, id):
    producto = Productos.objects.get(id=id)
    formProductos = ProductoForm(instance=producto)

    if request.method == 'POST':
        formProductos = ProductoForm(request.POST, instance=producto)
        if formProductos.is_valid():
            formProductos.save()
            return HttpResponseRedirect(reverse("listarProductos"))
    data = {
        'title': 'Editar Productos',
    }
    return render(request, 'menus/crudProductos/agregarProductos.html', data)

def eliminarProductos(request, id):

    productos = Productos.objects.get(id=id)
    productos.delete()

    return HttpResponseRedirect(reverse("listarProductos"))