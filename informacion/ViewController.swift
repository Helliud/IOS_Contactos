//
//  ViewController.swift
//  informacion
//
//  Created by Alumno on 10/1/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tvContactos: UITableView!
    var contactos : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactos.append(Contacto(nombre: "Jose Alberto", telefono: "(644) 455 645", direcion: "Enrique Segoviano", correo: "aaaaa@gmail.com", foto: "1"))
        
        contactos.append(Contacto(nombre: "Roberto Hoto", telefono: "(644) 434 125", direcion: "Enrique Segoviano", correo: "aaaaa@gmail.com", foto: "2"))
        
        contactos.append(Contacto(nombre: "Francisco Echeverria", telefono: "(644) 555 665", direcion: "Enrique Segoviano", correo: "aaaaa@gmail.com", foto: "3"))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        
        celda?.imgContacto.image = UIImage(named: contactos[indexPath.row].foto!)
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        celda?.lblTelefono.text = contactos[indexPath.row].telefono
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar"{
            let destino = segue.destination as? editarContactoController
            destino?.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
        }
    }
}

