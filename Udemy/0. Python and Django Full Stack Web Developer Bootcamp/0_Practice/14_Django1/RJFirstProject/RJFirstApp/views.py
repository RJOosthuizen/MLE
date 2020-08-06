from django.shortcuts import render

#NEW
from django.http import HttpResponse #not needed? not if using render

def index(request):
    # return HttpResponse("Hello World!")
    my_dict = {'insert_me': 'hello i am from views.py'}
    return render(request, 'RJFirstApp/index.html', context=my_dict)
