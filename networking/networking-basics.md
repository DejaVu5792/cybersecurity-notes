# Networking Concepts
## IP Address
   - **Internet Protocol** Address
   - A changing identifier of a device assigned by a network it is connected on
   - **Analogy**: Address of a specific house (device) in a town (internet)
     ### Types:
     1. **IPv4**
        - ~4.3 billion addresses
        - uses 32-bit address
        - 4 octets
         #### Private IPv4 Address Ranges
         - 10.0.0.0 - 10.255.255.255
         - 172.16.0.0 - 172.31.255.255
         - 192.168.0.0 - 192.168.255.255
     2. **IPv6**
        - Very huge address space
        - uses 128-bit addresses      
   ### DHCP
   - **Dynamic Host Configuration Protocol**
   - automatically assign IP address to devices
   ### APIPA
   - **Automatic Private IP Addressing**
   - Ranges: 169.254.0.0 - 169.254.255.255
   - automatically assigns IP address to devices when DHCP fails
   ### Subnet
   - **Subnetting** - segmenting/dividing a network into smaller networks
   - **Network Address:** first address
   - **Broadcast Address:** last address
   - **Third octet movement** - normally happens if the CIDR notation goes beyond /23
   - **Usable Hosts** - IP addresses within a subnet that can be allocated for devices
      - Formula: (2^(32-CIDR Notation))-2
   ### CIDR
   - **CIDR Notation** - defines the subnet ranges/blocks
## Ports
   - doors where data go in and out in the IP address (device)
   - ports disappear when the service stops
   - open port = risk, so close unused ports
## DNS
- **Domain Name System**
- translates human-readable domains into IP addresses so devices know where to connect on the internet
- can be taken advantage because:
   - it is trusted by default
   - rarely get deeply inspected
   - needed to get on the internet
- **DNS Attacks**
   1. DNS Spoofing - attacker injects fake IP address to DNS and drags you there
   2. DNS Amplification - attackers flood victims with DNS responses from a falsified IP address
   3. DNS Phishing - fake and look-a-like domain names
   4. Domain Generation Algorithm - malware randomly generate domains
   5. Fast Flux - one domain name that rotates around multiple IP addresses
- **Threat detection**
   - long and random-looking domain names
   - NXDOMAIN at a fixed interval
   - Huge DNS responses to the same domain
## HTTP
- Hypertext Transfer Protocol 
- sends data on plain text
- **Vulnerabilities**
   - **Man-in-the-Middle Attack** - an attacker on the same network can read and modify your data
   - **Session Hijacking** - an attacker impersonates you using your session cookies
      - **Session cookies** are the information that a website collects to know you
   - **Script Injection** - modifies a website's data and adds malicious scripts
## HTTPS
- Hypertext Transfer Protocol **Secure**
- HTTP on TLS
- encrypts web data while being sent from the browser to the server
   - **Encryption** - translates data into ciphertext
- ensures data confidentiality and integrity
- Protocols: TLS and SSL
- **Limitations:**
   - It doesn't prevent any compromises happened on the sender and receiver
   - **SSL stripping** - an attacker on the same network forces a browser to downgrade a connection from HTTPS to HTTP
      - browsers might still initially connect on a website via HTTP
      - **Prevention: HSTS** - only accepts HTTPS connections, even if you manually type http
## Opening a secure website
1. **DNS lookup** - translates the domain name into an IP address
2. **TCP three-way handshake** - establish reliable and ordered connection between the client and the server
3. **TLS handshake** - verify a server's identity, protect data in-transit, and build a secure tunnel
   - check **CA (Certificate Authority)** certificate and domain name
4. **HTTP request** - request HTML, CSS, and JavaScript
