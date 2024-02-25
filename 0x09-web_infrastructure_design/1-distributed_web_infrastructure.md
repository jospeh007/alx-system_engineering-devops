### Explain some specifics about this infrastructure

- The load balancer is set up with the Round Robin distribution algorithm.
In this setup, HAProxy cycles through each server behind the load balancer, taking into account their assigned weights. This method ensures a smooth and fair distribution of incoming requests, as the load balancer evenly distributes the processing load among the servers.
- The setup facilitated by the load balancer refers to the configuration and architecture in which the load balancer operates. 
The HAProxy load balancer is implemented in an Active-Passive setup, contrasting with an Active-Active setup where workloads are evenly distributed across all available nodes to prevent overload and enhance throughput and response times. In an Active-Passive setup, not all nodes are actively receiving workloads at all times. For instance, if one node is already active, the next node remains passive or on standby. The passive node becomes active only when the preceding node is inactive or unable to handle the workload.
