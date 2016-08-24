# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "Redhat10!"
  vsphere_server = "10.44.120.6"
 # user = "root"
 # password = "redhat10"
 # vsphere_server = "10.44.120.60"
  allow_unverified_ssl  = true
}

# Create a virtual machine within the folder
resource "vsphere_virtual_machine" "prodapp1" {
  name   = "prodapp1"
  vcpu   = 2
  memory = 4096

  network_interface {
    label = "App-pg"
  }

  disk {
    size = "1"
        datastore = "Datastore"
  }
}
