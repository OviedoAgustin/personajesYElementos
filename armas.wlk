object ballesta {
  var flechas = 10
  method potenciaDeAtaque(){
    return 4
  }
  method registrarUso(){
    flechas = 0.max(flechas - 1)
  }
  //method estaCargada(){
  //  return flechas > 0
  //}
  // forma abreviada solamente en metodos de consulta
  method estaCargada() = flechas > 0
}

object jabalina {
  var estaCargada = true
  method potenciaDeAtaque(){
    return 30
  }
  method registrarUso(){
    estaCargada = false
  }
  method estaCargada() = estaCargada
}