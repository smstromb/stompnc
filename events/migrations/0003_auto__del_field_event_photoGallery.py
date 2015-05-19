# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'Event.photoGallery'
        db.delete_column('events_event', 'photoGallery_id')


    def backwards(self, orm):
        # Adding field 'Event.photoGallery'
        db.add_column('events_event', 'photoGallery',
                      self.gf('django.db.models.fields.related.ForeignKey')(to=orm['filer.Folder'], null=True, blank=True),
                      keep_default=False)


    models = {
        'events.event': {
            'Meta': {'object_name': 'Event'},
            'description': ('tinymce.models.HTMLField', [], {}),
            'endDate': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'startDate': ('django.db.models.fields.DateField', [], {'default': 'datetime.datetime(2013, 1, 28, 0, 0)'}),
            'where': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        }
    }

    complete_apps = ['events']