//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Garugu,Sai Shanmukh on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crnNo: UILabel!
    
    @IBOutlet weak var courseTitle: UILabel!
    
    @IBOutlet weak var semOffered: UILabel!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "12345", "IOS", "Spring"],
                   ["img02", "12346", "Java", "Fall"],
                   ["img03", "12347", "Machine Learning", "Summer"]]
    
    var courseNo = 0
    
    func updateUI(courseNo: Int){
        displayImage.image = UIImage(named: courses[courseNo][0])
        crnNo.text = courses[courseNo][1]
        courseTitle.text = courses[courseNo][2]
        semOffered.text = courses[courseNo][3]

        if courseNo == 0 {
            prevButton.isEnabled = false
        }
        
        else if courseNo == courses.count-1 {
            nextButton.isEnabled = false
        }
        
        else {
            prevButton.isEnabled = true
            nextButton.isEnabled = true
        }
        
    }
    
    @IBAction func prevButtonClick(_ sender: Any) {
        courseNo -= 1
        updateUI(courseNo: courseNo)
        
    }
    
    @IBAction func nextButtonClick(_ sender: Any) {
        courseNo += 1
        updateUI(courseNo: courseNo)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 0th position elements are diaplayed
        updateUI(courseNo: courseNo)
    }


}

