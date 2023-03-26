//
//  PaymentLinkConfirmationView.swift
//  ios weather app
//
//  Created by Koinworks_MBP on 25/03/23.
//

import Foundation
import UIKit

class PaymentLinkConfirmationView: UIView {
    private var myFirstView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var mySecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var myThirdView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    /*================= Payment Link View ==================*/
    
    private var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.showsVerticalScrollIndicator = true
        return view
    }()
    
    private var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var voucherView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.systemBlue.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 12
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var voucherStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.backgroundColor = .blue
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var voucherLbl1: UILabel = {
        let lbl = UILabel()
        lbl.text = "Image 1"
        lbl.textColor = .darkText
        lbl.backgroundColor = .systemPink
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var voucherBaseLabelStackView: UIStackView = {
        var view = UIStackView()
        view.axis = .vertical
        view.alignment = .fill
        view.distribution = .fill
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var voucherLbl2: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lebih hemat pakai promo"
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lbl.textColor = .darkText
        lbl.backgroundColor = .systemCyan
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var voucherLbl3: UILabel = {
        let lbl = UILabel()
        lbl.text = "Deskripsi label"
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lbl.textColor = .darkText
        lbl.backgroundColor = .systemCyan
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var voucherLbl4: UILabel = {
        let lbl = UILabel()
        lbl.text = "Image 2"
        lbl.textColor = .darkText
        lbl.backgroundColor = .systemPink
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private func setupPaymentLinkView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(scrollView)
        
        scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        scrollView.addSubview(contentView)
        contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        
        addSubview(bottomView)
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 200),
        ])
        
        bottomView.addSubview(voucherView)
        NSLayoutConstraint.activate([
            voucherView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 16),
            voucherView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 16),
            voucherView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -16),
            voucherView.heightAnchor.constraint(equalToConstant: 54)
        ])
        
        voucherView.addSubview(voucherStackView)
        NSLayoutConstraint.activate([
            voucherStackView.topAnchor.constraint(equalTo: voucherView.topAnchor),
            voucherStackView.bottomAnchor.constraint(equalTo: voucherView.bottomAnchor),
            voucherStackView.leadingAnchor.constraint(equalTo: voucherView.leadingAnchor),
            voucherStackView.trailingAnchor.constraint(equalTo: voucherView.trailingAnchor),
        ])
        
        voucherStackView.addArrangedSubview(voucherLbl1)
        NSLayoutConstraint.activate([
            voucherLbl1.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        voucherStackView.addArrangedSubview(voucherBaseLabelStackView)

        voucherStackView.addArrangedSubview(voucherLbl4)
        NSLayoutConstraint.activate([
            voucherLbl4.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        voucherBaseLabelStackView.addArrangedSubview(voucherLbl2)
        voucherBaseLabelStackView.addArrangedSubview(voucherLbl3)
    }


    private func setupViews() {
        addSubview(myFirstView)
        NSLayoutConstraint.activate([
            myFirstView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            myFirstView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            myFirstView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            myFirstView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        addSubview(mySecondView)
        NSLayoutConstraint.activate([
            mySecondView.topAnchor.constraint(equalTo: myFirstView.bottomAnchor, constant: 16),
            mySecondView.leadingAnchor.constraint(equalTo: myFirstView.leadingAnchor),
            mySecondView.heightAnchor.constraint(equalToConstant: 100),
            mySecondView.widthAnchor.constraint(equalToConstant: 100),
        ])
        
        addSubview(myThirdView)
        NSLayoutConstraint.activate([
            myThirdView.topAnchor.constraint(equalTo: myFirstView.bottomAnchor, constant: 16),
            myThirdView.trailingAnchor.constraint(equalTo: myFirstView.trailingAnchor),
            myThirdView.heightAnchor.constraint(equalToConstant: 100),
            myThirdView.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    

}
