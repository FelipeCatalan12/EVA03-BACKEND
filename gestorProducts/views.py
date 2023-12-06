from django.shortcuts import render

# Create your views here.


def panel(request):
    data = {
        'title': 'Panel de Administración',
    }
    return render(request, 'panel/index.html')