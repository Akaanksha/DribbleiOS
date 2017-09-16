//
//  PopularShotsFeedBL.swift
//  Wribble
//
//  Created by Akaanksha Sharman on 15/09/17.
//  Copyright © 2017 Akaanksha Sharman. All rights reserved.
//

import Foundation
import Alamofire

class PopularShotsFeedBL {
    
    
    func fetchPopularShots() {
        
        let url = "\(URL_BASE)\(URL_POPULARSHOTS)"
        print(url)
        let headers = ["Authorization" : "Bearer \(ACCESS_TOKEN_CLIENT)",
                                "Accept" : "application/json"
                                ]
        Alamofire.request("https://api.dribbble.com/v1/shots", method: .get, parameters: nil , encoding: JSONEncoding.default, headers: headers).responseJSON { (response:DataResponse<Any>) in
            
//            print(response.request as Any)  // original URL request
//            print(response.response as Any) // URL response
//            print(response.result.value as Any)   // result of response serialization
            switch(response.result) {
            case .success(_):
              
                if let data = response.result.value{
                    print(response.result.value)
                    
                }
                break

            case .failure(_):
                print(response.result.error)
                break

}
}
}
}
