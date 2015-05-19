from django.shortcuts import render_to_response
from homepage.models import HomePage
from django.template.context import RequestContext
from donate.models import Donator, CorporateDonator,KathyDonator,DawnDonator,ConnieDonator
from events.models import Event
from press.models import Press
import math

def chunks(l):
    n = int(round(len(l)/2.0))
    results = [];
    for i in xrange(0, len(l), n):
        results.append(l[i:i+n])
        
    return results;

def index(request):
    homepage = HomePage.objects.get(id=1)
    donators = Donator.objects.order_by('-pub_date')[:5]
    corpDonators = CorporateDonator.objects.order_by('-pub_date')[:1]
    events =  Event.objects.order_by('startDate')
    pressStatements =  Press.objects.order_by('-publish_date')[:8]
    
    kathyDonators = KathyDonator.objects.order_by('name')
    kathyColumns = chunks(kathyDonators)
    
    dawnDonators = DawnDonator.objects.order_by('name')
    dawnColumns = chunks(dawnDonators)

    connieDonators = ConnieDonator.objects.order_by('name')
    connieColumns = chunks(connieDonators)


    
    context = {'homepage':homepage,'donators':donators, 'corpDonators':corpDonators,'events':events,'pressStatements':pressStatements,'kathyColumns':kathyColumns,'dawnColumns':dawnColumns,'connieColumns':connieColumns} 
    return render_to_response('stompnc/index.html', context_instance=RequestContext(request, context))