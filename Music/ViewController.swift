//
//  ViewController.swift
//  Music
//
//  Created by Miguel Eduardo Garcia on 4/25/19.
//  Copyright © 2019 Miguel Eduardo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var artistPicker: UIPickerView!
    
    private let artistas = ["AC DC","Metallica","Black Sabbath","Van halen"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return artistas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return artistas[row]
    }
    
    @IBAction func seleccionar(_ sender: UIButton) {
        let row = artistPicker.selectedRow(inComponent: 0)
        switch row {
        case 0:
            performSegue(withIdentifier: "view1", sender: self)
        case 1:
            performSegue(withIdentifier: "view2", sender: self)
        case 2:
            performSegue(withIdentifier: "view3", sender: self)
        case 3:
            performSegue(withIdentifier: "view4", sender: self)
        default:
            let titulo = "Seleccion es Invalida"
            let alert = UIAlertController(title: titulo, message: "Haga Otra Seleccion!!!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
      }
    }
    
    
    

}

