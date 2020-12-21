from django.urls import path
from . import views

app_name = 'app_phishing'

urlpatterns = [
    path("", views.phishing_inicio, name="phishing_inicio"),
    path("<slug>/", views.phishing_datos, name="phishing_datos"),
]
