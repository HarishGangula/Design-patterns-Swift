class Singleton {

    static var shared: Singleton = {
        let instance = Singleton()

        return instance
    }()

    private init(){}

    func someOtherLogic() {
        print("This is some logic in singleton class\n")
    }
    
}

let singleton1  = Singleton.shared
let singleton2 = Singleton.shared

if singleton1 === singleton2 {
    print("Both the objects are equal\n")
} else {
    print("Both the object are not equal\n")
}
singleton1.someOtherLogic()
singleton2.someOtherLogic()