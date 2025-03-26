from django.urls import path
from . import views

app_name = 'maps'

urlpatterns = [
    path('', views.simplemap),
    path('co-ban/', views.simplemap, name="co-ban"),
]
