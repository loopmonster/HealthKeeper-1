//
//  topclass.swift
//  hihi2
//
//  Created by wanseoncho on 2018. 8. 1..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import Foundation

var userHeight: Int = 0
var userWeight: Int = 0

let jobs = ["중학생", "고등학생", "대학생", "직장인"]
var selectedJob: String = "중학생"

struct Work {
    var workName: String
    var workDescription: String
    var workImageName: String
    var workVideoLink: String
    var videoTime: Int
}

var workArray : [Work] = []

var work1 = Work(workName: "통증1에 대한 운동", workDescription: "운동1에 대한 설명", workImageName: "그림1", workVideoLink: "운동1", videoTime: 30)
var work2 = Work(workName: "통증2에 대한 운동", workDescription: "운동2에 대한 설명", workImageName: "그림2", workVideoLink: "운동2", videoTime: 40)
var work3 = Work(workName: "통증3에 대한 운동", workDescription: "운동3에 대한 설명", workImageName: "그림3", workVideoLink: "운동3", videoTime: 50)

var alarmPeriod = 1
var a = 1
var b = 1

var alarmPeriod1 = 10
