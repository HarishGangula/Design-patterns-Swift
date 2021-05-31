class SubSystem1 {

    func operation1() {
        print("This is operation 1\n")
    }

    func operationN() {
        print("This is operation N\n")
    }    
}


class SubSystem2 {

    func operation2() {
        print("This is operation 2\n")
    }

    func operationZ() {
        print("This is operation Z\n")
    }
}

class  Facade {

    private var subsystem1: SubSystem1
    private var subsystem2: SubSystem2

    init(_ subsystem1: SubSystem1, _ subsystem2: SubSystem2) {
            self.subsystem1 = subsystem1
            self.subsystem2 = subsystem2
        }

    func operation() {
        print("Subsystem 1 operations start:\n")
        subsystem1.operation1()
        subsystem1.operationN()
        print("Subsystem 2 operations start:\n")
        subsystem2.operation2()
        subsystem2.operationZ()
        print("All operations are done!!!")
    }   
}

var facade = Facade(SubSystem1(), SubSystem2())
facade.operation()