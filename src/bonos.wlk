import categorias.*

object bonoPorcentaje{
	method resultado(empleado){
		return  empleado.getCategorias().neto() *10/100
	}
}
object bonoFijo{
	method resultado(empleado){
		return 80
	}
}
object bonoDependeFaltas{
	method resultado(empleado){
		const faltas = empleado.getCantFaltas()
		if (faltas == 0){
			return 100
		}
		else if (faltas == 1){
			return 50
		}
		else {
			return 0
		}
	}
}
object bonoNulo{
	method resultado(empleado){
		return 0
	}
}