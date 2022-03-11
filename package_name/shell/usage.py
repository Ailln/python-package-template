from time import ctime

from package_name import __version__


def run():
    cur_time = ctime()
    text = f"""
    # package_name
    
    version {__version__} ({cur_time} +0800)
    """
    print(text)
