//
//  crearContactoController.swift
//  informacion
//
//  Created by Alumno on 10/4/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class crearContactoController : UIViewController{
    var contacto : Contacto?
    var callBackAgregarTabla : (() -> Void)?

    
    @IBOutlet weak var txtNuevoNombre: UITextField!
    @IBOutlet weak var txtNuevoTelefono: UITextField!
    
    override func viewDidLoad() {
        
        
        
    }
    
    @IBAction func btnGuardarNuevo(_ sender: Any) {
        contacto?.nombre = txtNuevoNombre.text
        contacto?.telefono = txtNuevoTelefono.text
        
       callBackAgregarTabla!()
        
    self.navigationController?.popViewController(animated: true)
    }
    
}
