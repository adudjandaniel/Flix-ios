//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Daniel Adu-Djan on 2/12/20.
//  Copyright © 2020 Luzcode. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie : [String:Any]!
    
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // movie title
        titleLabel.text = movie["title"] as? String
        
        // synopsis label
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        // base url
        let baseUrl = "https://image.tmdb.org/t/p/w"
        
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + "185" + posterPath)
        
        posterImageView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + "780" + backdropPath)
        
        backdropImageView.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
