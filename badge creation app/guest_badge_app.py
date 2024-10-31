import tkinter as tk
from tkinter import ttk
import os
import subprocess
import webbrowser

def Current_Id_Count():
    000000 

window = tk.Tk()
window.title("Guest Badge Creator")
window.geometry("600x800")

#the entire window
frame = tk.Frame(window)
frame.pack()

#guest check-in parent group
Guest_Check_in_Frame= tk.LabelFrame(frame, text="Guest Check-in")
Guest_Check_in_Frame.grid(row = 0, column = 0, padx=20, pady=20)

Guest_Name = tk.Label(Guest_Check_in_Frame, text="Guest Name: ")
Guest_Name.grid(row = 0, column = 0)

Guest_Name_Entry = tk.Entry(Guest_Check_in_Frame)
Guest_Name_Entry.grid(row = 0, column = 1)

Building_Number = tk.Label(Guest_Check_in_Frame, text = "Building Number: ")
Building_Number.grid(row = 1, column = 0)

Building_Combobox = ttk.Combobox(Guest_Check_in_Frame, value=["4050 CCOC", "4030 CCOC"])
Building_Combobox.grid(row = 1, column = 1)

ID_Number = tk.Label(Guest_Check_in_Frame, text="ID: ")
ID_Number.grid(row = 2, column = 0)

ID_Number_Entry = tk.Entry(Guest_Check_in_Frame, text="123456")
ID_Number_Entry.grid(row = 2, column = 1)

Date_Time = tk.Label(Guest_Check_in_Frame, text="Date & Time: ")
Date_Time.grid(row = 3, column = 0)

Date_Time_Entry = tk.Entry(Guest_Check_in_Frame, text="12/12/12")
Date_Time_Entry.grid(row = 3, column = 1)

for widget in Guest_Check_in_Frame.winfo_children():
    widget.grid_configure(pady = 20, padx = 10)

window.mainloop()