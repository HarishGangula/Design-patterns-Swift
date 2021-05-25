protocol IPizza {
    func getType() -> String
}

class Pizza :IPizza {
    func getType() -> String {
        return "This is Normal Pizza\n";
    }
}

class PizzaDecorator : IPizza {
    let pizza: IPizza

    init(_ pizza: IPizza) {
        self.pizza = pizza
    }

    func getType() -> String {
        return pizza.getType();
    }
}

class OnionDecorator: PizzaDecorator {

    override func getType() -> String {
        return pizza.getType() + "Add Onions to It \n";
    }
}


class CheeseDecorator: PizzaDecorator {

    override func getType() -> String {
        return pizza.getType() + "Add Cheese to It \n";
    }
}

class PaneerDecorator: PizzaDecorator {

    override func getType() -> String {
        return pizza.getType() + "Add Paneer to It \n";
    }
}


var pizza = Pizza();

print(pizza.getType())

var onionPizza = OnionDecorator(pizza)

print(onionPizza.getType())

var pannerPizza = PaneerDecorator(onionPizza)

print(pannerPizza.getType())

var finalPizza = CheeseDecorator(pannerPizza)

print(finalPizza.getType())