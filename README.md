terraform/
├── modules/
│   ├── vsphere-network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── vsphere-vm/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── avi-loadbalancer/
│   │   ├── main.tf
│   │   └── variables.tf
│   │
│   ├── k8s-node-pool/
│   │   ├── main.tf
│   │   └── variables.tf
│   │
│   ├── identity/
│   │   ├── main.tf   # Keycloak VMs, future-proof
│   │   └── variables.tf
│
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   │
│   ├── test/
│   │   └── same-structure-as-dev
│   │
│   └── prod/
│       └── same-structure-as-dev
│
├── providers.tf
├── versions.tf
└── README.md
