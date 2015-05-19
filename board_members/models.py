from django.db import models
from tinymce.models import HTMLField
from filer.fields.image import FilerImageField

class Member(models.Model):
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=100,null=True,blank=True)
    bio = HTMLField()
    isNJMember = models.BooleanField(default=False)
    image = FilerImageField(null=True, blank=True)
    pub_date = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.name

    class Meta:
        verbose_name = "Member"
        verbose_name_plural = "Members"

