import elementos.*
import armas.*



object floki {
  var arma = ballesta
  method encontrar(elemento) {
    if (arma.estaCargada()){
      elemento.recibirAtaque(arma.potenciaDeAtaque())
      arma.registrarUso()
    }
  }
  method arma() { // getter
    return arma
  }
  method arma(unArma) { // setter: indicacion
    arma = unArma
  }
}

object mario {
  var valorRecolectado = 0
  var ultimoElemento = aurora
  method encontrar(elemento) {
    valorRecolectado = valorRecolectado + elemento.otorgarValor()
    elemento.recibirTrabajo()
    ultimoElemento = elemento
  }
  method esFeliz(){
    return valorRecolectado >= 50 or ultimoElemento.altura() >= 10
  }
}