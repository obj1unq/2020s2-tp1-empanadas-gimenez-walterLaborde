//Escribir aqui los objetos

object galvan {
	
	var sueldo = 15000
	var sueldoAcumulado = 0
	
	method sueldo() {
		return sueldo
	}
	
	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
	
	method cobrarSueldo() {
		sueldoAcumulado += sueldo
	}
}


object baigorria {
	
	const precioPorEmpanada = 15
	var empanadasVendidas = 0
	var sueldo = 0
	var sueldoAcumulado = 0
	
	method empanadasVendidas() {
		return empanadasVendidas
	}
	
	method empanadasVendidas(_empanadasVendidas) {
		empanadasVendidas = _empanadasVendidas
	}

	method sueldo() {
		return sueldo
	}

	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
			
	method cobrarSueldo() {
		sueldoAcumulado += empanadasVendidas * precioPorEmpanada
		self.sueldo(empanadasVendidas * precioPorEmpanada)
		self.empanadasVendidas(0)
	}
}