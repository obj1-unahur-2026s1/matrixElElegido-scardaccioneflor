import pasajeros.*

object nave {
  var pasajeros = []

  method cantidadDePasajeros() {
    return pasajeros.size()
  }

  method pasajeroConMayorVitalidad() { // indica quien es el pasajero con mayor vitalidad
    return pasajeros.max({ pasajero => pasajero.vitalidad() })
  }

  method vitalidadTotal() { //suma las vitalidades de cada pasajero
    return pasajeros.sum({ pasajero => pasajero.vitalidad() })
  }

  method estaEquilibrada() { // indica si la nave está equilibrada si ningún pasajero tiene más de la mitad de la vitalidad total.
    return pasajeros.all({
      psj => (psj.vitalidad() * 2) <= self.vitalidadTotal()
    })
  }

  method estaElELegidoEnLaNave() { // indica si esla el elegidoen la nave
  return  pasajeros.any({psj => psj.esElegido()})
  }

  method naveChoca() {
    pasajeros.forEach({psj => psj.saltar()})
  }

 method naveAcelera() {           
  pasajeros.filter({ psj => !psj.esElegido() }).forEach({ psj => psj.saltar() })
}
method subirALaNave(psj) {
  pasajeros.add(psj)
}


} 