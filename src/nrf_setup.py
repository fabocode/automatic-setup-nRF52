import os, json
from pathlib import Path 

class Setup_nRF:

    def __init__(self):
        self.path = Path(os.getcwd()).parent
        self.cfg_path = os.getcwd() + '\\src\\config'
        print(self.cfg_path)
        # with open(self.path, "w"):
        #     pass

    def create_c_cpp_properties(self):
        


if __name__ == '__main__':
    nrf = Setup_nRF()

    