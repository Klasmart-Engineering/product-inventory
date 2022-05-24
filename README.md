# Product Inventory (Workspace)

This is the working area for the product-inventory project.

The purpose of this product-inventory project is to create and manage product-workspaces for the various projects, those product-workspaces are themselves used to create and manage workspaces for all of the different microservices within a project.

## Workspace hierachy

* product-inventory workspace (only one single workspace within the Terraform Cloud organization)
    This workspace manages the "product" workspaces for all projects. To add a new environment, you will need to create a new "product" workspace for that environment in the `product-inventory` workspace first of all. This is as simple as creating a new instance of the `svc-ws-product` module in the `product-inventory` folder.

* "product" workspaces (one workspace per-project/per-deployment)
    These workspaces are intended for bootstrapping all of the workspaces needed to deploy and manage the product across all Kidsloop environments. Because of the design choice to isolate resources per-microservice we need to have a Terraform Cloud workspace per-microservice. The "product" workspace is used to organize all of these workspaces and their associated resources as desired.

* Environment and product specific workspaces (one workspace per-product and per-environment)
    These are the actual workspaces that are used to store and manage resources for the individual microservices, and are allocated on a per-project and per-microservice (or per-layer if foundation group) basis.
