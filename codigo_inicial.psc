Algoritmo RegistroPedidos
	
    Definir producto Como Caracter
    Definir cantidad Como Entero
    Definir precio Como Real
    Definir total Como Real
    Definir descuento Como Real
    Definir opcion Como Entero
	
    Escribir "=== REGISTRO DE PEDIDOS ==="
	
    Escribir "Nombre del producto:"
    Leer producto
	
    Escribir "Cantidad solicitada:"
    Leer cantidad
	
    Escribir "Precio unitario:"
    Leer precio
	
    Escribir "Porcentaje de descuento:"
    Leer descuento
	
    total <- cantidad * precio
    total <- total - (total * descuento / 100)
	
    Escribir "Producto: ", producto
    Escribir "Cantidad: ", cantidad
    Escribir "Total a pagar: ", total
	
    Escribir "¿Desea confirmar el pedido?"
    Escribir "1. Sí"
    Escribir "2. No"
    Leer opcion
	
    Si opcion = 1 Entonces
        Escribir "Pedido confirmado."
    SiNo
        Escribir "Pedido cancelado."
    FinSi
	
    Escribir "Proceso finalizado."
	
FinAlgoritmo