import instaloader

ig = instaloader.Instaloader()

user = input("Enter the Instagram username")
# Descarga imagen principal
# ig.download_profile(user,profile_pic_only=True)
# Descarga todas creando carpeta
ig.download_profile(user,profile_pic_only=False)

