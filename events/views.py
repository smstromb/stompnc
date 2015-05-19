from django.shortcuts import render_to_response
from events.models import Event
from django.template.context import RequestContext

def events(request):
    events =  Event.objects.order_by('-startDate')
    context = {'events':events} 
    return render_to_response('stompnc/events.html', context_instance=RequestContext(request, context))# Create your views here.
