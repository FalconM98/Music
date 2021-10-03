//
//  BlackSViewController.swift
//  Music
//
//  Created by Miguel Eduardo Garcia on 4/28/19.
//  Copyright © 2019 Miguel Eduardo Garcia. All rights reserved.
//

import UIKit

class BlackSViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private let letra = ["N.I.B","Paranoid","Iron Man"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return letra.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return letra[row]
    }
    
    @IBAction func seleccionar(_ sender: UIButton) {
        let row = myPicker.selectedRow(inComponent: 0)
        switch row {
        case 0:
            performSegue(withIdentifier: "cancion1", sender: self)
        case 1:
            performSegue(withIdentifier: "cancion2", sender: self)
        case 2:
            performSegue(withIdentifier: "cancion3", sender: self)
        default:
            let titulo = "Seleccion es Invalida"
            let alert = UIAlertController(title: titulo, message: "Haga Otra Seleccion!!!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    

}
