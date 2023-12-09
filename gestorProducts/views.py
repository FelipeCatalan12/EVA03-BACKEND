from django.shortcuts import render, get_object_or_404
from .models import Productos, Categoria
from django.http import HttpResponseRedirect
from django.urls import reverse
from .forms import ProductoForm, CategoriaForm
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

def listarProductosUser(request):

    productos = Productos.objects.all()

    data = {
        'title': 'Listar Productos',
        'productos': productos,
    }
    return render(request, 'menus/crudProductos/listarProductosUser.html', data)


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


def agregarCategoria(request):
    if request.method == 'POST':
        formCategoria = CategoriaForm(request.POST)
        if formCategoria.is_valid():
            print("Guardando el formulario...")
            formCategoria.save()
            return HttpResponseRedirect(reverse("listarCategoria"))
        else:
            print(formCategoria.errors)
    else:
        formCategoria = CategoriaForm()

    data = {'formCategoria': formCategoria, 'titulo': 'Agregar Categoria'}
    return render(request, 'menus/crudProductos/agregarCategoria.html', data)

def listarCategoria(request):
    categoria = Categoria.objects.all()
    data = {
        'categorias': categoria
    }
    return render(request, 'menus/crudProductos/listarCategoria.html', data)

def actualizarCategoria(request, id):
    categoria = get_object_or_404(Categoria, id=id)

    if request.method == 'POST':
        form = CategoriaForm(request.POST, instance=categoria)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse("listarCategoria"))
    else:
        form = CategoriaForm(instance=categoria)

    return render(request, 'menus/crudProductos/actualizarCategoria.html', {'form': form, 'categoria': categoria})

def eliminarCategoria(request, id):
    categoria = get_object_or_404(Categoria, id=id)
    categoria.delete()
    return HttpResponseRedirect(reverse("listarCategoria"))    