# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'CorporateDonator'
        db.create_table('donate_corporatedonator', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('details', self.gf('django.db.models.fields.TextField')()),
            ('pub_date', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
        ))
        db.send_create_signal('donate', ['CorporateDonator'])


    def backwards(self, orm):
        # Deleting model 'CorporateDonator'
        db.delete_table('donate_corporatedonator')


    models = {
        'donate.corporatedonator': {
            'Meta': {'object_name': 'CorporateDonator'},
            'details': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'})
        },
        'donate.donator': {
            'Meta': {'object_name': 'Donator'},
            'amount': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'donate_date': ('django.db.models.fields.DateField', [], {'default': 'datetime.datetime(2013, 1, 27, 0, 0)'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'inHonorOf': ('django.db.models.fields.TextField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'pub_date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'})
        }
    }

    complete_apps = ['donate']