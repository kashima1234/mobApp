# from django.contrib import admin
# from django.contrib.auth.models import User
# from django.contrib.auth.admin import UserAdmin

# class CustomUserAdmin(UserAdmin):
#     list_display = ('username', 'email', 'is_staff', 'is_superuser', 'is_active')
#     search_fields = ('username', 'email')

# admin.site.unregister(User)
# admin.site.register(User, CustomUserAdmin)


# from django.contrib import admin
# from .models import CustomUser
# from django.contrib.auth.admin import UserAdmin

# class CustomUserAdmin(UserAdmin):
#     model = CustomUser
#     list_display = ('username', 'email', 'is_staff', 'plain_password')
#     fieldsets = UserAdmin.fieldsets + (
#         (None, {'fields': ('plain_password',)}),
#     )

# admin.site.register(CustomUser, CustomUserAdmin)



# from django.contrib import admin
# from django.contrib.auth.admin import UserAdmin
# from .models import CustomUser

# class CustomUserAdmin(UserAdmin):
#     model = CustomUser
#     # Fields to display in the admin list view
#     list_display = ('id', 'username', 'email', 'is_staff', 'is_active')
#     list_filter = ('is_staff', 'is_active')
#     # Fields to show in the detail/edit view
#     fieldsets = (
#         (None, {'fields': ('username', 'email', 'password')}),
#         ('Permissions', {'fields': ('is_staff', 'is_active', 'groups', 'user_permissions')}),
#     )
#     add_fieldsets = (
#         (None, {
#             'classes': ('wide',),
#             'fields': ('username', 'email', 'password1', 'password2', 'is_staff', 'is_active')}
#         ),
#     )
#     search_fields = ('email', 'username')
#     ordering = ('email',)

# # Register the CustomUser model with the custom admin class
# admin.site.register(CustomUser, CustomUserAdmin)



from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser

# Register CustomUser model in admin
@admin.register(CustomUser)
class CustomUserAdmin(UserAdmin):
    # Configure fields to display in the admin interface
    list_display = ('id', 'username', 'email', 'is_active')
    search_fields = ('username', 'email')
    ordering = ('id',)



admin.site.site_header = "Shopping App Admin"
admin.site.site_title = "Shopping App Admin Portal"
admin.site.index_title = "Welcome to Shopping App Admin"
