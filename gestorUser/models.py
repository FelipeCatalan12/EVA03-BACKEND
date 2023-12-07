from django.contrib.auth.models import User
from django.db import models

#Create your models here.

class userProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    info = models.TextField(max_length=500, blank=True)
    

    def __str__(self):
        return self.user.username