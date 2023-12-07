from django.shortcuts import render

# Create your views here.


def panel(request):
    data = {
        'title': 'Panel de Administración',
    }
    return render(request, 'homeAdmin.html', data)

"""def listarProductos(request):
    data = {
        'title': 'Listar Productos',
    }
    return render(request, '/panel/crud/listarProductos.html', data)


def ingresarProductos(request):
    data = {
        'title': 'Ingresar Productos',
    }
    return render(request, 'panel/crud/ingresarProductos.html', data)

def editarProductos(request):
    data = {
        'title': 'Editar Productos',
    }
    return render(request, 'panel/crud/editarProductos.html', data)

def eliminarProductos(request):
    data = {
        'title': 'Eliminar Productos',
    }
    return render(request, 'panel/crud/eliminarProductos.html', data)"""