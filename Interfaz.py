#Interfaz grafica - Conteo de ganado por medio de lectores RFID en un campo simulado.
#Stephanie Gonzalez López
#Nestor Martinez Solano
import csv
from sqlite3 import Row
import pandas as pd
from tkinter import *
import tkinter as tk
import sqlite3



def mostrar_vaca(): #Lista de vacas registradas en la base de datos SQLite
    w1=tk.Tk()
    w1.title("Tabla")
    label4 = tk.Label(w1, text=df)
    label4. pack()
    con.close()




def buscar_vaca(): #Barra de busqueda 
    w2=tk.Tk()
    w2.title("Buscar")
    w2.geometry("250x250")
    lbl1=Label(w2, text="Buscar ID ",bg="yellow")
    txt1=Entry(w2, bg="cyan")
    btn4=Button(w2,text="Buscar", command= btn_buscar)
    lbl1.grid(row=0,column=0,padx=6, pady=6, sticky="w",ipady=6)
    txt1.grid(row=0,column=1,padx=6, pady=6)
    btn4.grid(row=1,column=1,padx=6, pady=6, ipady=3, ipadx=10)
  
 
 
def btn_buscar():
    w4=tk.Tk()
    w4.title("Resultado:")
    n=df['ID']
    label5= tk.Label(w4, text=n)
    label5. pack() 



def estado_vaca(): #Aqui va la conexion arduino - python
    w3=tk.Tk()
    w3.title("Estado")
    w3.geometry("400x400")
    

#Ventana principal
con = sqlite3.connect("ganado_datos.sqlite")
df = pd.read_sql_query("SELECT * FROM data", con) #Conexion con la base de datos
cursor = con.cursor()
window = tk.Tk()
window.title("Gestion de Ganado")
window.geometry("600x500")
img = tk.PhotoImage(file = "Escudo_f.png")
photo = tk.Label(window, image = img)
photo.pack()
label1 = tk.Label(text="Gestion de Ganado Bovino")
label1. pack()
label2= tk.Label(text="Trabajo de grado", height=1)
label2. pack()
label3 =tk.Label(text="Stephanie Gonzalez López & Nestor Martinez Solano",foreground='white', background='black')
label3. pack()
btn1 = Button(window, text="Lista", command = mostrar_vaca, width=20)
btn1["fg"]="black"
btn1["bg"]="green"
btn1.pack()
btn2 = Button(window, text="Buscar", command = buscar_vaca, width=20)
btn2["fg"]="black"
btn2["bg"]="green"
btn2.pack()
btn3 = Button(window, text="Estado", command = estado_vaca, width=20)
btn3["fg"]="black"
btn3["bg"]="green"
btn3.pack()

window.mainloop()