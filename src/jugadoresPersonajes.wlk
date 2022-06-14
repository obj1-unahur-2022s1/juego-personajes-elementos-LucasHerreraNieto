import armas.*
import elementos.*

object luisa {
	var personajeActivo 
	
	method elegirPersonaje(unPersonaje){
		personajeActivo = unPersonaje
	}
	method aparecer(elemento){
		personajeActivo.encontrarElemento(elemento)
	}
}


object floki {
	var property arma
	
	method encontrarElemento(unElemento){
		if(arma.estaCargada())unElemento.recibirAtaque(arma)
		arma.sumarUso() 
	}
}


object mario {
	var property valorRecolectado = 0
	var ultimoElementoEncontrado
	
	method encontrarElemento(unElemento){
		valorRecolectado = valorRecolectado + unElemento.aporteDeValor()
		unElemento.recibirTrabajo()
		ultimoElementoEncontrado = unElemento
	}
	method esFeliz() = valorRecolectado >= 50 or ultimoElementoEncontrado.altura()>= 10
}

