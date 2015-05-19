from django.db import models
from singleton_models.models import SingletonModel

class HomePage(SingletonModel):
	welcomeMessage = models.TextField("Welcome Message")
	volunteerMessage = models.TextField("Volunteer Message")
	eventMessage = models.TextField("Events Message")
	contactMessage = models.TextField("Contact Message")
	boardMessage = models.TextField("Who We Are Message")
	
	def __unicode__(self):
		return u"Home Page Settings"
		
	class Meta:
		verbose_name = "Home Page Settings" 
		verbose_name_plural = "Home Page Settings"
