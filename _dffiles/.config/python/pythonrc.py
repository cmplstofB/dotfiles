import sys
import os
#import subprocess
from pathlib import Path
import readline
#import rlcompleter
import atexit

try:
    from xdg import BaseDirectory
    HISTFILE = Path(BaseDirectory.save_cache_path("python")).joinpath("history.py")
except ImportError:
    HISTFILE = Path(os.getenv("XDG_CACHE_HOME", str(Path.home().joinpath(".cache"))))\
               .joinpath("python", "history.py")

try:
    readline.read_history_file(HISTFILE)
except FileNotFoundError:
    open(HISTFILE, 'wb').close()

readline.set_history_length(10000)

sys.ps1 = "\033[2;37m>>>\033[22;39m "
sys.ps2 = "\033[2;37m...\033[22;39m "

atexit.register(lambda : readline.append_history_file(readline.get_current_history_length(), HISTFILE))
