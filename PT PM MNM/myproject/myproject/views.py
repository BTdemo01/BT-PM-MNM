#from django.http import HttpResponse
from django.shortcuts import render

def homepage(request):
    #return HttpResponse("Xin chào Django")
    return render(request, 'home.html')

def aboutpage(request):
    #return HttpResponse("Đây là trang giới thiệu")
    return render(request, 'about.html')

def login_view(request):
    return render(request, 'login.html')

def product_list(request):
    return render(request, 'products/product_list.html')
