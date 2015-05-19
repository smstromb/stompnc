from django.db import models
from tinymce.models import HTMLField
from datetime import datetime
from filer.fields.folder import FilerFolderField
from datetime import date


class Event(models.Model):
    name = models.CharField(max_length=50)
    where = models.CharField(max_length=50)
    startDate = models.DateField("Start Date",default=datetime.now())
    endDate = models.DateField("End Date",blank=True, null=True)
    gallery = FilerFolderField(blank=True,null=True)
    description = HTMLField()
    pub_date = models.DateTimeField(auto_now_add=True)
    link = models.CharField(max_length=250,blank=True,null=True)
    linkDescription = models.CharField(max_length=250,null=True,blank=True)

    def __unicode__(self):
        return self.name
    
    def when(self):
        if self.endDate:
            return self.startDate.strftime("%B %d, %Y") + " - " + self.endDate.strftime("%B %d, %Y")
        else:
            return self.startDate.strftime("%B %d, %Y") 
        
    def day(self):
        return self.startDate.day  
    
    def month(self):
        return self.startDate.strftime("%b")  
    
    def isUpcoming(self):
        if self.startDate > date.today():
            return True
        elif self.endDate > date.today():
            return True
        else:
            return False

    class Meta:
        verbose_name = "Event"
        verbose_name_plural = "Events"

