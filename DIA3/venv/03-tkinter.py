from tkinter import*
from tkinter import messagebox

def saludar():
    print("prueba de saludo")
    messagebox.showinfo("mensaje", "hola " + txt_nombre.get())


#creamos los objetos de la clase TK()
app = Tk()
app.geometry("300x100")
app.title("Mi primer App con Tkinter")

#agregamos un frame
frame = LabelFrame(app, text='Nueva ventana')
frame.grid(row=0, column=0, columnspan=3, pady=20, padx=20)

#agregamos una etiqueta
lb_nombre=Label(frame, text='Nombre: ')
lb_nombre.grid(row=1, column=0)

#agregamos caja de texto
txt_nombre =Entry(frame)
txt_nombre.grid(row=1, column=1)

#agreagamos un boton
btn_saludo=Button(frame, text='saludar', command=saludar)
btn_saludo.grid(row=1, column=2)


app.mainloop()