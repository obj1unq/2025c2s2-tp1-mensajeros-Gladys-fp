
object puenteBrooklyn {
   var puedePasar = false

   method puedePasar(mensajero){
       if (mensajero.peso() <= 1000){
           puedePasar = true
       }else{
           puedePasar = false
       }
   }
}

object matrix {
   var puedePasar = false

   method puedePasar(mensajero) {
       if (mensajero.llamar() == "true"){
           puedePasar = true
       }else{
           puedePasar = false
       }
   }
 }



object paquete {
   var paquetePagado = false

   method paquetePagado(cliente) {
     if (cliente.pago() == "true"){
       paquetePagado = true
     }
   }

  
   method sePuedeEntregar(cliente, mensajero){
//       return self.paquetePagado(cliente) &&  matrix.puedePasar(mensajero) || puenteBrooklyn.puedePasar(mensajero)
   }
 }










object jeaGray {
    var peso = 65

    method peso() {
      return peso
    }
    method llamar() {
      return true
    }
}

object neo {
   method vuela() {
       return true 
   }
   method peso() = 0
   method celular() {
       return true
   }

   var credito = true
   method llamar(){
       return credito
   }
 }

object saraComnor {
   var pesoCamion = 500
   var pesoMoto = 100
   const pesoAcoplado =  500
   var peso = 70
   method peso(_peso) {
     peso = _peso
   }
   method llamar(){
       return false
   }
 }


