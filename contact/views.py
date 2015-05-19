# Create your views here.
from django.shortcuts import render, render_to_response

def contact(request):
    return render(request, 'stompnc/contact.html')