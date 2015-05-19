# Create your views here.
from django.shortcuts import render_to_response
from about.models import About
from django.template.context import RequestContext

def story(request):
    story = About.objects.get(id=1)
    context = {'about':story} 
    return render_to_response('stompnc/story.html', context_instance=RequestContext(request, context))
