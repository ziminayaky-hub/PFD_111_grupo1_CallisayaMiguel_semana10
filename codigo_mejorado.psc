
Algoritmo RegistroPedidos
	
    Definir producto Como Caracter
    Definir cantidad, opcion Como Entero
    Definir precio, descuento Como Real
    Definir subtotal, montoDescuento, total Como Real
	
    Escribir "=== REGISTRO DE PEDIDOS ==="
	
    Repetir
        Escribir "Ingrese el codigo del producto:"
        Leer producto
		
        Si Longitud(producto) = 0 Entonces
            Escribir "Error: debe ingresar un codigo de producto."
        FinSi
    Hasta Que Longitud(producto) > 0
	
    Repetir
        Escribir "Cantidad solicitada:"
        Leer cantidad
		
        Si cantidad <= 0 Entonces
            Escribir "Error: la cantidad debe ser mayor que 0."
        FinSi
    Hasta Que cantidad > 0
	
    Repetir
        Escribir "Precio unitario:"
        Leer precio
		
        Si precio <= 0 Entonces
            Escribir "Error: el precio debe ser mayor que 0."
        FinSi
    Hasta Que precio > 0
	
    Repetir
        Escribir "Porcentaje de descuento (0 a 100):"
        Leer descuento
		
        Si descuento < 0 O descuento > 100 Entonces
            Escribir "Error: el descuento debe estar entre 0 y 100."
        FinSi
    Hasta Que descuento >= 0 Y descuento <= 100
	
    subtotal <- cantidad * precio
    montoDescuento <- subtotal * descuento / 100
    total <- subtotal - montoDescuento
	
    Escribir "=== RESUMEN DEL PEDIDO ==="
    Escribir "Codigo del producto: ", producto
    Escribir "Cantidad: ", cantidad
    Escribir "Precio unitario: ", precio
    Escribir "Subtotal: ", subtotal
    Escribir "Descuento aplicado: ", montoDescuento
    Escribir "Total a pagar: ", total
	
    Repetir
        Escribir "¿Desea confirmar el pedido?"
        Escribir "1. Si"
        Escribir "2. No"
        Leer opcion
		
        Si opcion <> 1 Y opcion <> 2 Entonces
            Escribir "Error: opcion invalida. Elija 1 o 2."
        FinSi
    Hasta Que opcion = 1 O opcion = 2
	
    Si opcion = 1 Entonces
        Escribir "Pedido confirmado."
    SiNo
        Escribir "Pedido cancelado."
    FinSi
	
    Escribir "Proceso finalizado."
	
FinAlgoritmo