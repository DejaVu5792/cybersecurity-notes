# DNS
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
