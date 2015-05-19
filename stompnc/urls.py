from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.views.generic import TemplateView
from django.views.generic.simple import direct_to_template  


admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'stompnc.views.home', name='home'),
              
    (r'^index/', 'homepage.views.index'),
    (r'^$', 'homepage.views.index'),

    (r'^contact/', 'contact.views.contact'),
    (r'^donate/', 'donate.views.donate'),
	(r'^volunteer/', 'volunteers.views.volunteer'),
    (r'^thanks/', 'volunteers.views.thanks'), 
    (r'^story/', 'about.views.story'),
    (r'^directors/', 'board_members.views.directors'),
    (r'^stomps/', 'stomps.views.stomps'),
    (r'^events/', 'events.views.events'),
    (r'^robots\.txt$', direct_to_template, {'template': 'robots.txt', 'mimetype': 'text/plain'}),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
	
	(r'^tinymce/', include('tinymce.urls')),

)







# DELETE IF NOT DEVELOPMENT SERVER!!!
urlpatterns += patterns('django.views.static',(r'^resources/(?P<path>.*)$', 
        'serve', {
        'document_root': '/Users/smstromb/dev/stompnc/resources/',
        'show_indexes': True }),)