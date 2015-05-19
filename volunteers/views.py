# Create your views here.
#!/usr/bin/python
import smtplib
from django.shortcuts import render
from django.http import HttpResponseRedirect
from volunteers.models import VolunteerForm
#from django.core.mail import send_mail

def thanks(request):
    return render(request, 'stompnc/thanks.html')

def volunteer(request):
    if request.method == 'POST': # If the form has been submitted...
        form = VolunteerForm(request.POST)
        if form.is_valid():
            subject = 'Volunteer Request'
            sender = 'dede@stompthemonsternc.org'
            password = 'hawkdawg1'
            recipients = ['support@stompthemonsternc.org']
            
            name = form.cleaned_data['name']
            address = form.cleaned_data['address']
            city = form.cleaned_data['city']
            state = form.cleaned_data['state']
            zip = form.cleaned_data['zip']
            phone = form.cleaned_data['phone']
            email = form.cleaned_data['email']
            comments = form.cleaned_data['comments']

            message = 'name: %s\naddress: %s\ncity: %s\nstate: %s\nzip: %s\nphone: %s\nemail: %s\ncomments/questions: %s\n' % (name,address,city,state,zip,phone,email,comments)
            
            server = smtplib.SMTP('smtp.gmail.com:587')
            server.ehlo()
            server.starttls()
            server.ehlo
            server.login(sender, password)
            server.sendmail(sender, recipients, subject + "\r\n\r\n" + message)
            server.quit()
            #send_mail('Test', 'This is a test', 'admin@stompthemonsternc.org', ['flynetjets@gmail.com'], fail_silently=False)
            return HttpResponseRedirect('/thanks/')
    else:
        form = VolunteerForm();

    return render(request, 'stompnc/volunteer.html', {'form':form,})