import os, fnmatch
from robot.api.deco import keyword


class ListCustomResources:

    def __init__(self):
        ROBOT_LIBRARY_SCOPE = 'GLOBAL'
       
    @keyword
    def return_custom_resource_list(self, path, client):
        filelist = fnmatch.filter(os.listdir(path), '*' + client + '.resource')
        returnList = ["dummy"]
        for file in filelist:
            returnList.append(file.split(".")[0])
        return returnList

    @keyword
    def return_custom_filename_list(self, path, client):
        filelist = fnmatch.filter(os.listdir(path), '*' + client + '.resource')
        returnList = []
        for file in filelist:
            returnList.append(file)
        return returnList
    
    @keyword
    def return_builtin_filename_list(self, path, client):
        filelist = fnmatch.filter(os.listdir(path), '*.resource')
        returnList = []
        for file in filelist:
            returnList.append(file)
        return returnList

