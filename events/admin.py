from events.models import Event
from django.contrib import admin

class EventAdmin(admin.ModelAdmin):
    list_display = ('name','pub_date')
    search_fields = ['name']

admin.site.register(Event,EventAdmin)