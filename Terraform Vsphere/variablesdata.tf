variable "vsphere_datacenter_name"{    
    description = "Name datacenter" #Nom du datacenter
    type = string
    default = "XXXX"
}

variable "vsphere_datastore_name"{    
    description = "Name datastore" #Nom du disque dur sur lequel stocker la machine virtuel
    type = string
    default = "XXXX"
}

variable "vsphere_compute_cluster_name" {
    description = "Name cluster" #Nom du cluster Vsphere
    type = string
    default = "XXXX"
  
}

variable "vsphere_network_name" {
    description = "Network name" #Nom du réseau de la machine virtuel
    type = string
    default = "XXXX"
  
}

variable "vsphere_virtual_machine_template" {
    description = "Template name" #Nom de la template
    type = string
    default = "XXXX"
  
}