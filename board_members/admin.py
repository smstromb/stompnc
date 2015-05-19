from board_members.models import Member
from django.contrib import admin

class BoardMemberAdmin(admin.ModelAdmin):
	list_display = ('name','pub_date')
	search_fields = ['name']

admin.site.register(Member,BoardMemberAdmin)