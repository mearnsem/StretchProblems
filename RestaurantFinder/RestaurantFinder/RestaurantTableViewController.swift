//
//  RestaurantTableViewController.swift
//  RestaurantFinder
//
//  Created by Emily Mearns on 7/22/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class RestaurantTableViewController: UITableViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    var restaurants: [Restaurant] = []
    
    func searchForRestaurants() {
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = "Restaurants"
        guard let coordinates = locationManager.location?.coordinate else {return}
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        request.region = region
        
        let search = MKLocalSearch(request: request)
        search.startWithCompletionHandler { (response, error) in
            guard let response = response else {
                print("Search error: \(error)")
                return
            }
            for item in response.mapItems {
                if let name = item.name, phoneNumber = item.phoneNumber {
                    let new = Restaurant(name: name, phoneNumber: phoneNumber)
                    self.restaurants.append(new)
               }
                
            }
            self.tableView.reloadData()
            print(self.restaurants.count)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationManager.startUpdatingLocation()
        
        searchForRestaurants()
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("restaurantCell", forIndexPath: indexPath)

        let restaurant = restaurants[indexPath.row]
        cell.textLabel?.text = restaurant.name
        cell.detailTextLabel?.text = restaurant.phoneNumber

        return cell
    }


}
