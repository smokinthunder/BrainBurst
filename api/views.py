from django.shortcuts import render
from .serializers import UserLogin, UserRegister
from rest_framework.views import APIView
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from django.contrib.auth import login as authlogin ,logout as authlogout,authenticate,get_user
from rest_framework.permissions import IsAuthenticated



# Create your views here.


class register(APIView):

    def post(self,request, format=None ):
        serializer=UserRegister(data=request.data)
        data = {}
        if serializer.is_valid():
            account=serializer.save()
            data['response']= 'registered'
            data['username']= account.username
            data['email']=account.email
            token=Token.objects.get_or_create(user=account).key
            data['token']=token
        else:
            data=serializer.errors
        return Response(data)

class login(APIView):

    def post(self, request, format=None):
        serializer = UserLogin(data=request.data)
        data = {}
        # print(request)
        if serializer.is_valid():
            username = serializer.validated_data['username']
            password = serializer.validated_data['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                # print(user)
                # authlogin(request, user)
                data['response'] = 'logged in'
                data['username'] = user.username
                data['email'] = user.email
                # token = Token.objects.get_or_create(user=user).key
                # data['token'] = token
                # return render(request, 'index.html', data)
                print(data)
            else:
                data['response'] = 'invalid credentials'
        else:
            data = serializer.errors
        return Response(data)

class welcome(APIView):
    permission_classes = [IsAuthenticated]
    def get(self,request):
        content = {'user': str(request.user),  'userid' : str(request.user.id)}
        return Response(content)