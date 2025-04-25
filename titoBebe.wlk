object tito {
  var peso = 70
  var rendimiento = 0
  
  method inerciaBase() = 490
  
  method velocidad() = (self.rendimiento() * self.inerciaBase()) / self.peso()
  
  method peso() = peso
  
  method peso(nuevoPeso) {
    peso = nuevoPeso
  }
  
  method consumir(cantidad, bebida) {
    bebida.beber(cantidad, self)
  }
  
  method rendimiento() = rendimiento
  
  method rendimiento(nuevoRendimiento) {
    rendimiento = nuevoRendimiento
  }
}

object whisky {
  method beber(cantidad, persona) {
    persona.rendimiento((cantidad ** 0.9).round())
  }
}

object terere {
  method beber(cantidad, persona) {
    persona.rendimiento((cantidad * 0.1).max(1))
  }
}

object cianuro {
  method beber(cantidad, persona) {
    persona.rendimiento(cantidad * 0)
  }
}