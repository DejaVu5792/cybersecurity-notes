# HTTP
- Hypertext Transfer Protocol
- rules that define how browsers and servers request and receive data on the web
- protocol that enable browsers and servers to communicate or the web
- **Key features:**
   - **Unencrypted** - sends data on plain text
   - **Insecure** - anyone intercepting your network can see your data
- uses **Client-Server Architecture**
- **HTTP Process:**
   1. User **types URL**
   2. Browser sends **HTTP request**
   3. Server **processes the request**
   4. Server sends **HTTP response**
   5. Browser **loads the website**
- **Vulnerabilities**
   - **Man-in-the-Middle Attack** - an attacker on the same network can read and modify your data
   - **Session Hijacking** - an attacker impersonates you using your session cookies
      - **Session cookies** are the information that a website collects to know you
   - **Script Injection** - modifies a website's data and adds malicious scripts
# HTTPS
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
# Opening a secure website
1. **DNS lookup** - translates the domain name into an IP address
2. **TCP three-way handshake** - establish reliable and ordered connection between the client and the server
3. **TLS handshake** - verify a server's identity, protect data in-transit, and build a secure tunnel
   - check **CA (Certificate Authority)** certificate and domain name
4. **HTTP request** - request HTML, CSS, and JavaScript
