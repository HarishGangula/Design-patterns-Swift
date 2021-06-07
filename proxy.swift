protocol IService {
    func getData(_ id: String) -> Any
}


class Service: IService {
    private var dataStore:[String: Any] = ["name": "Harish", "age": 30, "gender": "M"];

    func getData(_ id: String) -> Any {
        print("Getting data from actual server")
        return dataStore[id]!
    }
}

class CacheServiceProxy: IService {

     private var dataStore:[String: Any] = [:]
     private var service: IService
     init(_ service: IService) {
         self.service = service
     }

     func getData(_ id: String) -> Any {
         if(dataStore[id] != nil) {
             print("Getting data from proxy cache")
             return dataStore[id]!
         }
         
        let data =  self.service.getData(id)
        dataStore[id] = data;
        return data;
    }
}

var service = Service()
var proxyService = CacheServiceProxy(service)
print("Data: \(proxyService.getData("name"))")

print("Data: \(proxyService.getData("name"))")

print("Data: \(proxyService.getData("age"))")

print("Data: \(proxyService.getData("age"))")
print("Data: \(proxyService.getData("age"))")