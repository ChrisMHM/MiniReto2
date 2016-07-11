//: Mini reto velocímetro

import UIKit

enum Velocidades: Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

//Clase Auto
class Auto {
    //Instancia de Velocidades
    var velocidad = Velocidades?()
    
    //Inicializar velocidad en Apagado
    init(){
        self.velocidad = Velocidades.init(velocidadInicial: .Apagado)
    }
    
    //Función para cambiar de forma gradual
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        
        switch velocidad!{
        case .Apagado:
            velocidad! = .VelocidadBaja
            return (velocidad!.rawValue, "Velocidad baja")
        case .VelocidadBaja:
            velocidad! = .VelocidadMedia
            return (velocidad!.rawValue, "Velocidad media")
        case .VelocidadMedia:
            velocidad! = .VelocidadAlta
            return (velocidad!.rawValue, "Velocidad alta")
        case .VelocidadAlta:
            velocidad! = .VelocidadMedia
            return (velocidad!.rawValue, "Velocidad media")
            
        }
    }
}

//Instancia de la clase
var auto = Auto()
print("\(auto.velocidad!.rawValue), \(auto.velocidad!)")

//Pruebas
for i in 1...20{
    var (velocidad, cadena) = auto.cambioDeVelocidad()
    print("\(velocidad), \(cadena)")
}