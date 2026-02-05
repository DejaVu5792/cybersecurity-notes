# Networking Concepts
## IP Address
   - **Internet Protocol**
   - A changing identifier of a device assigned by a network it is connected on
   - **Analogy**: Address of a specific house (device) in a town (internet)
     ### Types:
     1. **IPv4**
        - ~4.3 billion addresses
        - uses 32-bit address
        - 4 octets
     2. **IPv6**
        - Very huge address space
        - uses 128-bit addresses
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
- encrypts web data while being sent from the browser to the server
   - **Encryption** - translates data into ciphertext
- ensures data confidentiality and integrity
- Protocols: TLS and SSL
- **Limitation:** It doesn't prevent any incidents happened on the sender and receiver
