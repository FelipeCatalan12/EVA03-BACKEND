
from django.urls import path, include
from .views import *


urlpatterns = [

    path("listarProductos", listarProductos, name='listarProductos'),
    path("listarProductosUser", listarProductosUser, name="listarProductosUser"),
    path("agregarProductos", agregarProductos, name='agregarProductos'),
    path("actualizarProducto/<int:id>", actualizarProducto, name='actualizarProducto'),
    path("eliminarProducto/<int:id>", eliminarProducto, name='eliminarProductos'),
    path("listarCategoria/", listarCategoria, name='listarCategoria'),
    path("agregarCategoria/", agregarCategoria, name='agregarCategoria'),
    path("actualizarCategoria/<int:id>", actualizarCategoria, name='actualizarCategoria'),
    path("eliminarCategoria/<int:id>", eliminarCategoria, name='eliminarCategoria')
]
