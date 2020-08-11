from django.shortcuts import render
from Movies.forms import NewMovie
from Movies.models import Movie

# Create your views here.
def index(request):
    return render(request, 'Movies/index.html')

def view_movies(request):
    movie_list = Movie.objects.all
    return render(request, 'Movies/movielist.html', {'movies':movie_list})

def add_movie(request):
    movie_form = NewMovie()

    if request.method == 'POST':
        movie_form = NewMovie(request.POST)
        if movie_form.is_valid():
            movie_form.save(commit=True)
            return index(request)
        else:
            print("From error.")

    return render(request, 'Movies/addmovie.html', {'movie_form':movie_form})
