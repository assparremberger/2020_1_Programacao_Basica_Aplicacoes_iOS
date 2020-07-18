import UIKit

var str = "Hello, playground"

var idade = 34

var peso: Double = 99.5

var idadeD = Double( idade )

let PI = 3.14

print( "Olá" )
print( idade )

let mensagem =
"""
Olá Pessoal
Vamos aprender Swift
"""
print(mensagem)

var carros = ["Doblo", "Uno", "Ferrari"]

for carro in carros{
    print( carro )
}

for i in 1...5{
    print( i )
}

for i in stride(from: 5, to: 0 , by: -1){
    print( i )
}

for _ in 1..<3{
    print( "Adalto" )
}


let pontos = [25, 15, 18, 25, 25]

var setGanho = 0
var setPerdido = 0

for pontoSet in pontos{
    if pontoSet >= 25 {
        setGanho += 1
    }else{
        setPerdido += 1
    }
}
print( "O time ganhou \( setGanho ) sets" )
print( "O time perdeu " + String(setPerdido) + " sets " )

var y = 0
while y < 3 {
    print( "Valor de Y: \(y) ")
    y += 1
}

var z = 1
repeat {
    print( "Valor de Z: \(z) ")
    z += 1
}while z < 3



switch z {
case 1:
    print("UM")
case 2:
    print("DOIS")
default:
    print( "Valor náo cadastrado")
}


func somar( x: Double , y: Double ) -> Double{
    let soma = x + y
    return soma
}


func calcular( x: Int , y: Int ) -> (soma: Int, sub: Int, mult:Int, div: Double) {
    let soma = x + y
    let sub = x - y
    let mult = x * y
    let div:Double = Double(x / y)
    return (soma, sub, mult, div)
}

let valores = calcular(x: 10, y: 2)

print( "Soma: \(valores.soma) ")
print( "Subtração: \(valores.sub) ")
print( "Multiplicação: \(valores.mult) ")
print( "Divisão: \(valores.div) ")

/*
func incrementar( ) -> ((Int) -> Int){
    func add( valor: Int) -> Int{
        return valor + 1
    }
    return add
}

var adicionar = incrementar()
print( adicionar(10) )
 
 */


func incrementar( ) -> ( add:((Int) -> Int) , remove:((Int) -> Int )){
    func add( valor: Int) -> Int{
        return valor + 1
    }
    
    func remove( valor: Int) -> Int{
        return valor - 1
    }
    return (add, remove)
}

var adicionar = incrementar()
print( adicionar.add(10)  )
print( adicionar.remove(10)  )



// Classes

class Veiculo{
    var placa: String
    
    init( placa: String ){
        self.placa = placa
    }
    
    func imprimirPlaca(){
        print( "Placa: \( self.placa) ")
    }
}

class Carro:Veiculo {
    
    var nPortas: Int
    
    init(placa: String, nPortas: Int) {
        self.nPortas = nPortas
        super.init( placa:placa )
    }
    override func imprimirPlaca() {
        print( "Placa: \( self.placa) ")
        print( "Qtd Portas: \( self.nPortas) ")
    }
}

var uno = Veiculo(placa: "ILW-1790")
uno.imprimirPlaca()

var doblo = Carro(placa: "ABC-1234", nPortas: 4)
doblo.imprimirPlaca()

enum Meses : Int {
    case Janeiro = 1
    case Fevereiro = 22, Março , Abril, Maio
}

print(" ------- ")
print("\(Meses.Março): \(Meses.Março.rawValue) ")
