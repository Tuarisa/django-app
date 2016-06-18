from django.shortcuts import render
from .models import Item

def index(request):
    items = {}

    for item in Item.objects.all():
        items[item.name]=item

    return render(request, 'app/index.jade', {'items':Struct(items)})



### Helpers  

class Struct:
    def __init__(self, d):
        for a, b in d.items():
            if isinstance(b, (list, tuple)):
               setattr(self, a, [Struct(x) if isinstance(x, dict) else x for x in b])
            else:
               setattr(self, a, Struct(b) if isinstance(b, dict) else b)