# terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
}


terraform {
  backend "http" {
    address = "https://objectstorage.ap-hyderabad-1.oraclecloud.com/p/zMUKjf4uuwHH1t2QVUywTdVC3AOz9NmSJhd9o5dSs63o-TB6tLWIIXH4mxj5Fwof/n/axqmuvx2wzph/b/bucket-20261001-0900/o/terraform.tfstate"
    update_method = "PUT"
  }
}

