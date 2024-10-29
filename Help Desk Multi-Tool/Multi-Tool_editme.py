import tkinter as tk
import os
import webbrowser
import subprocess


#makes buttons change color when hovering over them
def on_enter(e):
   e.widget.config(bg="red", fg="white")

def on_leave(e):
   e.widget.config(bg="black", fg="white")

#opens programs
def open_ad():
   subprocess.Popen(["mmc", "C:\Windows\system32\dsa.msc"])

def open_dhcp():
   subprocess.Popen(["mmc", "C:\Windows\system32\dhcpmgmt.msc"])

def open_SCCM():
   subprocess.Popen(r"C:\Program Files (x86)\Microsoft Endpoint Manager\AdminConsole\bin\Microsoft.ConfigurationManagement.exe")

#opens websites
#original website redacted  
def open_NinjaOne():
   webbrowser.open("google.com")

#original website redacted  
def open_Aavaya_Users():
   webbrowser.open("google.com")

#original website redacted  
def open_Avaya_Voicemail():
   webbrowser.open("google.com")
   
def open_Adobe_Admin_Center():
   webbrowser.open("https://adminconsole.adobe.com/")
   
def open_Entra_ID():
   webbrowser.open("https://entra.microsoft.com/?culture=en-us&country=us#home")
   
def open_Intune():
   webbrowser.open("https://intune.microsoft.com/")
   
def open_365_Admin_Center():
   webbrowser.open("https://admin.microsoft.com/AdminPortal/home#/homepage")
   

#defines main GUI window
root = tk.Tk()
root.title("Help Desk Multi-Tool")
root.geometry("700x500")
root.configure(bg="black")

#like the ASCII art? you can make one at this website: https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=VALO.ACC%0A
logo = tk.Label(root, text="""
                
███╗   ███╗██╗   ██╗██╗  ████████╗██╗  ████████╗ ██████╗  ██████╗ ██╗     
████╗ ████║██║   ██║██║  ╚══██╔══╝██║  ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
██╔████╔██║██║   ██║██║     ██║   ██║     ██║   ██║   ██║██║   ██║██║     
██║╚██╔╝██║██║   ██║██║     ██║   ██║     ██║   ██║   ██║██║   ██║██║     
██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║     ██║   ╚██████╔╝╚██████╔╝███████╗
╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝     ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝

                """, font="Consolas", fg="white")
logo.configure(bg="black")
logo.pack()

#defines mnumber of columns and column spacing
buttonframe = tk.Frame(root)
buttonframe.columnconfigure(0, weight=5)
buttonframe.columnconfigure(1, weight=5)
buttonframe.configure(bg="black")

#active directory button
btn1 = tk.Button(buttonframe, text=" Active Directory ", font=("Consolas"),fg="white", command=open_ad)
btn1.grid(row=0, column=0, sticky=tk.W+tk.E, padx=10, pady=10)
btn1.configure(bg="black")
btn1.bind("<Enter>", on_enter)
btn1.bind("<Leave>", on_leave)

#DHCP button
btn2 = tk.Button(buttonframe, text="DHCP", font=("Consolas"), fg="white", command=open_dhcp)
btn2.grid(row=1, column=0, sticky=tk.W+tk.E, padx=10, pady=10)
btn2.configure(bg="black")
btn2.bind("<Enter>", on_enter)
btn2.bind("<Leave>", on_leave)

#SCCM button
btn3 = tk.Button(buttonframe, text="SCCM", font=("Consolas"),fg="white", command=open_SCCM)
btn3.grid(row=2, column=0, sticky=tk.W+tk.E, padx=10, pady=10)
btn3.configure(bg="black")
btn3.bind("<Enter>", on_enter)
btn3.bind("<Leave>", on_leave)

#NinjaOne button
btn4 = tk.Button(buttonframe, text="NinjaOne", font=("Consolas"),fg="white", command=open_NinjaOne)
btn4.grid(row=3, column=0, sticky=tk.W+tk.E, padx=10, pady=10)
btn4.configure(bg="black")
btn4.bind("<Enter>", on_enter)
btn4.bind("<Leave>", on_leave)

#avaya users button
btn5 = tk.Button(buttonframe, text="Avaya Users", font=("Consolas"),fg="white", command=open_Aavaya_Users)
btn5.grid(row=4, column=0, sticky=tk.W+tk.E, padx=10, pady=10)
btn5.configure(bg="black")
btn5.bind("<Enter>", on_enter)
btn5.bind("<Leave>", on_leave)

#avaya voicemail button
btn6 = tk.Button(buttonframe, text="Avaya Voicemail", font=("Consolas"),fg="white", command=open_Avaya_Voicemail)
btn6.grid(row=0, column=1, sticky=tk.W+tk.E, padx=10, pady=10)
btn6.configure(bg="black")
btn6.bind("<Enter>", on_enter)
btn6.bind("<Leave>", on_leave)

#adobe admin center button
btn7 = tk.Button(buttonframe, text="Adobe Admin Center", font=("Consolas"),fg="white", command=open_Adobe_Admin_Center)
btn7.grid(row=1, column=1, sticky=tk.W+tk.E, padx=10, pady=10)
btn7.configure(bg="black")
btn7.bind("<Enter>", on_enter)
btn7.bind("<Leave>", on_leave)

#Entra ID button
btn8 = tk.Button(buttonframe, text="Entra ID", font=("Consolas"),fg="white", command=open_Entra_ID)
btn8.grid(row=2, column=1, sticky=tk.W+tk.E, padx=10, pady=10)
btn8.configure(bg="black")
btn8.bind("<Enter>", on_enter)
btn8.bind("<Leave>", on_leave)

#Intune Button
btn9 = tk.Button(buttonframe, text="Intune", font=("Consolas"),fg="white", command=open_Intune)
btn9.grid(row=3, column=1, sticky=tk.W+tk.E, padx=10, pady=10)
btn9.configure(bg="black")
btn9.bind("<Enter>", on_enter)
btn9.bind("<Leave>", on_leave)

#365 Admin Center button
btn10 = tk.Button(buttonframe, text="365 Admin Center", font=("Consolas"),fg="white", command=open_365_Admin_Center)
btn10.grid(row=4, column=1, sticky=tk.W+tk.E,padx=10, pady=10)
btn10.configure(bg="black")
btn10.bind("<Enter>", on_enter)
btn10.bind("<Leave>", on_leave)

buttonframe.pack(fill="x")



root.mainloop()
