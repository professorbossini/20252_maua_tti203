from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
  variaveis = {
    'minha_primeira_variavel': 'Hello, variáveis V2!!!'
  }
  return render(request, 'primeira_aplicacao/index.html', context=variaveis)
  # return HttpResponse('Hello, Django')
