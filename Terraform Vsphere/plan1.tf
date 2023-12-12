resource "vsphere_virtual_machine" "vm1" {
  name             = var.vsphere_virtual_machine_vm1
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = "other5xLinux64Guest"
  scsi_type        = data.vsphere_virtual_machine.template.scsi_type
  firmware         = data.vsphere_virtual_machine.template.firmware
  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }
  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template.disks.0.size
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  }
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id  
    customize {
      linux_options {
        host_name = var.host_name_plan1
        domain    = ""
      }
      network_interface {
        ipv4_address = var.ipv4_address1
        ipv4_netmask = var.ipv4_netmask_cidr1
      }
      ipv4_gateway = var.ipv4_gateway1
      dns_server_list = [ var.dns1_plan1, var.dns2_plan1 ]
    }
  }
}