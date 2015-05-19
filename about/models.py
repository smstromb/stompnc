from django.db import models
from singleton_models.models import SingletonModel

class About(SingletonModel):
	mission_statement = models.TextField("Mission Statement")
	story = models.TextField("Story")
	
	def __unicode__(self):
		return u"About"
		
	class Meta:
		verbose_name = "About Page Settings" 
		verbose_name_plural = "About Page Settings"
		
		