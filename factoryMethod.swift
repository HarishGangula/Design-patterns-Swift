protocol Product {

    func deliver() -> String
}


protocol Creator {

  func getFactoryProduct() -> Product
}

extension Creator {

    func deliverProduct() {
        let product = getFactoryProduct()
        print("The product delivered in \(product.deliver())\n")
    }
}

class Truck: Product {
    func deliver() -> String {
        return "Truck"
    }
}

class Ship: Product {
    func deliver() -> String {
        return "Ship"
    }
}

class RoadDeliveryFactory: Creator {

    func getFactoryProduct() -> Product {
        return Truck()
    }
}

class WaterDeliveryFactory: Creator {

    func getFactoryProduct() -> Product{
        return Ship()
    }
}

let roadShipping = RoadDeliveryFactory()
roadShipping.deliverProduct()

let waterShipping = WaterDeliveryFactory()
waterShipping.deliverProduct()