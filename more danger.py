import tkinter as tk
import random

def random_color():
    return f'#{random.randint(0, 255):02x}{random.randint(0, 255):02x}{random.randint(0, 255):02x}'

def flash_colors():
    root.configure(bg=random_color())
    root.after(100, flash_colors)  # Change color every 100ms

root = tk.Tk()
root.attributes('-fullscreen', True)
root.configure(bg=random_color())
root.after(100, flash_colors)  # Start flashing colors
root.mainloop()
