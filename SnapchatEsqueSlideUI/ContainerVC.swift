

import Foundation
import UIKit




class ContainerVC: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let AVc :AViewController =  AViewController(nibName: "AViewController", bundle: nil);
        let BVc :BViewController =  BViewController(nibName: "BViewController", bundle: nil);
        let CVc :CViewController =  CViewController(nibName: "CViewController", bundle: nil);
        let DVc :DViewController =  DViewController(nibName: "DViewController", bundle: nil);

        
        
        
        self.addChildViewController(BVc);
        self.scrollView!.addSubview(BVc.view);
        BVc.didMove(toParentViewController: self);
        
        self.addChildViewController(AVc);
        self.scrollView!.addSubview(AVc.view);
        AVc.didMove(toParentViewController: self);
        
        self.addChildViewController(CVc);
        self.scrollView!.addSubview(CVc.view);
        CVc.didMove(toParentViewController: self);
        
        self.addChildViewController(DVc);
        self.scrollView!.addSubview(DVc.view);
        DVc.didMove(toParentViewController: self);
        
        
        
        var adminFrame :CGRect = AVc.view.frame;
        adminFrame.origin.x = adminFrame.width;
        BVc.view.frame = adminFrame;
        
        var BFrame :CGRect = BVc.view.frame;
        BFrame.origin.x = 2*BFrame.width;
        CVc.view.frame = BFrame;
        var CFrame :CGRect = CVc.view.frame;
        CFrame.origin.x = 3*CFrame.width;
        DVc.view.frame = CFrame;
        
        let scrollWidth: CGFloat  = 4 * self.view.frame.width
        let scrollHeight: CGFloat  = self.view.frame.size.height
        self.scrollView!.contentSize = CGSize(width: scrollWidth, height: scrollHeight);
        self.scrollView!.contentOffset.x = UIScreen.main.bounds.width
    }
    

    
}
