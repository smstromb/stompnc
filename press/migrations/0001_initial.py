# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Press'
        db.create_table('press_press', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('link', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('publish_date', self.gf('django.db.models.fields.DateField')()),
            ('pub_date', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
        ))
        db.send_create_signal('press', ['Press'])


    def backwards(self, orm):
        # Deleting model 'Press'
        db.delete_table('press_press')


    models = {
        'press.press': {
            'Meta': {'object_name': 'Press'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'link': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'publish_date': ('django.db.models.fields.DateField', [], {})
        }
    }

    complete_apps = ['press']