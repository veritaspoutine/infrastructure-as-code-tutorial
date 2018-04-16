resource "google_compute_instance" "raddit" {
 name		= "raddit-instance"
 machine_type 	= "n1-standard-1"
 zone		= "asia-east1-b"

 # boot disk specifications
boot_disk { 
  initialize_params {
	image = "raddit-base" //use image built with packer
	}
}
  # networks to attach to the VM
  network_interface {
    network = "default"
    access_config {} // use ephemaral public IP
  }
}
