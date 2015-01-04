//
//  LoginViewController.swift
//  yobsi
//
//  Created by onix on 1/3/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, FBLoginViewDelegate {
  
  @IBOutlet var fbLoginView : FBLoginView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.fbLoginView.delegate = self
    self.fbLoginView.readPermissions = ["public_profile", "email"]
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: Facebook Delegate Methods
  
  func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
    println("User Logged In")
    println("This is where you perform a segue.")
    
    self.performSegueWithIdentifier("mainSegue", sender: self)
  }
  
  func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
    println("User Name  : \(user.name)")
    
    println("Birthdate  : \(user.birthday)")
    
    let email = user.objectForKey("email") as String
    println("email : \(email)")
  }
  
  func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
    println("User Logged Out")
  }
  
  func loginView(loginView: FBLoginView!, handleError error: NSError!) {
    println("Error: \(error.localizedDescription)")
  }
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
}
