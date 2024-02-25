![](0x09-web_infrastructure_design/0-simple_web_stack.jpg)

### Explain some specifics about this infrastructure
------------
- What is a server ?
A server is a computer system or software program that provides functionality or resources to other computers, known as clients, over a network.

- What is the role of the domain name ?
The domain name serves as a human-readable label used to identify and locate resources on the internet.

- What type of DNS record www is in www.foobar.com :
The DNS record type for "www.foobar.com" is typically an "A" record. This record type maps a domain name (e.g., "www.foobar.com") to an IPv4 address, allowing web browsers and other clients to find the specific server associated with that domain name.

- What is the role of the web server :
The role of a web server is to handle incoming requests from clients (such as web browsers) and deliver web pages, files, or other content in response to those requests.

- What is the role of the application server :
The role of an application server is to execute and manage the business logic and application-specific tasks of a software application. It provides a runtime environment for applications, handling tasks such as database access, session management, transaction processing, and security enforcement.

- What is the role of the database :
The role of a database is to store, manage, and organize structured data in a way that enables efficient retrieval, manipulation, and storage.

- What is the server using to communicate with the computer of the user requesting the website :
The server primarily uses the Hypertext Transfer Protocol (HTTP) to communicate with the computer of the user requesting the website

### The issues are with this infrastructure
------------
- SPOF :
stands for Single Point of Failure. It refers to a component in a system that, if it fails, can cause the entire system to stop working.

- Downtime when maintenance needed : 
Downtime during maintenance refers to the period when a system or service is temporarily unavailable to users or clients due to scheduled or unscheduled maintenance activities.

- Cannot scale if too much incoming traffic :
Inability to scale with high incoming traffic means that a system or infrastructure lacks the capacity to handle increased levels of demand or traffic effectively. 
