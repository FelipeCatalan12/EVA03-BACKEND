
from django.urls import path, include
from .views import *


urlpatterns = [

    path("listarProductos", listarProductos, name='listarProductos'),
    path("agregarProductos", agregarProductos, name='agregarProductos'),
    path("actualizarProducto/<int:id>", actualizarProductos, name='actualizarProductos'),
    path("eliminarProducto/<int:id>", eliminarProductos, name='eliminarProductos'),
]
