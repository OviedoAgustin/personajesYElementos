object castillo {
  var nivelDeDefensa = 150
  method nivelDeDefensa() {
    return nivelDeDefensa
  }
  method altura(){
    return 20
  }
  method recibirAtaque(valorDeAtaque) {
    nivelDeDefensa = 0.max(nivelDeDefensa - valorDeAtaque)
  }
  method recibirTrabajo(){
    nivelDeDefensa = 200.min(nivelDeDefensa + 20)
  }

  method otorgarValor(){
    return nivelDeDefensa * 0.2
  }
}

object aurora {
  var estaViva = true
  method estaViva() {
    return estaViva
  }
  method altura(){
    return 1
  }
  method recibirAtaque(valorDeAtaque) {
    if (valorDeAtaque >= 10){
      estaViva = false
    }
    //estaViva = (valorDeAtaque > 10) {false} else {true} por el momento no se usa
  }
  method recibirTrabajo(){}
  method otorgarValor(){
    return 15
  }
}

object tipa {
  var altura = 8 // valor inicial
  method altura() { // getter: obtengo el valor de un atributo
    return altura
  }
  method recibirAtaque(valorDeAtaque) {} // polimorfico, todos los objetos tienen que tener los mismos metodos
  method recibirTrabajo(){
    altura = altura + 1
  }
  method otorgarValor(){
    return altura * 2
  }
}