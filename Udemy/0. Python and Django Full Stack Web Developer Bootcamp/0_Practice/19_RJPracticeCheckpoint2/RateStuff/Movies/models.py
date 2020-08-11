from django.db import models

# Create your models here.
class Movie(models.Model):
    name = models.CharField(max_length=100)
    year = models.BigIntegerField()
    rating = models.DecimalField(max_digits=2, decimal_places=1)
