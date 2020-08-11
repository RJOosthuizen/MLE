from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('Movies/', views.view_movies, name='movie list'),
    path('Add/', views.add_movie, name='add movie')
]
