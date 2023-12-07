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
<<<<<<< HEAD
from gestorUser.views import index, vistaAdmin, createUser, viewUsers

=======
from gestorUser.views import index, vistaAdmin
from gestorProducts.views import listarProductos, agregarProductos, actualizarProductos, eliminarProductos
>>>>>>> 95a04ff8b0169d48e69c703f0b1d6c093b3fb4aa

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',index),
    path('users/',viewUsers, name='viewUsers'),
    path('addUsers/',createUser, name='createUser'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('vistaAdmin/', vistaAdmin, name='vistaAdmin'),
    path("listarProductos", listarProductos, name='listarProductos'),
    path("agregarProductos", agregarProductos, name='agregarProductos'),
    path("actualizar/<int:id>", actualizarProductos, name='actualizarProductos'),
    path("eliminar/<int:id>", eliminarProductos, name='eliminarProductos'),
]


