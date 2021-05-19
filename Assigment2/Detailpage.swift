//
//  Detailpage.swift
//  Assigment2
//
//  Created by 黃曉柔 on 2021/5/11.
//

import UIKit

class Detailpage: UIViewController {

    @IBOutlet weak var photoimage: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var shortname: UILabel!
    @IBOutlet weak var locationlabel: UILabel!
    @IBOutlet weak var itatlabel: UILabel!
    
    var airport: Airport?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoimage.image = UIImage(named: (airport?.imageName)!)
        namelabel.text = airport?.name
        locationlabel.text = airport?.servedCity
        itatlabel.text = airport?.IATA
        shortname.text = airport?.shortName
        navigationItem.title = airport?.IATA
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
