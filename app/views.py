from django.views.generic import TemplateView
from django.shortcuts import render, redirect
from django.http.response import HttpResponse
from django.contrib.auth import authenticate
from django.contrib.auth import login as login_django
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
import json
from app.models import Professor
from app.models import Coordenadoria
from app.forms import ProfessorForm
from django.urls import reverse
from app.models import Bimestre
from app.forms import BimestreForm
from app.models import Pergunta
from app.forms import PerguntaForm
from app.models import Resposta
from app.forms import RespostaForm
from app.models import Escola, Turno , Serie, Turma, Materia


class IndexView(TemplateView):
    template_name = "index.html"

class ModeloView(TemplateView):
    template_name = "model.html"

class SobreView(TemplateView):
    template_name = "sobre.html"

class MatView(TemplateView):
    template_name = "questoes.html"

class PortView(TemplateView):
    template_name = "portugues.html"

def login(request):
    if request.method == "GET":
        return render(request, 'index.html')
    else:
        username = request.POST.get('username')
        senha = request.POST.get('senha')

        user =authenticate(username=username, password=senha)

        if user:
            return render(request, 'login.html')
        else:
            return render(request, 'negado.html')

@login_required
def plataforma(request):
    if request.user.is_authenticated:
        return render(request, 'login.html')
    else:
        return render('negado.html')

def index(request):
    if request.method == "GET":
        form_professor = ProfessorForm()

        context = {
            'form_professor': form_professor,
    }
        return render(request, "form.html", context = context)

    elif request.method == "POST":
        print("passou no Elif")
        form_professor = ProfessorForm(request.POST)
        if form_professor.is_valid():
            print("chegou na validação")
           # escolas = Escola.objects.filter(id__in=request.POST.getlist('escolas'))
            form_professor.save()
          # f_cont = form_mat_perg.save(commit=False)
          # f_cont.professor = Professor.objects.get(id=form_professor.instance.id)
          # f_cont.materia = Materias.objects.get(id=int(request.POST.get('materia')))
          # f_cont.save()
            serie = Serie.objects.get(id=int(request.POST.get('serie')))
            print(serie.serie)
            if serie.serie == "9 º  Ano EF":
                print("Entrou no if Serie")
                if int(request.POST.get('materia'))%2 == 0:
                    print("Entrou no if Materia")
                    context ={
                        'professor_instance': form_professor,
                    }

                    return render (request, "materias/series/9ano/portugues/portugues9.html", context)
                elif int(request.POST.get('materia'))%2 !=  0:
                    print("Entrou no if Materia")
                    #passando a instancia do rofessor para matematica9.html
                    context ={
                        'professor_instance': form_professor,
                    }

                    return render (request, "materias/series/9ano/matematica/matematica9.html", context)

            else:
                return render (request, "index.html")


        else:

            print("Nao validou.")
            return render (request, "index.html")

    else:
            context = {
            'form_professor': form_professor,
            }

            return render (request, "form.html", context)



def salvarMatematica(request):
    print(request.POST.get('professor'))
    print(request.POST.get('p1'))
    if request.method == "POST":
        print("chegou no Post")
        for i in range(1, 7):
            form_resposta = RespostaForm(request.POST)
            if form_resposta.is_valid():
                print("Vaidou!!")
                f_cont = form_resposta.save(commit=False)
                f_cont.professor = Professor.objects.get(id=int(request.POST.get('professor')))
                f_cont.pergunta = Pergunta.objects.get(id=i)
                if request.POST.get('p'+str(i)) == 'on':
                    print("Verdadeiro!!")
                    f_cont.resposta = True
                else:
                    print("falso!!")
                    f_cont.resposta = False
                f_cont.save()

        return render(request, "index.html")



def salvarPortugues(request):
    print(request.POST.get('professor'))
    print(request.POST.get('p1'))
    if request.method == "POST":
        print("chegou no Post")
        for i in range(1, 11):
            form_resposta = RespostaForm(request.POST)
            if form_resposta.is_valid():
                print("Vaidou!!")
                f_cont = form_resposta.save(commit=False)
                f_cont.professor = Professor.objects.get(id=int(request.POST.get('professor')))
                f_cont.pergunta = Pergunta.objects.get(id=i+6)
                if request.POST.get('p'+str(i)) == 'on':
                    print("Verdadeiro!!")
                    f_cont.resposta = True
                else:
                    print("falso!!")
                    f_cont.resposta = False
                f_cont.save()

        return render(request, "index.html")




def getCoordenadorias(request):
    data = json.loads(request.body)
    jurisdicao_id = data["id"]
    coordenadorias = Coordenadoria.objects.filter(jurisdicao_id=jurisdicao_id)
    return JsonResponse(list(coordenadorias.values("id", "coordenadoria")), safe=False)

def getEscolas(request):
    data = json.loads(request.body)
    coordenadoria_id = data["id"]
    escolas = Escola.objects.filter(coordenadoria_id=coordenadoria_id)
    return JsonResponse(list(escolas.values("id", "escola")), safe=False)


def getTurnos(request):
    data = json.loads(request.body)
    escola_id = data["id"]
    turnos = Turno.objects.filter(escola_id=escola_id)
    return JsonResponse(list(turnos.values("id", "turno")), safe=False)

def getSeries(request):
    data = json.loads(request.body)
    turno_id = data["id"]
    series = Serie.objects.filter(turno_id=turno_id)
    return JsonResponse(list(series.values("id", "serie")), safe=False)

def getTurmas(request):
    data = json.loads(request.body)
    serie_id = data["id"]
    turmas = Turma.objects.filter(serie_id=serie_id)
    return JsonResponse(list(turmas.values("id", "turma")), safe=False)

def getMaterias(request):
    data = json.loads(request.body)
    serie_id = data["id"]
    materias = Materia.objects.filter(serie_id=serie_id)
    return JsonResponse(list(materias.values("id", "materia")), safe=False)