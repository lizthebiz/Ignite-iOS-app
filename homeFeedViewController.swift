//
//  homeFeedViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/11/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit
import AFNetworking

class homeFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var ownerImageViews: [String]!
    
    var ownerNameLabels: [String]!
    
    var projImageViews: [String]!
    
    var firstBadgeImageViews: [String]!
    
    var secondBadgeImageViews: [String]!
    
    var thirdBadgeImageViews: [String]!
    
    var projNameLabels: [String]!
    
    var projDescripLabels: [String]!
    
    var projStatusLabels: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
       ownerImageViews = ["https://lh4.googleusercontent.com/HVZE7wFc2_jcl1duO9RvM8SBlSdfg6cTZHe0rCASZI9oM6gdUjAHDfE_cHY5p-EhXLnxCEeYH6VfYuvXE4Q7M8WNuhH56mAbeB_WHWyJHCkaziFpavpLxmAhQ4o89n-t2SqV3DY", "https://lh4.googleusercontent.com/DGT9WURaTrS8mYpzVfB_DUEHIx1Ni96hxzLNY-HT5BrGEk7I0J_fwcweUd7-Wty4za1VD74XdSknSHniDDE4ZnN-1eMdNd-PTboVgT96KDKaClNv76U9hJovgvSu1bG-Zs79Ods", "https://lh3.googleusercontent.com/tfDSLK906rdtexmFtMkaYpQzf5UBWGpHYePRHZzJX14gmvWYgBe4YTdH1Ri5WAUpAkuHmUL5_o1BDlbrwnymlnC-63VCHXe89UYi4Ias9awVVlTtY8W9eihGvZ7brlBTtKT-EZU"]
        
        ownerNameLabels = ["Susie Arendt and 16 participants", "Silvia Menendez and 58 participants", "Nate Anderson and 36 participants"]
        
        projImageViews = ["https://lh4.googleusercontent.com/QhULqT_u_Jnjn3oXszHTr3itieh5A1rvohT4VCaMi5EQs4941T-bl3iM2A-hsxVnfs4A-yw70qnzXJJoenkndpxDU8K6NtJK7fgvmgKliPZ2Meoqp2vVOP5qYykiNcs6Uc-AQNlM", "https://lh3.googleusercontent.com/HTaEYLJNar8eVqDJ-nu_M3V8ioYsf1UVkEVvrI_Xi4xScbEGMqhH0q7pQFoQ8otaBI_BHWIveI9Eo-3-hKihJN3vVGGLaN63-r1s7aPiFcNwIcDqcT4wIt5IvIs59HFKPuoT9sA9", "https://lh3.googleusercontent.com/QSriv_RKJLMFsWDdGAHUOomvEUiqYwdqkUiOYVC4TqeFNdjAyev8kZMRVBFPIjkSPGoyh58duYOj3-uswBRD1fjZrB4yXPJRqaA2-PdvTsM_NGB6Rh-AL2FyECvrLg_R9J6L62st"]
        
        firstBadgeImageViews = ["https://lh3.googleusercontent.com/CGjcOsRUP4BTp28wJayc-VQgAFQvHx__UydnjXjTBVVvIOQtpUs0LLpvq7RG1NsM2oSvnoPra15IrzGVU2esAWB_lP0eJdZ6U5lL7Y1GsGDGlZErBhe0LSXNsEsB_CQ24jsKmCa3", "https://lh3.googleusercontent.com/Fu_rDZoa4v-tXCtR2Bgu5HqONjOmZxKhmnsA6iMQAqA3Gb8C5efLqJsGp4LeN8_UCBhx52PlRjsouoYnCEae70eogNS-lvLXltjn9SLXLbgAVUlnyD_cxMpScXaqMZGehn-3ZE6n", "https://lh3.googleusercontent.com/Fu_rDZoa4v-tXCtR2Bgu5HqONjOmZxKhmnsA6iMQAqA3Gb8C5efLqJsGp4LeN8_UCBhx52PlRjsouoYnCEae70eogNS-lvLXltjn9SLXLbgAVUlnyD_cxMpScXaqMZGehn-3ZE6n"]

        secondBadgeImageViews = ["https://lh3.googleusercontent.com/IioHXIpIKgg0k77dgicdWjT69hx84KYvjn21r_Ddq5jkQlDZybHPvVULwxSQvFkgv-8lXrtf3ls7cp1SjXMgNFDBbH_ovPI-iBm04-HLbyWjd4RpnsEAGEeuTjmGELXiXIG2gJ3-", "https://lh4.googleusercontent.com/QKar9L5UwRvMGsP4MsjqOykSCmf3YCzYzx9ic7VZvyYrLAKY4LyKdpR1lKhuQIrfo1dLI7x96JGDdRLmIU9BpQhGjneknJC_4SyR7lp_MBz8hkKM1cdcHEgeMrdqQ2RIEIrZewtJ", "https://lh3.googleusercontent.com/CGjcOsRUP4BTp28wJayc-VQgAFQvHx__UydnjXjTBVVvIOQtpUs0LLpvq7RG1NsM2oSvnoPra15IrzGVU2esAWB_lP0eJdZ6U5lL7Y1GsGDGlZErBhe0LSXNsEsB_CQ24jsKmCa3"]

        thirdBadgeImageViews = ["nil", "nil", "https://lh5.googleusercontent.com/ry78TAJDSh67ZZzcrVpM0ILvWSiwXEPTKexg__vBrW4bc8plvkcFFej_ubL7E83B85Xj2hwQnVqGDRA4ch-IAYWE07liwh72c9hN-h3Krswi334pnL1nqcISxbEx331l9jrHTR-y"]
        
        projNameLabels = ["Assist WWll veterans with departures and returns from SFO", "Walmart eCommerce Toastmasters club", "Help organize the 2016 Walmart PRIDE contingent at the SF Pride Parade!"]
        
        projDescripLabels = ["On June 11th-14th, Honor Flights Bay Area (HFBA) is looking for volunteers to help  provide transportation to allow World War II veterans to visit the national memorials dedicated to them. As a volunteer, you would assist Honor Flight participants with their departure from and return to SFO.", "The Walmart eCommerce chapter of Toastmasters meets every Wednesday from 12-1 in the San Bruno Cherry building, conference room C. Come and practice speaking in front of groups and build up your professional and personal confidence!", "Last year, the Walmart contingent at the biggest pride parade in the world consisted of 300 associates from across eCommerce and the stores. Help us make this year an even bigger success!"]
        
        projStatusLabels = ["Active", "Active", "Active"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projNameLabels.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("projectCardCell") as! projectCardCell
        
        // Configure YourCustomCell using the outlets that you've defined.)
        
        let url = NSURL(string: ownerImageViews[indexPath.row])!
        cell.ownerImageView.setImageWithURL(url)
        
        let ownerNameLabel = ownerNameLabels[indexPath.row]
        cell.ownerNameLabel.text = ownerNameLabel
        
        let projImgUrl = NSURL(string: projImageViews[indexPath.row])!
        cell.projImageView.setImageWithURL(projImgUrl)
        
        let firstBadgeUrl = NSURL(string: firstBadgeImageViews[indexPath.row])!
        cell.firstBadgeImageView.setImageWithURL(firstBadgeUrl)
        
        let secondBadgeUrl = NSURL(string: secondBadgeImageViews[indexPath.row])!
        cell.secondBadgeImageView.setImageWithURL(secondBadgeUrl)

        let thirdBadgeUrl = NSURL(string: thirdBadgeImageViews[indexPath.row])!
        cell.thirdBadgeImageView.setImageWithURL(thirdBadgeUrl)
        
        let projNameLabel = projNameLabels[indexPath.row]
        cell.projNameLabel.text = projNameLabel
        
        let projDescripLabel = projDescripLabels[indexPath.row]
        cell.projDescripLabel.text = projDescripLabel
        
        let projStatusLabel = projStatusLabels[indexPath.row]
        cell.projStatusLabel.text = projStatusLabel
        
        return cell
    }


}
