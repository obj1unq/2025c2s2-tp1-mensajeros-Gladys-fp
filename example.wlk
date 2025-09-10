


object paquete{
   var paquetePagado = false
   var destinoPaquete = puenteBrooklyn
   var mensajero = saraComnor

   method destinoPaquete(_destinoPaquete) {
     destinoPaquete = _destinoPaquete
   }

   method mensajero(_mensajero) {
    mensajero = _mensajero 
   }

  
  method paquetePagado(_paquetePagado) {
       paquetePagado = _paquetePagado

  }

  method sePuedeEntregar() {
    return paquetePagado and destinoPaquete.puedePasar(mensajero)
  }
  
 }


// --------------------- DESTINO ------------------------
object puenteBrooklyn {
  
  
   method puedePasar(mensajero){
      return mensajero.peso() <= 1000

   }
}

object matrix {

  method puedePasar(mensajero) {
    return mensajero.puedellamar()
  }
   
}



//--------------------------------MENSAJEROS------------------------------------  



object jeaGray {
    var peso = 65

    method peso() {
      return peso
    }
    method puedellamar() {
      return true
    }
}

object neo {

   var credito = true


   method vuela() {
       return true 
   }
   method peso(){
    return 0
   } 

   method celular() {
       return true
   }

  
   method puedellamar(){
       return credito
   }
 }

object saraComnor {
  var property pesoSara = 70
  var transporte = camion

  method transporte(_transporte) {
    transporte = _transporte
    
  }
   method pesoSara(_pesoSara) {
     pesoSara = _pesoSara
   }
   method puedellamar(){
       return false
   }

   method peso() {
    return pesoSara + transporte.peso()
   } 
     
  
 }

//------------------TRANSPORTE-----------------




object camion {
  const peso = 500 
  const pesoAcoplado = 500 
  var cantidadAcoplado =  0

  method pesoAcoplado() {
    return pesoAcoplado
  }
  
  method cantidadAcoplados(cantidad){
    cantidadAcoplado = cantidad
  }
  
  method peso() {
    return peso + cantidadAcoplado + pesoAcoplado
  }

  
}

object moto {
  const peso = 100
  method peso() {
   return peso
    
  }
  
}

