resource_groups = {
    rg1 = {
        name = "ABHI123"
        location = "centralindia"
    }
}

virtual_networks = {
    v1 = {
        name = "abcd"
        resource_groups = "ABHI123"
        location = "centralindia"
        address_space = ["10.0.0.0/16"]
    }
}

subnets = {
    snets = {
        name = "hkjg"
        resource_groups = "ABHI123"
        location = "centralindia"
        virtual_networks = "abcd"
        address_prefixes = ["10.0.1.0/24"]
    }
}