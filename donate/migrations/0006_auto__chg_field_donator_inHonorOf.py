# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Changing field 'Donator.inHonorOf'
        db.alter_column('donate_donator', 'inHonorOf', self.gf('django.db.models.fields.TextField')(null=True))

    def backwards(self, orm):

        # Changing field 'Donator.inHonorOf'
        db.alter_column('donate_donator', 'inHonorOf', self.gf('django.db.models.fields.TextField')(default=''))

    models = {
        'donate.corporatedonator': {
            'Meta': {'object_name': 'CorporateDonator'},
            'details': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'logo': ('django.db.models.fields.files.ImageField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'})
        },
        'donate.donator': {
            'Meta': {'object_name': 'Donator'},
            'amount': ('django.db.models.fields.CharField', [], {'default': "''", 'max_length': '10'}),
            'donate_date': ('django.db.models.fields.DateField', [], {'default': 'datetime.datetime(2013, 1, 27, 0, 0)'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'inHonorOf': ('django.db.models.fields.TextField', [], {'null': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'})
        }
    }

    complete_apps = ['donate']