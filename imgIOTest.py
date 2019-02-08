# from pathlib import Path
# home = str(Path.home())
# from PIL import Image

from os.path import expanduser
home = expanduser("~")
print(home)

with open(home + "/Desktop/qrcode_test.png", "rb") as imgFile:
    img = imgFile.read()
    print(imgFile)
    print(img)

