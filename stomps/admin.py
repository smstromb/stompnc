from stomps.models import Stomp
from django.contrib import admin

class StompAdmin(admin.ModelAdmin):
	list_display = ('name','story','pub_date')
	list_filter = ['pub_date']
	search_fields = ['name']
	date_hierarchy = 'pub_date'


admin.site.register(Stomp,StompAdmin)