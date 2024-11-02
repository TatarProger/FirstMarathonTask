//
//  ViewController.swift
//  FirstMarathonTask
//
//  Created by Rishat Zakirov on 02.11.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let num = 100
    
    let squareView: UIView  = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        let red = UIColor(red: 233/255, green: 76/255, blue: 61/255, alpha: 1)
        let blue = UIColor(red: 108/255, green: 145/255, blue: 184/255, alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [blue.cgColor, red.cgColor]
        gradient.startPoint = .init(x: 0, y: 0.35)
        gradient.cornerRadius = 10
        gradient.shadowOpacity = 0.3
        gradient.shadowRadius = 6
        gradient.shadowOffset = CGSize(width: 1, height: 10)
        view.layer.insertSublayer(gradient, at: 0)



        return view
    }()
    let labelView: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.backgroundColor = .red
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraitns()
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        setupViews()
//        setupConstraitns()
//    }


}

//MARK: Layuot
extension ViewController {
    func setupViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(squareView)
    }
    func setupConstraitns() {
        squareView.snp.makeConstraints { make in
            //make.width.equalTo(100)
            make.height.equalTo(80)
            make.centerY.equalTo(view.safeAreaLayoutGuide)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(100)
        }
    }
}

#Preview {
    let vc = ViewController()
    return vc
}
