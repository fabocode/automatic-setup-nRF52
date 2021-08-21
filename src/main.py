import traceback, sys

def main():
    pass

if __name__ == '__main__':

    try:
        raise TypeError("Oups!")
    except Exception as err:
        try:
            exc_info = sys.exc_info()

            try:
                # call main application
                main()
            except:
                pass
        finally:
            # Display the *original* exception
            traceback.print_exception(*exc_info)
            del exc_info