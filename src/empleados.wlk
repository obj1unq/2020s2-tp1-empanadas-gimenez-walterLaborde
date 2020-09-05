//Escribir aqui los objetos

object galvan {
	
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	
	method sueldo() {
		return sueldo
	}
	
	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
	
	method cobrarSueldo() {
		if (deuda > dinero + sueldo) {
			self.dinero(0)
			deuda -= dinero + sueldo
		}
		else {
			self.deuda(0)
			dinero += sueldo - deuda
		}
	}
	
	method deuda() {
		return deuda
	}
	
	method deuda(_deuda) {
		deuda = _deuda
	}
	
	method gastar(cuanto) {
		if (dinero >= cuanto) {
			dinero = dinero - cuanto
		}
		else {
			self.dinero(0)
			deuda += cuanto - dinero
		}
	}
	
	method dinero() {
		return dinero
	}
	
	method dinero(_dinero) {
		dinero = _dinero
	}
}


object baigorria {
	
	const precioPorEmpanada = 15
	var empanadasVendidas = 0
	var sueldo = 0
	var totalCobrado = 0
	
	method empanadasVendidas() {
		return empanadasVendidas
	}
	
	method empanadasVendidas(_empanadasVendidas) {
		empanadasVendidas += _empanadasVendidas
	}

	method sueldo() {
		return sueldo
	}

	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
			
	method cobrarSueldo() {
		totalCobrado += empanadasVendidas * precioPorEmpanada
		self.sueldo(empanadasVendidas * precioPorEmpanada)
		self.empanadasVendidas(0)
	}
	
	method totalCobrado() {
		return totalCobrado
	}

}


object gimenez {
	
	var fondo = 300000
	
	method fondo() {
		return fondo
	}
	
	method fondo(_fondo) {
		fondo = _fondo
	}
	
	method pagarSueldo(empleado) {
		empleado.cobrarSueldo()
		self.fondo(self.fondo() - empleado.sueldo())
	}
}
