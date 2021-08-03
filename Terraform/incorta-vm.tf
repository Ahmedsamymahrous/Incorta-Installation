resource "google_compute_instance" "incorta" {
  name         = var.vm_name
  machine_type = var.vm_type
  metadata = {
    ssh-keys = "incorta:${file("../key.pub")}"
  }

  boot_disk {
    initialize_params {
      image = "centos-7-v20210420"
      size  = var.vm_size
      type  = "pd-ssd"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}


# resource "local_file" "ip" {
  # content  = google_compute_instance.incorta.network_interface[0].network_ip  #private ip
#   content  = google_compute_instance.incorta.network_interface[0].access_config[0].nat_ip   #public ip

#   filename = "vm_ip.txt"
# }


