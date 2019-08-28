object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var gastos=0
	var deuda=0
	var dinero=0
	var sueldo = 15000
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	
	
	method totalDinero() {
		return dinero
	}
	
	method cobrarSueldo() {
		
		var aDescontar
		aDescontar= deuda.min(dinero)
		deuda-= aDescontar
		dinero-= aDescontar
	}
	
	method totalCobrado () {}
	
	method totalDeuda(){
		sueldo -= deuda 
	}
	method gastar(cuanto){
		deuda += cuanto
		deuda.cobrarSueldo()
	}
}

object baigorria {
	var totalCobrado=0
	var dinero =0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {
		dinero += self.sueldo() 
		totalCobrado += self.sueldo()
	}
	
	method totalCobrado () = return totalCobrado 
	
	method totalDinero() {
		return dinero
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { 
		return dinero
	}
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
