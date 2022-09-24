

module "vpc" {
    source = "git::https://github.com/terraform-google-modules/terraform-google-network.git"

    project_id   = "np-epo-cmdb03-prj-8936"
    network_name = "example-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-west1"
        },
    ]
}

