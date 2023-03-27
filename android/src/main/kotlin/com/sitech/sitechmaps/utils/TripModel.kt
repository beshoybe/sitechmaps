package com.sitech.sitechmaps.utils

import com.mapbox.geojson.Point

class NavigationModel(private val navArgs:Map<*,*>) {
     val wayPoints: MutableList<Point> = mutableListOf()
     val startPoint = navArgs["startPoint"] as HashMap<*, *>
     val startLat = startPoint["Latitude"] as Double
     val startLong = startPoint["Longitude"] as Double
     val startName = startPoint["name"] as String
     val endPoint = navArgs["endPoint"] as HashMap<*, *>
     val endName = endPoint["name"] as String
     val endLat = endPoint["Latitude"] as Double
     val endLong = endPoint["Longitude"] as Double
     val currentPoint = navArgs["currentPoint"] as HashMap<*,*>
     val currentLat=currentPoint["Latitude"] as Double
     val  currentLong = currentPoint["Longitude"] as Double
     val tripDetails= TripModel(navArgs["tripDetails"] as Map<*, *>)
     val tripStarted=navArgs["tripStarted"] as Boolean
     val baseUrl = navArgs["baseUrl"] as String
     val token = navArgs["token"] as String
}

class TripModel(private val tripDetails:Map<*,*>){
     val tripId = tripDetails["tripId"] as String
     val clientName = tripDetails["clientName"] as String
     val clientNumber=tripDetails["clientNumber"] as String
     val carModel = tripDetails["carModel"] as String
     val carPlate = tripDetails["carPlate"] as String

}
