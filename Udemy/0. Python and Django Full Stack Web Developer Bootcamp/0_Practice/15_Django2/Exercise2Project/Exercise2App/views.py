from django.shortcuts import render
from Exercise2App.models import User
# Create your views here.
def index(request):
    home_dict = {'Home': 'Welcome to the home page'}
    return render(request, 'Exercise2App/index.html', context=home_dict)


def users(request):
    user_list = User.objects.all
    user_dict = {'users': user_list}
    return render(request, "Exercise2App/users.html", context=user_dict)
