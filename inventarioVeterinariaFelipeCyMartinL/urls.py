"""
URL configuration for inventarioVeterinariaFelipeCyMartinL project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from gestorUser.views import *
from gestorProducts.views import listarProductos, agregarProductos, actualizarProducto, eliminarProducto, agregarCategoria

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',index),
    path('users/',viewUsers, name='viewUsers'),
    path('signup/',signUp, name='SignUp'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('vistaAdmin/', vistaAdmin, name='vistaAdmin'),
    path("listarProductos", listarProductos, name='listarProductos'),
    path("agregarProductos", agregarProductos, name='agregarProductos'),
    path("actualizarProducto/<int:id>", actualizarProducto, name='actualizarProducto'),
    path("eliminar/<int:id>", eliminarProducto, name='eliminarProductos'),
    path("agregarCategoria/", agregarCategoria, name='agregarCategoria'),
]


