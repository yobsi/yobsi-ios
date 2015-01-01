//
//  Request.swift
//  yobsi
//
//  Created by onix on 12/29/14.
//  Copyright (c) 2014 xiobit. All rights reserved.
//

import Foundation
import CoreLocation

class Request {
  
  var searchFor : String?
  var location : CLLocation?
  var notes : String?
  
  init(searchFor : String, location : CLLocation, notes : String) {
    self.searchFor = searchFor
    self.location = location
    self.notes = notes
  }
  
}
