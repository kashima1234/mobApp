from django.shortcuts import render

# from django.contrib.auth.models import User
# from django.contrib.auth import authenticate
# from rest_framework.response import Response
# from rest_framework.decorators import api_view
# from rest_framework import status

# @api_view(['POST'])
# def register_user(request):
#     data = request.data
#     username = data.get('username')
#     email = data.get('email')
#     password = data.get('password')

#     if User.objects.filter(username=username).exists():
#         return Response({"error": "Username already exists"}, status=status.HTTP_400_BAD_REQUEST)

#     user = User.objects.create_user(username=username, email=email, password=password)
#     return Response({"message": "User registered successfully"}, status=status.HTTP_201_CREATED)

# @api_view(['POST'])
# def login_user(request):
#     data = request.data
#     username = data.get('username')
#     password = data.get('password')

#     user = authenticate(username=username, password=password)
#     if user is not None:
#         return Response({"message": "Login successful"}, status=status.HTTP_200_OK)
#     else:
#         return Response({"error": "Invalid credentials"}, status=status.HTTP_400_BAD_REQUEST)



# from django.contrib.auth.models import User
# from django.http import JsonResponse
# from django.views.decorators.csrf import csrf_exempt
# import json
# from rest_framework.decorators import api_view


# @api_view(['POST'])
# def register(request):
#     if request.method == "POST":
#         data = json.loads(request.body)
#         email = data.get("email")
#         password = data.get("password")

#         if User.objects.filter(username=email).exists():
#             return JsonResponse({"error": "User already exists"}, status=400)

#         user = User.objects.create_user(username=email, password=password)
#         user.save()
#         return JsonResponse({"message": "User registered successfully"}, status=201)

#     return JsonResponse({"error": "Invalid method"}, status=405)

# @api_view(['POST'])
# def login_view(request):
#     if request.method == "POST":
#         data = json.loads(request.body)
#         email = data.get("email")
#         password = data.get("password")

#         user = authenticate(username=email, password=password)

#         if user is not None:
#             return JsonResponse({"message": "Login successful"}, status=200)
#         else:
#             return JsonResponse({"error": "Invalid credentials"}, status=400)

#     return JsonResponse({"error": "Invalid method"}, status=405)



# @csrf_exempt
# @api_view(['POST'])
# def register(request):
#     data = json.loads(request.body)
#     email = data.get("email")
#     password = data.get("password")

#     if User.objects.filter(username=email).exists():
#         return JsonResponse({"error": "User already exists"}, status=400)

#     user = User.objects.create_user(username=email, password=password)
#     user.save()
#     return JsonResponse({"message": "User registered successfully"}, status=201)


from django.contrib.auth.models import User
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.decorators import api_view
from django.contrib.auth import authenticate
import json
from .models import CustomUser
from django.contrib.auth import get_user_model

CustomUser = get_user_model()

@csrf_exempt
def register(request):
    if request.method == "POST":
        data = json.loads(request.body)
        email = data.get("email")
        password = data.get("password")

        if CustomUser.objects.filter(username=email).exists():
            return JsonResponse({"error": "User already exists"}, status=400)

        # Save the user with plain_password and hashed password
        user = CustomUser.objects.create_user(
            username=email,
            email=email,
            password=password,
            plain_password=password,  # Save plain password for your specific need
        )
        return JsonResponse({"message": "User registered successfully"}, status=201)

    return JsonResponse({"error": "Invalid method"}, status=405)



@csrf_exempt
def login_view(request):
    if request.method == "POST":
        data = json.loads(request.body)
        email = data.get("email")
        password = data.get("password")

        user = authenticate(username=email, password=password)

        if user is not None:
            return JsonResponse({"message": "Login successful"}, status=200)
        else:
            return JsonResponse({"error": "Invalid credentials"}, status=400)

    return JsonResponse({"error": "Invalid method"}, status=405)

