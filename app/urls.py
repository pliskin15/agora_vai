from django.urls import path
from .views import IndexView, SobreView, ModeloView, MatView, PortView
from . import views
urlpatterns = [
    path('', IndexView.as_view(), name='inicio'),
    path('sobre/', SobreView.as_view(), name='sobre'),
    path('matematica/', views.salvarMatematica, name='matematica'),
    path('portugues/', views.salvarPortugues, name='portugues'),
    path('login/', views.login, name ='login'),
    path('formulario/', views.index, name ='form'),
    path('modelo/', ModeloView.as_view(), name ='modelo'),
    path('portugues/', PortView.as_view(), name='portugues'),
    path('coordenadorias', views.getCoordenadorias, name = "coordenadorias"),
    path('escolas', views.getEscolas, name = "escolas"),
    path('turnos', views.getTurnos, name = "turnos"),
    path('series', views.getSeries, name = "series"),
    path('turmas', views.getTurmas, name = "turmas"),
    path('materias', views.getMaterias, name = "materias")

  #  path('resultado/', views.lista, name='resultado')


]
