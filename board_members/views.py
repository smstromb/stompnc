from django.shortcuts import render_to_response
from board_members.models import Member
from django.template.context import RequestContext

def directors(request):
    ncMembers = Member.objects.filter(isNJMember=False).order_by('pub_date')
    njMembers = Member.objects.filter(isNJMember=True).order_by('pub_date')
        
    context={'ncMembers':ncMembers,'njMembers':njMembers}
    return render_to_response('stompnc/directors.html', context_instance=RequestContext(request, context))
