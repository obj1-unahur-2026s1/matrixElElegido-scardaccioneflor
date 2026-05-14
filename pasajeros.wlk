import nave.*

object neo {
  var energia = 100
  const elegido = true

  method esElegido() = elegido

  method energia() = energia

  method saltar() {
    energia = energia / 2
  }

  method vitalidad() {
    return energia * 0.1
  }
}

object morfeo {
  const elegido = false
  var vitalidadBase = 8
  var estaCansado = false

  method esElegido() = elegido

  method vitalidad() = vitalidadBase

  method saltar() {
    estaCansado = !estaCansado
    vitalidadBase = vitalidadBase - 1
  }
}

object trinity {
  const elegido = false
  var vitalidadBase = 0

  method esElegido() = elegido

  method vitalidad() = vitalidadBase

  method saltar() {
  }


}