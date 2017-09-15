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
//        Alamofire.request(
//            URL(string: "http://localhost:5984/rooms/_all_docs")!,
//            method: .get,
//            parameters: ["include_docs": "true"])
//            .validate()
//            .responseJSON { (response) -> Void in
//                guard response.result.isSuccess else {
//                    print("ERROR")
//                    //    print("Error while fetching remote rooms: \(response.result.error)")
//                    //    completion(nil)
//                    return
//                }
//        }
        
        let headers = ["Authorisation" : "Bearer \(ACCESS_TOKEN_CLIENT)",
                                "Accept" : "application/json"
                                ]
        
        Alamofire.request("\(URL_BASE)\(URL_POPULARSHOTS)", method: .get, parameters: ["":""], encoding: URLEncoding.default, headers: headers).responseJSON { (response:DataResponse<Any>) in
            switch(response.result) {
            case .success(_):
                print(response.result.error)
//                if let data = response.result.value{
//                    print(response.result.value)
//                }
//                break
//                
            case .failure(_):
                print(response.result.error)
//                break
//                
//            }
//        }
}
}
}
}
