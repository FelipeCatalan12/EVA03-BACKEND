
from django.urls import path, include
from gestorProducts.views import panel


urlpatterns = [
    path('panel/', panel, name='panel'),
]
