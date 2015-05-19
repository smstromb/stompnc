# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Changing field 'Press.link'
        db.alter_column('press_press', 'link', self.gf('django.db.models.fields.TextField')())

    def backwards(self, orm):

        # Changing field 'Press.link'
        db.alter_column('press_press', 'link', self.gf('django.db.models.fields.CharField')(max_length=250))

    models = {
        'press.press': {
            'Meta': {'object_name': 'Press'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'link': ('django.db.models.fields.TextField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'publish_date': ('django.db.models.fields.DateField', [], {})
        }
    }

    complete_apps = ['press']