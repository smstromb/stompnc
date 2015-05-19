from django.shortcuts import render_to_response
from stomps.models import Stomp
from django.template.context import RequestContext

def stomps(request):
    stomps = Stomp.objects.order_by('-pub_date')
    context={'stomps': stomps}
    return render_to_response('stompnc/stomps.html', context_instance=RequestContext(request, context))