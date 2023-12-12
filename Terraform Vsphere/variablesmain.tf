variable "vsphere_user"{
    description = "Username to connect to vCenter Server" #Compte Vsphere (autres que administrator)
    type = string
    default = "XXXXXXX@vsphere.local"
}

variable "vsphere_password"{
    description = "Password to connect to vCenter Server" #Mot de passe du compte
    type = string
    default = "XXXXX"
}

variable "vsphere_server"{
    description = "IP or DNS name to connect to vCenter server" #IP ou enregistrement A du serveur Vsphere
    type = string
    default = "XXXXXX"
}