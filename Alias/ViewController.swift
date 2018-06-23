//
//  ViewController.swift
//  Alias
//
//  Created by David Asham on 6/8/18.
//  Copyright © 2018 David Asham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Name: UITextView!
    @IBOutlet weak var endName: UITextView!
    @IBOutlet weak var Number: UITextView!
    @IBOutlet weak var Birthday: UITextView!
    @IBOutlet weak var Age: UITextView!
    @IBOutlet weak var Address: UITextView!
    @IBOutlet weak var favoriteColorUI: UITextView!
    @IBOutlet weak var Job: UITextView!
    @IBOutlet weak var Company: UITextView!
    @IBOutlet weak var Height: UITextView!
    @IBOutlet weak var Weight: UITextView!
    @IBOutlet weak var BloodType: UITextView!
    
    
    
    
    var name: String?
    var fullName: String?
    var number: String?
    var birthday: String?
    var age: String?
    var address: String?
    var favColor: String?
    var job: String?
    var employer: String?
    var height: String?
    var weight: String?
    var bloodType: String?
    
    var firstNames: [Int: String] = [1: "James", 2: "John", 3: "Robert", 4: "Micheal", 5: "William", 6: "David", 7: "Richard", 8: "Joseph", 9: "Thomas", 10: "Charles", 11: "Christopher", 12: "Daniel", 13: "Matthew", 14: "Anthony", 15: "Donald", 16: "Mark", 17: "Paul", 18: "Steven", 19: "Andrew", 20: "Kenneth", 21: "George", 22: "Joshua", 23: "Kevin", 24: "Brian", 25: "Edward", 26: "Ronald", 27: "Timothy", 28: "Jason", 29: "Jeffrey", 30: "Ryan", 31: "Jacob", 32: "Gary", 33: "Nicholas", 34: "Eric", 35: "Stephen", 36: "Jonathan", 37: "Larry", 38: "Justin", 39: "Scott", 40: "Brandon", 41: "Frank", 42: "Benjamin", 43: "Gregory", 44: "Raymond", 45: "Samuel", 46: "Patrick", 47: "Alexander", 48: "Jack", 49: "Dennis", 0: "Jerry"]
   
    var middleNames: [Int: String] = [0: "A.", 1: "B.", 2: "C.", 3: "D.", 4: "E.", 5: "F.", 6: "G.", 7: "H.", 8: "I.", 9: "J.", 10: "K.", 11: "L.", 12: "M.", 13: "N.", 14: "O.", 15: "P.", 16: "Q.", 17: "R.", 18: "S.", 19: "T.", 20: "U.", 21: "V.", 22: "W.", 23: "X.", 24: "Y.", 25: "Z."]
    
    var lastNames: [Int: String] = [1: "Smith", 2: "Johnson", 3: "Williams", 4: "Jones", 5: "Brown", 6: "Davis", 7: "Miller", 8: "Wilson", 9: "Moore", 10: "Taylor",11: "Anderson", 12: "Thomas", 13: "Jackson", 14: "White", 15: "Harris", 16: "Martin", 17: "Thompson", 18: "Garcia", 19: "Martinez", 20: "Robinson", 21: "Clark", 22: "Rodriguez", 23: "Lewis", 24: "Lee", 25: "Walker", 26: "Hall", 27: "Allen", 28: "Young", 29: "Hernandez",  30: "King",  31: "Wright", 32: "Lopez", 33: "Hill",  34: "Scott", 35: "Green", 36: "Adams", 37: "Baker", 38: "Gonzalez", 39: "Nelson", 40: "Carter", 41: "Mitchell", 42: "Perez", 43: "Roberts", 44: "Turner", 45: "Phillips", 46: "Campbell", 47: "Parker", 48: "Evans", 49: "Edwards", 0: "Collins"]
   
    var areaCode: [Int: Int] = [1: 205, 2: 907, 3: 480, 4: 479, 5: 209, 6: 203, 7: 302, 8: 239, 9: 229, 10: 808, 11: 208, 12: 217, 13: 219, 14: 319, 15: 316, 16: 370, 17: 225, 18: 207, 19: 240, 20: 339, 21: 231, 22: 228, 23: 314, 24: 406, 25: 308, 26: 702, 27: 603, 28: 201, 29: 505, 30: 212, 31: 252, 32: 701, 33: 216, 34: 405, 35: 458, 36: 215, 37: 787, 38: 401, 39: 803, 40: 605, 41: 423, 42: 469, 43: 972, 44: 385, 45: 802, 46: 340, 47: 276, 48: 206, 49: 304, 50: 262, 51: 307, 0: 671]
   
    var numbersThird: [Int: Int] = [0: 8388, 1: 3858, 2: 2958, 3:3958, 4:9365, 5: 0673, 6: 4589, 7:0184, 8: 6830, 9: 9209, 10: 1474, 11: 6459, 12: 9796, 13:2343, 14:7496, 15: 0908, 16: 7849, 17:7956, 18: 1547, 19: 3535, 20: 7894, 21: 2345, 22: 2356, 23:7896, 24:8763, 25: 4578, 26: 1245, 27:9247, 28: 2457, 29: 4953, 30: 5943]
    
    var months: [Int: String] = [1: "Jan.", 2: "Feb.", 3: "Mar.", 4: "Apr.", 5: "May.", 6: "Jun.", 7: "Jul.", 8: "Aug.", 9: "Sep.", 10: "Oct.", 11: "Nov.", 0: "Dec."]
    
    var days: [Int: Int] = [1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, 10: 10, 11: 11, 12: 12, 13: 13, 14: 14, 15: 15, 16: 16, 17: 17, 18: 18, 19: 19, 20: 20, 21: 21, 22: 22, 23: 23, 24: 24, 25: 25, 26: 26, 27: 27, 28: 28, 29: 29, 30: 30, 0: 31]
    
    var years: [Int: Int] = [1: 2003, 0: 2002, 2: 2004, 3: 2005, 4: 1943, 5: 1944, 6: 1945, 7: 1946, 8: 1947, 9: 1948, 10: 1949, 11: 1950, 12: 1951, 13: 1952, 14: 1953, 15: 1954, 16: 1955, 17: 1956, 18: 1957, 19: 1958, 20: 1959, 21: 1960, 22: 1961, 23: 1962, 24: 1963, 25: 1964, 26: 1965, 27: 1966, 28: 1967, 29: 1968, 30: 1969, 31: 1970, 32: 1971, 33: 1972, 34: 1973, 35: 1974, 36: 1975, 37: 1976, 38: 1977, 39: 1978, 40: 1979, 41: 1980, 42: 1981, 43: 1982, 44: 1983, 45: 1984, 46: 1985, 47: 1986, 48: 1987, 49: 1988, 50: 1989, 51: 1990, 52: 1991, 53: 1992, 54: 1993, 55: 1994, 56: 1995, 57: 1996, 58: 1997, 59: 1998, 60: 1999, 61: 2000, 62: 2001]
    
    var ages: [Int: Int] = [1: 1]
    
    var streets: [Int: String] = [1: "Andover", 0: "Hatherly", 2: "Main", 3: "Elm", 4: "Park", 5: "Chestnut", 6: "Maple", 7: "Oak", 8: "Oak", 9: "Pine", 10: "Market", 11: "Cherry", 12: "Cedar", 13: "Meadow", 14: "Ridge", 15: "Church"]
    
    var streetSufx: [Int: String] = [1: "Dr.", 2: "Av.", 3: "Bv.", 4: "Ln.", 5: "Ps.", 6: "Rd.", 7: "St.", 0: "Tr."]
    
    var states: [Int: String] = [205: "Birmingham, AL 35005", 907: "Anchorage, AK 99501", 480: "Phoenix, AZ 85001", 479: "Little Rock, AR 72002", 209: "Los Angeles, CA 90001", 307: "Denver, CO 80014", 203: "Bridgeport, CT 06601", 302: "Wilmington, DE 28401", 239: "Jacksonville, FL 32034", 229: "Atlanta, GA 30301", 808: "Honolulu, HI 96795", 208: "Boise City, ID 83701", 217: "Chicago, IL 60007", 219: "Indianapolis, IN 46077", 319: "Des Moines, IA 50047", 316: "Wichita, KS 67052", 270: "Louisville, KY 40018", 225: "New Orleans, LA 70032", 207: "Portland, ME 97035", 240: "Baltimore, MD 21201", 339: "Boston, MA 02101", 231: "Detroit, MI 48127", 218: "Minneapolis, MN 55111", 228: "Jackson, MS 39056", 314: "Kansas City, MO 64030", 406: "Billings, MT 59101", 308: "Omaha, NE 68007", 702: "Las Vegas, NV 88901", 603: "Manchester, NH 03101", 201: "Newark, NJ 07101", 505: "Albuquerque, NM 87101", 212: "New York, NY 10001", 252: "Charlotte, NC 28105", 701: "Fargo, ND 58102", 216: "Columbus, OH 43004", 405: "Oklahoma City, OK 73008", 458: "Portland, OR 97035", 215: "Philadelphia, PA 19019", 787: "San Juan, PR 00901", 401: "Providence, RI 02860", 803: "Columbia, SC 29044", 605: "Sioux Falls, SD 57101", 423: "Memphis, TN 37501", 469: "Houston, TX 77001", 972: "Dallas, TX 75001", 385: "Salt Lake City, UT 84044", 802: "Burlington, VT 05401", 340: "St Croix ,VI 00840", 276: "Virginia Beach, VA 23450", 206: "Seattle, WA 98101", 304: "Charleston, WV 29401", 262: "Milwaukee, WI 53201",  370: "Cheyenne, WY 82001", 671: "Dededo Village, GU 96913"]
    
    var colors: [Int: String] = [0: "Blue", 1: "Red", 2: "Green", 3: "Orange", 4: "Brown", 5: "Purple", 6: "Yellow", 7: "Pink", 8: "Purple", 9: "Black", 10: "White", 11: "Grey"]
    
    var jobs: [Int: String] = [1: "Janitor", 2: "Secretary", 3: "Nutritionist", 4: "Nurse", 5: "Office Clerk", 6: "Accountant", 7: "Salesperson", 8: "Software Developer", 9: "Dentist", 10: "Vet", 11: "Lawyer", 12: "IT Manager", 13: "Teacher", 14: "Paralegal", 0: "Writer"]
    
    var companies: [Int: String] = [1: "United Airlines", 2: "Facebook", 3: "Comcast", 4: "Uber", 5: "Wells Fargo", 6: "Cigna", 0: "Sprint", 7: "Stream", 8: "AT&T", 9: "FBI", 10: "CIA", 11: "NSA", 12: "NCIS"]
    
    var feet: [Int: Int] = [1: 5, 2: 6, 0: 4]
    
    var inchs: [Int: Int] = [1: 0, 2: 1, 3: 2, 4: 3, 5: 4, 6: 5, 7: 6, 8: 7, 9: 8, 10: 9, 11: 10, 0: 11]
    
    var weights: [Int: Int] = [0:100, 1:105, 2:110, 3:115, 4:120, 5:125, 6:130, 7:135, 8:140, 9:145, 10:150, 11:155, 12:160, 13:165, 14:170, 15:175, 16:180, 17:185, 18:190, 19:195, 20:200]
    var bloodTypes: [Int: String] = [1: "O-", 2: "O+", 3: "A-", 4: "A+", 5: "B-", 6: "B+", 7: "AB-", 0: "AB+"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Name.text = ""
//        fullNameUI.text = "Before"
//        print(fullNameUI.text)
//        fullNameUI.text = ""
//        print(fullNameUI.text)
//        fullNameUI.text = "After"
//        print(fullNameUI.text)
        endName.text = ""
        Number.text = ""
        Birthday.text = ""
        Age.text = ""
        Address.text = ""
        favoriteColorUI.text = ""
        Job.text = ""
        Company.text = ""
        Height.text = ""
        Weight.text = ""
        BloodType.text = ""
//        for key in states.keys {
//            print("Key: \(key)")
//        }
//        
//        for val in areaCode.values {
//            print("Value: \(val)")
//        }


    }
    
    @IBAction func generateButton(_ sender: UIButton) {
        print("Button Pressed")
        func generatePerson() {
//            print(areaCode.count)
//            print(states.count)
            
            // Name
            let fName = Int(arc4random_uniform(UInt32(firstNames.count)))
            let firstN = firstNames[fName]
            let mName = Int(arc4random_uniform(UInt32(middleNames.count)))
            let middleN = middleNames[mName]
            let lName = Int(arc4random_uniform(UInt32(lastNames.count)))
            let lastN = lastNames[lName]
            name = "\(firstN!)"
            fullName = "\(middleN!) \(lastN!)"
            //fullNameVar = "Test"
            print("Full Name = \(fullName!)")
            print(name!)
            
            // Number
            let fNumber = Int(arc4random_uniform(UInt32(areaCode.count)))
            let firstNu = areaCode[fNumber]
            let sNumber = Int(arc4random_uniform(UInt32(areaCode.count)))
            let secondN = areaCode[sNumber]
            let tNumber = Int(arc4random_uniform(UInt32(numbersThird.count)))
            let thirdNumber = numbersThird[tNumber]
            number = "\(firstNu!)-\(secondN!)-\(thirdNumber!)"
            // print(number!)
            
            // Birthday
            let m = Int(arc4random_uniform(UInt32(months.count)))
            let month = months[m]
            //var m = 2
            //let month = months[m]
            
            var d = Int(arc4random_uniform(UInt32(days.count)))
            var day = days[d]
            if m == 2 && d >= 29 {
//                var d = Int(arc4random_uniform(28))
//                var day = days[d]
                d = day! - 28
                day = days[d]
            }
//            if day! >= 29 {
//                d = day! - 28
//                day = days[d]
//            }
            let y = Int(arc4random_uniform(UInt32(years.count)))
            let year = years[y]
            birthday = "\(month!) \(day!), \(year!)"
            // print(birthday!)
            
            // Age
            let a = 2018 - year!
            age = "\(a) yrs"
            // print(age!)
            
            // Address
            let sName = Int(arc4random_uniform(UInt32(streets.count)))
            let streetN = streets[sName]
            let sSuf = Int(arc4random_uniform(UInt32(streetSufx.count)))
            let streetS = streetSufx[sSuf]
            let cityS = states[firstNu!]
//            let zipC = Int(arc4random_uniform(UInt32(zipcodes.count)))
//            let zCode = zipcodes[zipC]
            // if needed,  put \(zCode!) behind cityS!
            
            address = "\(thirdNumber!) \(streetN!) \(streetS!) \(cityS!) "
            // print(address!)
            
            // Color
            let colorN = Int(arc4random_uniform(UInt32(colors.count)))
            let colorName = colors[colorN]
            favColor = colorName
            
            // Job
            let jobName = Int(arc4random_uniform(UInt32(jobs.count)))
            let jobtitle = jobs[jobName]
            job = jobtitle
            //print(job!)
            
            // Employer
            let compName = Int(arc4random_uniform(UInt32(companies.count)))
            let cName = companies[compName]
            employer = cName!
            // print(employer!)
            
            // Height
            let footN = Int(arc4random_uniform(UInt32(feet.count)))
            let footHeight = feet[footN]
            let inchN = Int(arc4random_uniform(UInt32(inchs.count)))
            let inchHeight = inchs[inchN]
            height = "\(footHeight!)' \(inchHeight!)'' ft."
            // print(height!)
            
            // Weight
            let weightR = Int(arc4random_uniform(UInt32(weights.count)))
            let w = weights[weightR]
            weight = "\(w!) lbs"
            
            // Blood Type
            let BloodT = Int(arc4random_uniform(UInt32(bloodTypes.count)))
            let bType = bloodTypes[BloodT]
            bloodType = bType!
            //print(bloodType!)
        }
        func updateMainUI() {
            //name = "Christopher"
            Name.text = name!
            //fullNameUI.text = fullName
            endName.text = fullName!
            Number.text = number!
            Birthday.text = birthday!
            Age.text = "\(age!)"
            Address.text = address!
            favoriteColorUI.text = favColor!
            Job.text = job!
            Company.text = employer!
            Height.text = height!
            Weight.text = weight!
            BloodType.text = bloodType!
            print(Name.text,fullName!, Number.text,Birthday.text, Age.text, Address.text, Job.text, Company.text, Height.text,Weight.text, BloodType.text)
            //print(fullNameUI.text,)
        }
        generatePerson()
        updateMainUI()
        //fullNameUI.text = fullName
    }
    
    
    
    


}

