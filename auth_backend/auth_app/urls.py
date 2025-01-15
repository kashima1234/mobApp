# from django.urls import path
# from .views import register_user, login_user

# urlpatterns = [
#     path('register/', register_user, name='register'),
#     path('login/', login_user, name='login'),
# ]


from django.urls import path
from . import views

urlpatterns = [
    path('register/', views.register, name='register'),
    path('login/', views.login_view, name='login'),
]
