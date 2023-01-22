import Foundation
import ObjectMapper

struct Wind : Mappable {
	var speed : Double?
	var deg : Int?
	var gust : Double?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		speed <- map["speed"]
		deg <- map["deg"]
		gust <- map["gust"]
	}

}
