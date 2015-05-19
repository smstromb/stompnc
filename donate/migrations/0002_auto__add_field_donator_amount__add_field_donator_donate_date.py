# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Donator.amount'
        db.add_column('donate_donator', 'amount',
                      self.gf('django.db.models.fields.IntegerField')(default=0),
                      keep_default=False)

        # Adding field 'Donator.donate_date'
        db.add_column('donate_donator', 'donate_date',
                      self.gf('django.db.models.fields.DateField')(default=datetime.datetime(2013, 1, 27, 0, 0)),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Donator.amount'
        db.delete_column('donate_donator', 'amount')

        # Deleting field 'Donator.donate_date'
        db.delete_column('donate_donator', 'donate_date')


    models = {
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