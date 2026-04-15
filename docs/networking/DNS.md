# DNS
- **Domain Name System**
- translates human-readable domains into IP addresses so devices know where to connect on the internet
- without it, we need to memorize IP addresses
- can be taken advantage because:
   - it is trusted by default
   - rarely get deeply inspected
   - needed to get on the internet

## DNS Servers
   1. **DNS Resolver**
   2. **Root Server** - top/highest DNS server
   3. **TLD (Top level domain) server**
   4. **Authoritative Server**

## DNS lookup process
   1. Browser checks **local cache**
   2. Browser checks **OS cache**
   3. Browser asks **DNS resolver**
   4. Resolver asks **Root server**
   5. Root points to TLD server
   6. Resolver asks **TLD server**
   7. TLD points to authoritative server
   8. Resolver asks **authoritative server**
   9. Authoritative returns the **real I**P address
   10. Browser **loads** the website

## DNS Record Types
   1. **A** - records IPv4 address
   2. **AAAA** - records IPv6 address
   3. **MX** - mail servers
   4. **CNAME** - records alias of the domain name
   5. **TXT** - text file; security and verification 

## DNS Caching
- temporarily stores the IP address of the visited website until the **Time to Live (TTL)** expires
- for **faster repeated lookup** and **less DNS query traffic**

## DNS Attacks
   1. **DNS Spoofing/Cache Poisoning**
      1. Attacker poisons the DNS cache
      2. Browser sends an IP address to a malicious website
      3. Victim enters the website
      4. Attacker performs phishing or eavesdropping
   3. **DNS Amplification** - a type of **Distributed Denial of Service (DDoS)** Attack
      1. Attacker sends one small request to an open DNS resolver
      2. Spoofs the victim's IP address
      3. Browser sends large responses
      4. Victim gets flooded
      5. Service disrupts
   4. **DNS Phishing** - fake and look-a-like domain names
   5. **Domain Generation Algorithm** - malware randomly generate domains
   6. **Fast Flux** - one domain name that rotates around multiple IP addresses
   7. **DNS Tunneling** - a hidden malware on a DNS query, bypassing firewalls and silently communicates

## Threat detection
   - long and random-looking domain names
   - NXDOMAIN at a fixed interval
   - Huge DNS responses to the same domain
