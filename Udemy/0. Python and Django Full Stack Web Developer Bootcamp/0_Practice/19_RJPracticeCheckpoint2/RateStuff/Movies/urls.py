from django.urls import path
from . import views

app_name = "Movies"

urlpatterns = [
    path('', views.index, name='index'),
    path('MovieList/', views.view_movies, name='movie_list'),
    path('Add/', views.add_movie, name='add_movie')
]
