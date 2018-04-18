//
//  DotzuX.swift
//  demo
//
//  Created by liman on 26/11/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

struct NetworkDetailModel {
    var title: String?
    var content: String?
    var image: UIImage?
    var blankContent: String?
    var isLast: Bool = false
    var requestSerializer: RequestSerializer = JSONRequestSerializer//默认JSON格式
    var headerFields: [String: Any]?
    
    init(title: String? = nil, content: String? = "", _ image: UIImage? = nil) {
        self.title = title
        self.content = content
        self.image = image
        
        
        
        //响应时间, 偶现bug
        if title == "LATENCY" {
            if let content = content {
                if let double_second = Double(content) {
                    let int_second = Int(double_second)
                    if int_second > 10000 {
                        self.content = ""
                    }else{
                        self.content = content
                    }
                }
            }
        }
    }
}
