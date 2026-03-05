# DNS
- **Domain Name System**
- translates human-readable domains into IP addresses so devices know where to connect on the internet
- without it, we need to memorize IP addresses
- can be taken advantage because:
   - it is trusted by default
   - rarely get deeply inspected
   - needed to get on the internet

## DNS Servers
   1. DNS Resolver
   2. Root Server
   3. TLD (Top level domain) server
   4. Authoritative Server

## DNS lookup process
   1. Browser checks local cache
   2. Browser checks OS cache
   3. Browser asks DNS resolver
   4. Resolver asks Root server
   5. Root points to TLD server
   6. Resolver asks TLD server
   7. TLD points to authoritative server
   8. Resolver asks authoritative server
   9. Authoritative returns the real IP address
   10. Browser loads the website

## DNS Attacks
   1. DNS Spoofing - attacker injects fake IP address to DNS and drags you there
   2. DNS Amplification - attackers flood victims with DNS responses from a falsified IP address
   3. DNS Phishing - fake and look-a-like domain names
   4. Domain Generation Algorithm - malware randomly generate domains
   5. Fast Flux - one domain name that rotates around multiple IP addresses

## Threat detection
   - long and random-looking domain names
   - NXDOMAIN at a fixed interval
   - Huge DNS responses to the same domain
