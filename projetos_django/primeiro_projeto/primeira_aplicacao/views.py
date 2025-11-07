from urllib import request
from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse

# configuraremos um endpoint em url.py que será o gatilha para
# executar essa função idex
# a função recebe uma requisição http e retorna um texto como resposta
def index(request):
    variaveis = {
        'minha_primeira_variavel': "Hello, variáveis depois de alterar o diretório!"
    }
    return render(request, 'primeira_aplicacao/index.html', context=variaveis)