from tkinter import *
import os
import time
import threading

#============================================================================

#Function to Start The Timer
def click():
    if not minutes.get() :
        message=Message(text="Please Enter A Valid Value",width='500')
        message.pack()
    else:

        seconds=float(minutes.get())
        os.system("notify-send -i /home/user/GitHub/Reminder_v1/assets/images/clock.png -a 'Reminder' -t 6000 'Reminder' 'THE TIMER HAS BEEN STARTED' ")
        time.sleep(seconds*60)
        os.system("notify-send -i /home/user/GitHub/Reminder_v1/assets/images/clock.png -a 'Reminder' -t 6000 'Reminder' 'TIME TO TAKE A BREAK' ")
        os.system("paplay './assets/sounds/notification.mp3' ")
        
#============================================================================

window = Tk() # instantiate an instance of a window
window.geometry("800x600") # Edit the Window Size
window.title("Reminder") # Edit the Window Title
icon = PhotoImage(file='assets/images/clock.png') # Convert Icon to photo Image
window.iconphoto(True,icon) #Add the Icon that Converted
window.config(background="#373A40") #Change the Background Color

#============================================================================

# mainPhoto=PhotoImage(file='assets/digital-clock.png')

label1 = Label(window,
              text="HELLO TO MY PROGRAM",
              font=('cantarell',40,'bold'),
              fg='white',bg='#373A40') # To add a Label
              
label1.pack(pady=100) # To display the label

#label.place(x=0,y=0) # to place a label at specific position

#============================================================================

label2=Label(window,
              text="Enter The Duration in Minutes",
              font=('cantarell',20,'bold'),
              fg='white',bg='#493B50')
label2.pack()
minutes=Entry(window,text="Enter your Minutes")
minutes.pack(pady=50) #to Display the Entry on the screen

#============================================================================

button = Button(window,
                text="Start The Timer",
                font=('cantarell',40,'bold'),
                fg='white',bg='#373A40', 
                command=click,activeforeground='#373A40')

button.pack(pady=50) #to Display the button on the screen

#============================================================================


#============================================================================
window = mainloop() #To Display The Window
