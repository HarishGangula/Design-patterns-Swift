protocol Chair {
    func getChair() -> String
}

protocol CoffeTable {
    func getCoffeeTable() -> String
}   

protocol Sofa {
    func getSofa() -> String
}

protocol FurnitureFactory {
    func createChair() -> Chair
    func createSofa() -> Sofa
    func createCoffeeTable() -> CoffeTable
}

extension FurnitureFactory {

    func display() {
        print("Chair: \(createChair().getChair()), Sofa: \(createSofa().getSofa()), CoffeTable: \(createCoffeeTable().getCoffeeTable())\n")
    }
}

class ModernChair: Chair {
    func getChair() -> String {
        return "ModernChair"
    }
}

class VictorianChair: Chair {
    func getChair() -> String {
        return "VictorianChair"
    }
}

class ArtDecoChair: Chair {
    func getChair() -> String {
        return "ArtDecoChair"
    }
}

class ModernCoffeTable: CoffeTable {
    func getCoffeeTable() -> String {
        return "ModernCoffeTable"
    }
}

class VictorianCoffeTable: CoffeTable {
    func getCoffeeTable() -> String {
        return "VictorianCoffeTable"
    }
}

class ArtDecoCoffeTable: CoffeTable {
    func getCoffeeTable() -> String {
        return "ArtDecoCoffeTable"
    }
}

class ModernSofa: Sofa {
    func getSofa() -> String {
        return "ModernSofa"
    }
}

class VictorianSofa: Sofa {
    func getSofa() -> String {
        return "VictorianSofa"
    }
}
class ArtDecoSofa: Sofa {
    func getSofa() -> String {
        return "ArtDecoSofa"
    }
}


class ModernFurnitureFactory: FurnitureFactory {
    func createChair() -> Chair {
        return ModernChair()
    }
    func createSofa() -> Sofa {
        return ModernSofa()
    }
    func createCoffeeTable() -> CoffeTable {
        return ModernCoffeTable()
    }
}

class ArtDecoFurnitureFactory: FurnitureFactory {
    func createChair() -> Chair {
        return ArtDecoChair()
    }
    func createSofa() -> Sofa {
        return ArtDecoSofa()
    }
    func createCoffeeTable() -> CoffeTable {
        return ArtDecoCoffeTable()
    }
}

class VictorianFurnitureFactory: FurnitureFactory {
    func createChair() -> Chair {
        return VictorianChair()
    }
    func createSofa() -> Sofa {
        return VictorianSofa()
    }
    func createCoffeeTable() -> CoffeTable {
        return VictorianCoffeTable()
    }
}



let modernSet = ModernFurnitureFactory()
modernSet.display()

let artDecoSet = ArtDecoFurnitureFactory()
artDecoSet.display()

let victorianSet = VictorianFurnitureFactory()
victorianSet.display()