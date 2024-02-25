### Explain some specifics about this infrastructure
-------------
- The load balancer is set up with the Round Robin distribution algorithm.
In this setup, HAProxy cycles through each server behind the load balancer, taking into account their assigned weights. This method ensures a smooth and fair distribution of incoming requests, as the load balancer evenly distributes the processing load among the servers.
- The setup facilitated by the load balancer refers to the configuration and architecture in which the load balancer operates. 
The HAProxy load balancer is implemented in an Active-Passive setup, contrasting with an Active-Active setup where workloads are evenly distributed across all available nodes to prevent overload and enhance throughput and response times. In an Active-Passive setup, not all nodes are actively receiving workloads at all times. For instance, if one node is already active, the next node remains passive or on standby. The passive node becomes active only when the preceding node is inactive or unable to handle the workload.
- How a database Primary-Replica (Master-Slave) cluster works ?
In a Primary-Replica (Master-Slave) cluster, the primary database manages writes and logs changes. Replicas copy data and sync with the primary. Changes are applied asynchronously to replicas. Replicas handle read queries and can failover if the primary fails, ensuring continuous operation and data redundancy.
- What is the difference between the Primary node and the Replica node in regard to the application ?
The primary node manages writes and serves as the primary point of interaction for the application. The replica node replicates data, handles reads, and acts as a backup for data integrity and availability.

### Explain what the issues are with this infrastructure 
-------------
- Where are SPOF (Single Point Of Failure) ?
If the Primary MySQL database server experiences an outage, the entire site would lose its ability to make changes, such as adding or removing users. Similarly, the servers hosting the load balancer and the application server that connects to the primary database server are also susceptible to becoming single points of failure.
- Security issues (no firewall, no HTTPS)
Security concerns arise due to the lack of encryption for data transmitted over the network, leaving it vulnerable to interception by hackers. Additionally, unauthorized IPs cannot be blocked because no firewall is installed on any server, further exposing the system to potential breaches.
- No monitoring
Lack of monitoring means we lack visibility into the status of each server as they are not being actively tracked or observed.
