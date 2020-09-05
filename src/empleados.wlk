//Escribir aqui los objetos

object galvan {
	
	var sueldo = 15000
	var sueldoCobrado = 0
	
	method sueldo() {
		return sueldo
	}
	
	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
	
	method cobrarSueldo() {
		sueldoCobrado += sueldo
	}
}