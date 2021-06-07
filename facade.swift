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

let data: [String: Any] = ["event": "{\"ver\":\"3.0\",\"eid\":\"INTERACT\",\"ets\":1622540686931,\"actor\":{\"type\":\"User\",\"id\":\"ca5c8fe7-ecf6-4b69-84be-e3e653a0e20a\"},\"context\":{\"cdata\":[{\"type\":\"Tabs\",\"id\":\"Library-Course\"},{\"id\":\"1696553b-42ee-42b8-b95c-8c54f45d873d\",\"type\":\"UserSession\"}],\"env\":\"onboarding\",\"channel\":\"505c7c48ac6dc1edc9b08f21db5a571d\",\"pdata\":{\"id\":\"staging.diksha.app\",\"pid\":\"sunbird.app\",\"ver\":\"3.9.756staging-debug\"},\"sid\":\"1696553b-42ee-42b8-b95c-8c54f45d873d\",\"did\":\"134bde79b3718ab089e255091d6de357f51990c5\"},\"edata\":{\"type\":\"TOUCH\",\"subtype\":\"no-clicked\",\"id\":\"onboarding-language-setting\",\"pageid\":\"onboarding-language-setting\",\"extra\":{\"pos\":[]}},\"object\":{\"id\":\"\",\"type\":\"\",\"version\":\"\",\"rollup\":{}},\"mid\":\"72ed4360-d8ca-4029-b471-5eb328bb6c45\"}",
                        "event_type": "INTERACT",
                        "priority": 1,
                        "timestamp": 1622540686977]
    for (_, value) in data {
    
        if(value is Int) {
            var convertedValue = Int64(exactly: value)
            print(convertedValue)
        }
    
    }