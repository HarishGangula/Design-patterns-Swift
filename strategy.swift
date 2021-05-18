
protocol IFlyStrategy {
    func fly()
}

protocol IDisplayStrategy {
    func display()
}

protocol IQuackStrategy {
    func quack()
}

class SimpleFly: IFlyStrategy {
    func fly() {
        print("This is simple flying")
    }
} 

class JetFly: IFlyStrategy {
    func fly() {
        print("This is Jet flying")
    }
}

class DisplayText: IDisplayStrategy {
    func display() {
        print("This is text display")
    }
}

class DisplayGraphics: IDisplayStrategy {
    func display() {
        print("This displays graphics")
    }
}

class SimpleQuack: IQuackStrategy {
    func quack() {
        print("This is simple quack")
    }
}

class BlobQuack: IQuackStrategy {
    func quack() {
        print("This is blob quack")
    }
}


class Duck {
    var displayObject: IDisplayStrategy
    var flyObject: IFlyStrategy
    var quackObject: IQuackStrategy
    
    init(displayObject: IDisplayStrategy, flyObject: IFlyStrategy, quackObject: IQuackStrategy) {
        self.displayObject = displayObject
        self.flyObject = flyObject
        self.quackObject = quackObject
    }

    func display() {
        displayObject.display()
    }

    func fly() {
       flyObject.fly()
    }

    func quack() {
        quackObject.quack()
    }
}

var duck =  Duck(displayObject:  DisplayGraphics(), flyObject:  JetFly(), quackObject:  SimpleQuack())
duck.fly()
duck.quack()
duck.display()