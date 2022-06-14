import armas.*
import jugadoresPersonajes.*

object castillo {
	const property altura = 20
	var property nivelDefensa = 150
	
	method recibirAtaque(arma){
		nivelDefensa = 0.max(nivelDefensa - arma.potencia())
	}
	method aporteDeValor() = nivelDefensa/5
	
	method recibirTrabajo(){
		nivelDefensa = 200.min(nivelDefensa + 20)
	} 
}

object aurora{
	var property estaViva = true
	const property altura = 2
	
	method recibirAtaque(arma){
		if(arma.potencia()>=10){
			estaViva = false
		}
	}
	method aporteDeValor() = 15
	method recibirTrabajo(){}
}

object tipa{
	var property altura = 8
	
	method aporteDeValor() = altura*2
	method recibirAtaque(arma){}
	method recibirTrabajo(){altura++}
}
