
from django.contrib import admin
from django.urls import path
from api import views
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('admin/', admin.site.urls),
    path('register',views.register.as_view(),name='register'),
    path('login',views.login.as_view(),name='login'),
    # path('api-token-auth/', obtain_auth_token, name='api_token_auth'),
    # path('user',views.user.as_view(),name='user'),
    path('welcome',views.welcome.as_view(),name='welcome'),
    # path('login/', obtain_auth_token, name='login')
    ]
