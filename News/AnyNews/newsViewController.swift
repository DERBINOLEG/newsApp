//
//  newsViewController.swift
//  News
//
//  Created by Олег Дербин on 09.08.2024.
//

import UIKit
import SnapKit

class newsViewController: UIViewController {
    
    //MARK: - GUI Variables
    
    private lazy var scrollView = UIScrollView()
    
    private lazy var contentView = UIView()
    
    private lazy var labelNews: UILabel = {
        let label = UILabel()
        
        label.text = "Label of news"
        label.font = .boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        
        view.image = UIImage(named: "Image")
        
        return view
    }()
    
    private lazy var discription: UILabel = {
        let label = UILabel()
        
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .systemFont(ofSize: 16)
        label.textColor = .darkGray
        label.text = """
        IT-эксперт Павел Мясоедов рассказал о причинах сбоев в работе YouTube.aobe.ru
        YouTube работает нестабильно: видео долго загружаются, бывают подтормаживания, а иногда
        доступ к сайту пропадает.Сиб.фм
        Провайдеры связи могут ограничивать скорость передачи данных, что похоже на управление
        интернет-трафиком в домашних условиях.Astera
        Пользователи утверждали, что перестали загружаться главная страница видеохостинга и
        мобильное приложение.News.ru
        """
        return label
        
    }()
    
    private lazy var labelDate: UILabel = {
        let label = UILabel()
        
        label.text = "10.08.2024"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 14)
        label.textColor = .darkGray
        
        return label
    }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News"
        
        setupUI()
    }
    
    //    MARK: - Private Methods
    
    private func setupUI() {
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imageView)
        contentView.addSubview(discription)
        contentView.addSubview(labelDate)
        contentView.addSubview(labelNews)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        scrollView.showsVerticalScrollIndicator = false
        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
            
        }
        
        imageView.snp.makeConstraints { make in
            let height = view.frame.width
            make.top.trailing.leading.equalToSuperview()
            make.height.equalTo(height)
            
        }
        
        labelDate.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(10)
        }
        
        labelNews.snp.makeConstraints { make in
            make.top.equalTo(labelDate).offset(10)
            make.trailing.leading.equalToSuperview().inset(10)
        }
        
        discription.snp.makeConstraints { make in
            make.top.equalTo(labelNews.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(100)
            
        }
        
        
    }
    
}

