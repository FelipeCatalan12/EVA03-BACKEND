from django import forms
from .models import Categoria, Productos


#Actualizar el dato
class CategoriaForm(forms.form):
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