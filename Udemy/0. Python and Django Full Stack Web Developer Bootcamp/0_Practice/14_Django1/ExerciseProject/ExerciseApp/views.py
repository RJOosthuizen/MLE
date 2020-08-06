from django.shortcuts import render

from django.http import HttpResponse

def index(request):
    return HttpResponse("<em>My Exercise Project</em>")

def help(request):
    help_dict = {'helptext':'HELP PAGE'}
    return render(request, 'ExerciseApp/help.html', context=help_dict)
