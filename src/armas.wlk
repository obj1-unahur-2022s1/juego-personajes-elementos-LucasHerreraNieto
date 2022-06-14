object ballesta {
	var usos = 0
	const property potencia = 4 
	var property flechas = 10
	
	method estaCargada() = flechas > 0
	method sumarUso(){
		usos++
		flechas = 0.max(flechas-1)
	}
}

object jabalina{
	var usos = 0
	var property estaCargada = true
	const property potencia = 30
	
	method sumarUso(){
		usos++
		estaCargada = false
	}
}