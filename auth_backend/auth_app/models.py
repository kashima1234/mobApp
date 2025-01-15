from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    plain_password = models.CharField(max_length=128, blank=True, null=True)

    # Provide unique related_name values to avoid conflicts
    groups = models.ManyToManyField(
        'auth.Group',
        related_name='customuser_groups',  # Unique related name
        blank=True,
    )
    user_permissions = models.ManyToManyField(
        'auth.Permission',
        related_name='customuser_permissions',  # Unique related name
        blank=True,
    )
