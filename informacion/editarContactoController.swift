//
//  editarContactoController.swift
//  informacion
//
//  Created by Alumno on 10/1/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class editarContactoController : UIViewController{
    var contacto : Contacto?
    var callBackActualizarTabla : (() -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
        txtTelefono.text = contacto!.telefono
        txtNombre.text = contacto!.nombre
    }
    
    //OJO, EL BOTON ES UN ACTION
    @IBAction func doTapGuardar(_ sender: Any) {
        contacto?.nombre = txtNombre.text
        contacto?.telefono = txtTelefono.text
        
        callBackActualizarTabla!()
    }
    
}
