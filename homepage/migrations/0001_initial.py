# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'HomePage'
        db.create_table('homepage_homepage', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('welcomeMessage', self.gf('django.db.models.fields.TextField')()),
            ('volunteerMessage', self.gf('django.db.models.fields.TextField')()),
            ('eventMessage', self.gf('django.db.models.fields.TextField')()),
            ('contactMessage', self.gf('django.db.models.fields.TextField')()),
            ('boardMessage', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal('homepage', ['HomePage'])

        # Adding model 'Sponsor'
        db.create_table('homepage_sponsor', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('image', self.gf('django.db.models.fields.files.ImageField')(max_length=100)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('homepage', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['homepage.HomePage'])),
        ))
        db.send_create_signal('homepage', ['Sponsor'])


    def backwards(self, orm):
        # Deleting model 'HomePage'
        db.delete_table('homepage_homepage')

        # Deleting model 'Sponsor'
        db.delete_table('homepage_sponsor')


    models = {
        'homepage.homepage': {
            'Meta': {'object_name': 'HomePage'},
            'boardMessage': ('django.db.models.fields.TextField', [], {}),
            'contactMessage': ('django.db.models.fields.TextField', [], {}),
            'eventMessage': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'volunteerMessage': ('django.db.models.fields.TextField', [], {}),
            'welcomeMessage': ('django.db.models.fields.TextField', [], {})
        },
        'homepage.sponsor': {
            'Meta': {'object_name': 'Sponsor'},
            'homepage': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['homepage.HomePage']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        }
    }

    complete_apps = ['homepage']