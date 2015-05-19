from django.db import models

class Stomp(models.Model):
	name = models.CharField(max_length=50)
	story = models.TextField()
	pub_date = models.DateTimeField(auto_now_add=True)
	
	def __unicode__(self):
	        return self.name
