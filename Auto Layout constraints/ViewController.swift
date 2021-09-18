//
//  ViewController.swift
//  Auto Layout constraints
//
//  Created by Sandip Das on 18/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    private let secondView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .red
        return myView
    }()

    private let thirdView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .yellow
        return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(myView)
        myView.addSubview(secondView)
        myView.addSubview(thirdView)
        addConstraints()
    }
    
    private func addConstraints(){
        var constraint = [NSLayoutConstraint]()
        
        //add
        constraint.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraint.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraint.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraint.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        
        
        constraint.append(secondView.leadingAnchor.constraint(
                            equalTo: myView.safeAreaLayoutGuide.leadingAnchor,constant:120))
        constraint.append(secondView.trailingAnchor.constraint(
                            equalTo: myView.safeAreaLayoutGuide.trailingAnchor,constant:-120))
        constraint.append(secondView.topAnchor.constraint(
                            equalTo: myView.safeAreaLayoutGuide.topAnchor,constant: 120))
        constraint.append(secondView.bottomAnchor.constraint(
                            equalTo: myView.safeAreaLayoutGuide.bottomAnchor,constant: -120))
        
        
        constraint.append(thirdView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 0.5))
        constraint.append(thirdView.heightAnchor.constraint(equalTo: secondView.heightAnchor, multiplier: 0.25))
        constraint.append(thirdView.centerXAnchor.constraint(equalTo: secondView.centerXAnchor))
        constraint.append(thirdView.centerYAnchor.constraint(equalTo: secondView.centerYAnchor))
        
        
        //activate
        NSLayoutConstraint.activate(constraint)
        
    }

}

