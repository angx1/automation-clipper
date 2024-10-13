
import os
import shutil

def sort_downloads():
    downloads_path = os.path.join(os.path.expanduser("~"), "Downloads")
    target = downloads_path
    extensions = {item.split('.')[-1] for item in os.listdir(target)}


    # create folder for each extension type
    for extension in extensions:
        if not os.path.exists(os.path.join(target, extension)):
            os.mkdir(os.path.join(target, extension))


    # move files to their respective folders
    for item in os.listdir(target):
        if os.path.isfile(os.path.join(target, item)):
            file_extension = item.split('.')[-1]
            shutil.move(os.path.join(target, item), os.path.join(target, file_extension, item))




