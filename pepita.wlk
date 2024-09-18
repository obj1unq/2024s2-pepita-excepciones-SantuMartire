object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		self.validarVuelo(distancia)
		energia = energia - 10 - distancia
	}
		
	method validarVuelo(distancia){
		if(distancia +10 > energia){
			self.error("La energia de pepita, que es " + energia + ", es insuficiente para volar esa distancia")
		}
	}
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia += energia + comida.energiaQueAporta() / 2
	}
		
	method volar(distancia) {
		self.validarVuelo(distancia)
		energia = energia - 20 - 2*distancia
	}
	method validarVuelo(distancia){
		if(distancia*2 +20 > energia){
			self.error("La energia de pepon, que es " + energia + ", es insuficiente para volar esa distancia")
		}
	}
	
}

object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}
}

object milena {

	var ave1 = pepita
	var ave2 = pepon

	method movilizar(distancia){
		ave1.volar(distancia)
		ave2.volar(distancia)
		}
	}



