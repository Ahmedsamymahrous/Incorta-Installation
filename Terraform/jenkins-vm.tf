resource "google_compute_instance" "jenkins" {
  name         = "jenkins-samy-tf"
  machine_type = "n1-standard-2"
  tags         = ["port8080"]
  allow_stopping_for_update = true 
  
  metadata = {
    ssh-keys = "incorta:${file("../key.pub")}"
  }

  boot_disk {
    initialize_params {
      image = "centos-7-v20210420"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

