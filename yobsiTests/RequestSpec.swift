import Quick
import Nimble
import CoreLocation


class RequestSpec: QuickSpec {
  
  override func spec() {
    
    describe("Request Model") {
      
      var request : Request?
      
      beforeEach {
        let zombieLand = CLLocation(latitude: -68.133481, longitude: -16.495883) // Somewhere in Zombieland...
        request = Request(searchFor: "mechanic", location: zombieLand, notes: "my car is electric")
      }
      
      it("has seekFor") {
        expect(request!.searchFor).toNot(beNil())
      }
  
      it("has location") {
        expect(request!.location).toNot(beNil())
      }
      
      it("has notes") {
        expect(request!.notes).toNot(beNil())
      }
      
    }
    
  }
  
}
