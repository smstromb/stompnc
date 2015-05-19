from django.db import models
from django import forms
from captcha.fields import ReCaptchaField

# Create your models here.

class VolunteerForm(forms.Form):
	name = forms.CharField(max_length=100, label='Name')
	address = forms.CharField(label='Street Address',widget=forms.Textarea)
	city = forms.CharField(max_length=100, label='City')
	state = forms.CharField(max_length=100, label='State')
	zip = forms.CharField(max_length=100, label='Zip')
	phone = forms.CharField(max_length=20, label='Phone Number')
	email = forms.EmailField(label='Email')
	comments = forms.CharField(required=False, label='Comments/Questions',widget=forms.Textarea)
	captcha = ReCaptchaField(attrs={'theme' : 'white'})