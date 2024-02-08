from rest_framework import serializers
from django.contrib.auth import get_user_model
User = get_user_model()
class UserRegister(serializers.ModelSerializer):
    # password2=serializers.CharField(style={'input_type':'password'},write_only=True)
    class Meta:
        model = User
        fields = ['username',"password","email"]

    def save(self):
        reg = User(
            email= self.validated_data['email'],
            username=self.validated_data['username'],
        )
        password=self.validated_data['password']
        reg.set_password(password)
        reg.save()
        return reg