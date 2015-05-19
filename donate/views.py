# Create your views here.
from django.shortcuts import render, render_to_response

def donate(request):
    return render(request, 'stompnc/donate.html')# Create your views here.
