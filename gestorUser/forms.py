from django import forms
from .models import userProfile
from django.core import validators

class usuarioForm(forms.ModelForm):
    user = forms.CharField(max_length=55,
                validators=[
                    validators.MinLengthValidator(2),
                    validators.MaxLengthValidator(15)
                ]
    ) 

    info = forms.CharField(max_length=55,
                validators=[
                    validators.MinLengthValidator(2),
                    validators.MaxLengthValidator(15)
                ]
    )

    user.widget.attrs['class'] = 'form-control'
    info.widget.attrs['class'] = 'form-control'

    class Meta:
        model = userProfile
        fields = '__all__'    