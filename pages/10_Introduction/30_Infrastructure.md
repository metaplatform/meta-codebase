## Infrastructure

Using microservices architecture brings some difficulties such as orchestration and deployment of services.

Because each service is stand-alone application we can deploy and manage it manually. But imagine that you have tens of services you have to manage and they are on multiple servers.

We are introducing...

### [[icon layers /]] [META Stack]($base$/meta-stack/)

META Stack is backbone for our platform. It takes care of deployment and orchestration of microservices across multiple servers.

Stack is using multi-master architecture which simplifies deployment of new cluster nodes and eliminates single point of failure.

**Stack offers following features:**

- Shared cluster configuration
- Shared event bus (pub/sub pattern)
- Service registry
- Service deployment
- Dynamic distribution of services with respect to node loads
- Automatic failover - start services on different node

### [[icon google-circles-extended /]] [META Gate]($base$/meta-gate/)

You want to provide single connection point to clients and when you have many independent services you must solve this situation.

META Gate is services which acts as proxy and routes client requests to specified services. It also acts as a firewall and provides simple way to manage access rules in one central place.

**Gate provides:**

- Request routing
- Multibalancing
- Access control
- Centralization of events and real-time communication from multiple services to single client (web hooks, websocket, server push events)