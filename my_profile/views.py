from django.shortcuts import render

def profile_view(request):
    context = {
        "name": "Manjiri Naik",
        "quote": "Keep it simple, ship it often.",
        "linkedin": "http://www.linkedin.com/in/manjiri-naik-a0467b15a",
        "github": "https://github.com/Manjiri-here",
        "email": "manjirin6@gmail.com",
    }
    return render(request, "my_profile/my_profile.html", context)
