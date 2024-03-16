import UIKit

class VC: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var btnUserForgot: UIButton!
    @IBOutlet weak var btnPassForgot: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == btnUserForgot {
            segue.destination.navigationItem.title = "Olvidé Usuario"
        } else if sender == btnPassForgot {
            segue.destination.navigationItem.title = "Olvidé Contraseña"
        } else {
            segue.destination.navigationItem.title = txtUser.text
        }
    }
    
    @IBAction func btnUserForgotTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "OlvidadoUsuarioOContraseña", sender: sender)
    }
    
    @IBAction func btnPassForgotTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "OlvidadoUsuarioOContraseña", sender: sender)
    }
    
}
