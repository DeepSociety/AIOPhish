from django.shortcuts import render, redirect

# Create your views here.
def inicio_principal(request):
    return redirect('/phishing')