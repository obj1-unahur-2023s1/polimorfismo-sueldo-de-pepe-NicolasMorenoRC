import categorias.*
import bonos.*
object pepe{
	var categoria
	var bonoPresentismo = bonoDependeFaltas.resultado(self)
	var bonoResultado
	var cantFaltas
	
	method getCategorias()= categoria
	method setCategorias(cat){
		categoria = cat
	}
	method getBonoPresentismo() = bonoPresentismo
	
	method getBonoResultado() = bonoResultado
	method setBonoResultado(resultado){
		bonoResultado = resultado
	}
	method getCantFaltas() = cantFaltas
	method setCantFaltas(faltas){
		cantFaltas = faltas
	}
	method sueldo(){
		return self.getCategorias().neto() + bonoPresentismo
		+ bonoResultado.resultado(self)
	}
}