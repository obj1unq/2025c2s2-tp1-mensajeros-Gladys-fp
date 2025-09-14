


object paquete{
   var paquetePagado = false
   var destinoPaquete = puenteBrooklyn
   var mensajero = saraConnor

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

object saraConnor {
  var property pesoSara = 0
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
  var nroAcoplados  =  0

  method pesoAcoplado() {
    return pesoAcoplado
  }
  
  method nroAcoplados(_nroAcoplados){
    nroAcoplados  = _nroAcoplados
  }
  
  method peso() {
    return peso + nroAcoplados  + pesoAcoplado
  }

  
}

object moto {
  const peso = 100
  method peso() {
   return peso
    
  }
  
}
