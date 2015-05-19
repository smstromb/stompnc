from press.models import Press
from django.contrib import admin

class PressAdmin(admin.ModelAdmin):
    list_display = ('name','pub_date')
    search_fields = ['name']

admin.site.register(Press,PressAdmin)