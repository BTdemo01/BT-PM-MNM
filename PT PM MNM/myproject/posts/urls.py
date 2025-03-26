from django.urls import path
from . import views
from django.contrib.auth.views import LoginView

urlpatterns = [
    path('', views.posts_list),
    path('login/', LoginView.as_view(), name='login'),
]