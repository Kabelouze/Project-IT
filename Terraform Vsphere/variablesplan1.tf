variable "vsphere_virtual_machine_vm1" {
    description = "Machine name" #Nom de la machine sur VSphere
    type = string
    default = "VM Exemple"
  
}

variable "host_name_plan1" {
    description = "Host name machine" #Nom d'hôte de la machine
    type = string
    default = "vmexemple"
  
}

variable "ipv4_address1" {
    description = "Adresse IP" #Adresse IP de la machine
    type = string
    default = "X.X.X.X"
  
}

variable "ipv4_gateway1" {
    description = "Gateway" #Adresse de paserelle de la machine
    type = string
    default = "X.X.X.X"
  
}

variable "ipv4_netmask_cidr1" {
    description = "Netmask" #Masque de sous réseau de la machine (CIDR)
    type = string
    default = "XX"
  
}

variable "dns1_plan1" {
    description = "Server DNS 1" #Serveur DNS1 de la machine
    type = string
    default = "X.X.X.X"
  
}

variable "dns2_plan1" {
    description = "Server DNS 2" #Serveur DNS2 de la machine
    type = string
    default = "X.X.X.X"
  
}