from django import forms
from .models import Categoria, Productos


#Actualizar el dato
class CategoriaForm(forms.Form):
    class Meta:
        model = Categoria
        fields = ['nombre_categoria']
        widgets = {
            'nombre_categoria': forms.TextInput(attrs={'class': 'form-control'}),
        }

#Crear el dato 
class CategoriaForm(forms.ModelForm):
    class Meta:
        model = Categoria
        fields = ['nombre_categoria']
        widgets = {
            'nombre_categoria': forms.TextInput(attrs={'class': 'form-control'}),
        }

#Actualizar el dato
class ProductoForm(forms.Form):

    nombre_producto = forms.CharField(max_length=50)
    descripcion_producto = forms.CharField(max_length=50)
    precio = forms.IntegerField()
    categoria_producto = forms.ModelChoiceField(queryset=Categoria.objects.all())

    nombre_producto.widget.attrs['class'] = 'form-control'
    descripcion_producto.widget.attrs['class'] = 'form-control'
    precio.widget.attrs['class'] = 'form-control'


#Crear el dato 
class ProductoForm(forms.ModelForm):
    categoria_producto = forms.ModelChoiceField(queryset=Categoria.objects.all(), widget=forms.Select(attrs={'class': 'form-control'}))

    class Meta:
        model = Productos
        fields = '__all__'
        widgets = {
            'nombre_producto': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion_producto': forms.TextInput(attrs={'class': 'form-control'}),
            'precio': forms.NumberInput(attrs={'class': 'form-control'}),
            # 'categoria_producto': forms.Select(attrs={'class': 'form-control'}),
        }