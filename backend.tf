terraform {
  cloud {
    organization = "kidsloop-infrastructure"
    workspaces {
      name = "product-inventory"
    }
  }
}
