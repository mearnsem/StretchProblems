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
    let mapView = MKMapView()
    
    var restaurants: [Restaurant] = []
    
    func searchForRestaurants() {
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = "Restaurants"
        request.region = mapView.region
        
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
