from homepage.models import HomePage
from django.contrib import admin
from singleton_models.admin import SingletonModelAdmin

	
class HomePageAdmin(SingletonModelAdmin):
	fieldsets = [
		('Messages', 
			{
				'fields': ['welcomeMessage','volunteerMessage','eventMessage','contactMessage','boardMessage']
			}),
	]

admin.site.register(HomePage,HomePageAdmin)
