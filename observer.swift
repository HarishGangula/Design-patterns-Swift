protocol IObserver: class {
    func update(_ data: Int)
}


protocol IPublisher {
    func subscribe(_ observer: IObserver)
    func unSubscribe(_ observer: IObserver)
    func notify()
}

class WeatherStation: IPublisher {
    var observers: [IObserver]
    var temperature:Int
    init() {
        self.observers = []
        self.temperature = 0
    }
    func subscribe(_ observer: IObserver){
        self.observers.append(observer)
        print("Subscribing the observer\n")
    }
    func unSubscribe(_ observer: IObserver) {
        if let index = self.observers.firstIndex(where: { $0 === observer }) {
            self.observers.remove(at: index)
            print("unSubscribing the observer\n")
        }
    }
    func notify() {
        self.observers.forEach({ $0.update(self.temperature)})
        print("Notifying the observers\n")
    }

    func updateWeather(_ temp: Int) {
        self.temperature = temp;
        self.notify()
    }
}

class PhoneDisplay : IObserver {

    func update(_ data: Int) {
        print("Diplaying temperature \(data) in phone\n")
    }
}


class WindowDisplay : IObserver {

    func update(_ data: Int) {
        print("Diplaying temperature \(data) in window\n")
    }
}


var weatherStation = WeatherStation()

var phoneDisplay = PhoneDisplay()
var windowDisplay = WindowDisplay()


weatherStation.subscribe(phoneDisplay)
weatherStation.subscribe(windowDisplay)

weatherStation.updateWeather(12)
weatherStation.unSubscribe(windowDisplay)
weatherStation.updateWeather(22)