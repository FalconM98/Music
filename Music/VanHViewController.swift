//
//  VanHViewController.swift
//  Music
//
//  Created by Miguel Eduardo Garcia on 4/28/19.
//  Copyright © 2019 Miguel Eduardo Garcia. All rights reserved.
//

import UIKit

class VanHViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    private var canciones = ["Beautiful Girls","Take Your Whiskey Home"
    ,"Little Dreamer","Unchained","You Really Got Me"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return canciones.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return canciones[row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func seleccionar(_ sender: Any) {
        let row = myPicker.selectedRow(inComponent: 0)
        switch row {
        case 0:
            performSegue(withIdentifier: "cancion1", sender: self)
        case 1:
            performSegue(withIdentifier: "cancion2", sender: self)
        case 2:
            performSegue(withIdentifier: "cancion3", sender: self)
        case 3:
            performSegue(withIdentifier: "cancion4", sender: self)
        case 4:
            performSegue(withIdentifier: "cancion5", sender: self)
        default:
            let titulo = "Seleccion Invalida"
            let alert = UIAlertController(title: titulo, message: "Haga otra Seleccion", preferredStyle: .alert)
            let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
    }
    
    

   
}
