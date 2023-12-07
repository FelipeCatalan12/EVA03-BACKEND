
from django.urls import path, include
from .views import *


urlpatterns = [

    path("listarProductos", listarProductos, name='listarProductos'),
    path("agregarProductos", agregarProductos, name='agregarProductos'),
    path("actualizarProducto/<int:id>", actualizarProducto, name='actualizarProducto'),
    path("eliminarProducto/<int:id>", eliminarProducto, name='eliminarProductos'),
]
