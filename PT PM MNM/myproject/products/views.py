# products/views.py
# from rest_framework import generics
from rest_framework import viewsets
from .models import Product
from .serializers import ProductSerializer

# # API Thêm và Lấy danh sách
# class ProductListCreateAPIView(generics.ListCreateAPIView):
#     queryset = Product.objects.all()
#     serializer_class = ProductSerializer

# # API Xem - Sửa - Xóa 1 sản phẩm
# class ProductRetrieveUpdateDestroyAPIView(generics.RetrieveUpdateDestroyAPIView):
#     queryset = Product.objects.all()
#     serializer_class = ProductSerializer



class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
