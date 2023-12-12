variable "vsphere_virtual_machine_vm2" {
    description = "Machine name" #Nom de la machine sur VSphere
    type = string
    default = "VM exemple2"
  
}

variable "host_name_plan2" {
    description = "Host name machine" #Nom d'hôte de la machine
    type = string
    default = "vmexemple2"
  
}

variable "ipv4_address2" {
    description = "Adresse IP" #Adresse IP de la machine
    type = string
    default = "X.X.X.X"
  
}

variable "ipv4_gateway2" {
    description = "Gateway" #Adresse de paserelle de la machine
    type = string
    default = "X.X.X.X"
  
}

variable "ipv4_netmask_cidr2" {
    description = "Netmask" #Masque de sous réseau de la machine (CIDR)
    type = string
    default = "XX"
  
}

variable "dns1_plan2" {
    description = "Server DNS 1" #Serveur DNS1 de la machine
    type = string
    default = "X.X.X.X"
  
}

variable "dns2_plan2" {
    description = "Server DNS 2" #Serveur DNS2 de la machine
    type = string
    default = "X.X.X.X"
  
}