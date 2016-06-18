from django.db import models

# Create your models here.

class Item(models.Model):
    name  = models.CharField(max_length=200)
    value = models.CharField(max_length=200, blank=True, null=True)
    textvalue = models.TextField(blank=True, null=True)
    datevalue = models.DateTimeField(blank=True, null=True)
    
    def __str__(self):
        return self.name