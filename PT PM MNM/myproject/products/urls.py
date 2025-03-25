# products/urls.py
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ProductViewSet
# from .views import ProductListCreateAPIView, ProductRetrieveUpdateDestroyAPIView

# urlpatterns = [
#     path('products/', ProductListCreateAPIView.as_view(), name='product-list-create'),
#     path('products/<int:pk>/', ProductRetrieveUpdateDestroyAPIView.as_view(), name='product-detail'),
#     # path('api/', include('products.urls')),
# ]



router = DefaultRouter()
router.register(r'products', ProductViewSet)

urlpatterns = [
    path('', include(router.urls)),
]
