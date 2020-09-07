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
			deuda -= dinero + sueldo
			self.dinero(0)
		}
		else {
			dinero += sueldo - deuda
			self.deuda(0)
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
			deuda += cuanto - dinero
			self.dinero(0)
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
	var totalCobrado = 0
	
	method vender(empanadas) {
		empanadasVendidas += empanadas
	}

	method sueldo() {
		return precioPorEmpanada * empanadasVendidas
	}
			
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		empanadasVendidas -= empanadasVendidas
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
		self.fondo(self.fondo() - empleado.sueldo())
		empleado.cobrarSueldo()
	}
}
