data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter_name
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere_compute_cluster_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.vsphere_network_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vsphere_virtual_machine_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}