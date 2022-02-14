//
//  TaskViewModel.swift
//  HouseWorkRace
//
//  Created by GOngTAE on 2022/02/14.
//

import Foundation


class TaskViewModel {
    
    // 그룹 > 할 일 목록 불러오는 로직
    
    
    // 그룹 변경
    
    
    
    // 그룹 목록 불러오는 로직
    
    func taskList() ->  [Task] {
        return [
            Task(title: "설거지", detail: "하루치 설거지", tag: ["설거지"], location: "부엌", image: "washDish"),
            Task(title: "빨래", detail: "작은방이랑 큰방", tag: ["모두함께"], location: "", image: "laundary")
            ]
    }
    
    // 그룹 목록 개수 불러오는 로직
    
    var count: Int {
        return 2
    }
}


struct Task {
    var title: String
    var detail: String
    var tag: [String]
    var location: String
    var date: Date?
    
    var due: Date?
    
    var image: String
}
