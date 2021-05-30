
// TODO:  make this more unstandable example

class Target { // this legacy code which produces XML data

    func request() -> String {
        return "Target: The default target behaviour"
        
    }
    
}

class Adaptee {  // This will be library which needs JSON data as example

    public func specificRequest() -> String {
        return ".eetpadA eht fo roivaheb laicepS"
    }
}


class Adapter: Target { // This will be Target which wraps the adaptee and does the convertion 

    private var adaptee: Adaptee

    init(adaptee: Adaptee){
        self.adaptee = adaptee
    }

    override func request() -> String {
        return "Adapter: (TRANSLATED) " + adaptee.specificRequest().reversed()
    }
    
}

let target = Target()
print(target.request())


let adaptee = Adaptee()
print(adaptee.specificRequest())

let adapter = Adapter(adaptee: adaptee)
print(adapter.request())
