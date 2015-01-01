import Quick
import Nimble
import UIKit

class MainViewControllerSpec: QuickSpec {
  
  override func spec() {
    
    describe("Main View Controller") {
      
      var vc : MainViewController!
      
      
      beforeEach {
        var storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        
        vc = storyboard.instantiateViewControllerWithIdentifier("MainVC") as MainViewController
      }
      
      it("Should be instantiated") {
        vc.loadView()
      }
      
      
    }
    
  }
  
}
