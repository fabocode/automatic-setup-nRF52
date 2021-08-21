import os, json, shutil
from pathlib import Path 

class nRF_Installer:

    def __init__(self):
        self.directory = "\\.vscode"
        self.path = str(Path(os.getcwd()).parent.parent) + "\\.vscode\\"
        self.cfg_path = os.getcwd() + '\\config\\'

        # store filenames 
        self.c_cpp_filename = 'c_cpp_properties.json'
        self.settings_filename = 'settings.json'
        self.tasks_filename = 'tasks.json'
        # set the path for the specific project files 
        self.path_c_cpp = self.cfg_path + self.c_cpp_filename
        self.path_settings = self.cfg_path + self.settings_filename
        self.path_tasks = self.cfg_path + self.tasks_filename

    def create_vscode_folder(self):
        try: 
            os.mkdir(self.path) # create .vscode directory
        except FileExistsError as error:
            print("directory is already there")
        except FileNotFoundError as error:
            print("Specified path is invalid")

    def create_c_cpp_file(self):        
        src = self.path_c_cpp
        dst = self.path + self.c_cpp_filename
        print(f"{dst}")
        shutil.copyfile(src, dst)

    def create_settings_file(self):
        src = self.path_settings
        dst = self.path + self.settings_filename
        print(f"{dst}")
        shutil.copyfile(src, dst)

    def create_tasks_file(self):
        src = self.path_tasks
        dst = self.path + self.tasks_filename
        print(f"{dst}")
        shutil.copyfile(src, dst)


if __name__ == '__main__':
    print("")
    nrf = nRF_Installer()
    nrf.create_vscode_folder()
    nrf.create_c_cpp_file()
    nrf.create_settings_file()
    nrf.create_tasks_file()

    