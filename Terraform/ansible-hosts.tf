resource "local_file" "Ansible-Inventory" {
 content = templatefile("hosts.tmpl", { vm_ip = google_compute_instance.incorta.network_interface[0].access_config[0].nat_ip })
 filename = "../Ansible/hosts"
}