# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting model 'Sponsor'
        db.delete_table('homepage_sponsor')


    def backwards(self, orm):
        # Adding model 'Sponsor'
        db.create_table('homepage_sponsor', (
            ('image', self.gf('django.db.models.fields.files.ImageField')(max_length=100)),
            ('homepage', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['homepage.HomePage'])),
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=50)),
        ))
        db.send_create_signal('homepage', ['Sponsor'])


    models = {
        'homepage.homepage': {
            'Meta': {'object_name': 'HomePage'},
            'boardMessage': ('django.db.models.fields.TextField', [], {}),
            'contactMessage': ('django.db.models.fields.TextField', [], {}),
            'eventMessage': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'volunteerMessage': ('django.db.models.fields.TextField', [], {}),
            'welcomeMessage': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['homepage']