from django.db import models
from tinymce.models import HTMLField
from datetime import datetime
from filer.fields.folder import FilerFolderField

class Press(models.Model):
    name = models.CharField(max_length=50)
    link = models.TextField("Article Link")
    publish_date = models.DateField()
    pub_date = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.name
    
    def day(self):
        return self.publish_date.day  
    
    def month(self):
        return self.publish_date.strftime("%b") 
    
    def year(self):
        return self.publish_date.year  

    class Meta:
        verbose_name = "Press Release"
        verbose_name_plural = "Press Releases"

