protocol Command {
    func execute()
}


class SimpleCommand : Command {
    private var payload: String

    init(_ payload: String) {
        self.payload = payload
    }

    func execute() {
        print("This is simple command execute with a payload of \(payload)")
    }
}

class ComplexCommand: Command {

    private var reciever: Reciever
    private var a : String
    private var b : String

    init(_ reciever: Reciever, _ a: String, _ b: String) {
        self.reciever = reciever
        self.a = a
        self.b = b
    }

    func execute() {
        print("Complex stuff will be done by the reciever!!!")
        reciever.doSomething(a)
        reciever.doSomethingElse(b)
        
    }
    
}

class Reciever {
    func doSomething(_ a: String) {
        print("Receiver: Working on (" + a + ")\n")
    }

    func doSomethingElse(_ b: String) {
        print("Receiver: Also working on (" + b + ")\n")
    }
}


class Invoker {
    private var onStart: Command?
    private var onFinish: Command?

    func setOnStart(_ command: Command) {
        onStart = command
    }

    func setOnFinish(_ command: Command) {
        onFinish = command
    }


    func doSomething() {
        print("This is before invoking the process!!!")

        onStart?.execute()

        print("Do someting really important")
        
        onFinish?.execute()
        
    }

    
}

var invoker = Invoker()

invoker.setOnStart(SimpleCommand("Say Hi!"))
let receiver = Reciever()
invoker.setOnFinish(ComplexCommand(receiver, "Send email", "Save report"))

invoker.doSomething()