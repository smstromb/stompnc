from donate.models import Donator, CorporateDonator, KathyDonator, DawnDonator, ConnieDonator
from django.contrib import admin

class DonatorAdmin(admin.ModelAdmin):
    list_display = ('name','inHonorOf','amount','donate_date','pub_date')
    list_filter = ['pub_date']
    search_fields = ['name']
    date_hierarchy = 'pub_date'

class CorporateDonatorAdmin(admin.ModelAdmin):
    list_display = ('name','details','logo','pub_date')
    list_filter = ['pub_date']
    search_fields = ['name']
    date_hierarchy = 'pub_date'

class KathyDonatorAdmin(admin.ModelAdmin):
    list_display = ('name','pub_date')
    list_filter = ['pub_date']
    search_fields = ['name']
    date_hierarchy = 'pub_date'
    
class DawnDonatorAdmin(admin.ModelAdmin):
    list_display = ('name','pub_date')
    list_filter = ['pub_date']
    search_fields = ['name']
    date_hierarchy = 'pub_date'

class ConnieDonatorAdmin(admin.ModelAdmin):
    list_display = ('name','pub_date')
    list_filter = ['pub_date']
    search_fields = ['name']
    date_hierarchy = 'pub_date'

    


admin.site.register(Donator,DonatorAdmin)
admin.site.register(CorporateDonator,CorporateDonatorAdmin)
admin.site.register(KathyDonator,KathyDonatorAdmin)
admin.site.register(DawnDonator,DawnDonatorAdmin)
admin.site.register(ConnieDonator,ConnieDonatorAdmin)