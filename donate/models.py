from django.db import models
from datetime import datetime
from filer.fields.image import FilerImageField


class Donator(models.Model):
    name = models.CharField(max_length=50)
    amount = models.CharField(default="",max_length=10,blank=True, null=True)
    inHonorOf = models.TextField("In Honor Of",blank=True)
    donate_date = models.DateField("Date of Donation",default=datetime.now())
    pub_date = models.DateTimeField(auto_now_add=True)
    
    def __unicode__(self):
            return self.name
        
class CorporateDonator(models.Model):
    name = models.CharField(max_length=100)
    details = models.TextField("Details")
    logo = FilerImageField(null=True, blank=True)
    pub_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = "Corporate Donator"
     
    def __unicode__(self):
            return self.name            

class KathyDonator(models.Model):
    name = models.CharField(max_length=50)
    pub_date = models.DateTimeField(auto_now_add=True)
    
    def __unicode__(self):
            return self.name
    
    class Meta:
        verbose_name = "Kathy Donator"
        
class DawnDonator(models.Model):
    name = models.CharField(max_length=50)
    pub_date = models.DateTimeField(auto_now_add=True)
    
    def __unicode__(self):
            return self.name
    
    class Meta:
        verbose_name = "Dawn Donator"        

class ConnieDonator(models.Model):
    name = models.CharField(max_length=50)
    pub_date = models.DateTimeField(auto_now_add=True)
    
    def __unicode__(self):
            return self.name
    
    class Meta:
        verbose_name = "Connie Donator"        