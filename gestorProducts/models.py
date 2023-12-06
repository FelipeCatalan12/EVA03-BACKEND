from django.db import models

# Create your models here.

class Categoria(models.Model):
    nombre_categoria = models.CharField(max_length=55)

    def __str__(self):
        return self.nombre_categoria    

class Productos(models.Model):
    nombre_producto = models.CharField(max_length=55)
    descripcion_producto = models.CharField(max_length=55)
    precio = models.IntegerField
    categoria_producto = models.ForeignKey(Categoria, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre_producto   
