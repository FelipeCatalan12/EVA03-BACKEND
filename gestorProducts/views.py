from django.shortcuts import render, get_object_or_404
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


def actualizarProducto(request, id):
    producto = get_object_or_404(Productos, id=id)

    if request.method == 'POST':
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse("listarProductos"))
    else:
        form = ProductoForm(instance=producto)

    return render(request, 'menus/crudProductos/actualizarProducto.html', {'form': form, 'producto': producto})

def eliminarProducto(request, id):
    producto = get_object_or_404(Productos, id=id)
    producto.delete()
    return HttpResponseRedirect(reverse("listarProductos"))