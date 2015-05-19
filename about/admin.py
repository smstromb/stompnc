from about.models import About
from django.contrib import admin
from singleton_models.admin import SingletonModelAdmin

admin.site.register(About,SingletonModelAdmin)