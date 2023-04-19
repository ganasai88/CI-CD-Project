
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-024582982da08cd9d","subnet-093e1ffeb32677af7","subnet-02cf3db7e937f0486","subnet-09b187c34b33f28dd","subnet-030f50d23466d645a"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-024582982da08cd9d","subnet-093e1ffeb32677af7","subnet-02cf3db7e937f0486","subnet-09b187c34b33f28dd","subnet-030f50d23466d645a"]

        tags = {
             "Name" =  "node1"
         } 
  }
}