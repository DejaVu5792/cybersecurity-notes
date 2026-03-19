# HTTP
   - Hypertext Transfer Protocol
   - rules that define how browsers and servers request and receive data on the web
   -  protocol that enable browsers and servers to communicate on the web
   -  uses **Client-Server Architecture**
   ## Key features:
      1. Unencrypted - sends data on plain text
      2. Insecure - anyone intercepting your network can see your data
   ## HTTP Process:
      1. User types URL
      2. Browser sends HTTP request
      3. Server processes the request
      4. Server sends HTTP response
      5. Browser loads the website
   ## Vulnerabilities
      1. Packet Sniffing - attacker captures data packets/traffic and analyzes it
      2. Man-in-the-Middle Attack
         - an attacker on the same network can read and modify your data
         - attacker intercepts the communication between a client and a server
      3. Session Hijacking - an attacker impersonates you using your session cookies
      4. Session cookies are the information that a website collects to know you
      5. Script Injection - modifies a website's data and adds malicious scripts
      6. Data Tampering - modification of data
   ## HTTP Methods
      1. GET - request resources from the server
      2. POST - send data to the server
      3. PUT - replace/update existing data
      4. DELETE - remove data
# HTTPS
   - Hypertext Transfer Protocol **Secure**
   - HTTP on TLS
   - encrypts web data while being sent from the browser to the server
   - **Digital Certificate**
      - legitimate and verified servers have this
      - issued by **Certificate Authority (CA)**
   ## Transport Layer Security (TLS)
   -  Protocol used by HTTPS
   - **Ensures:**
      - **Encryption**
      - **Integrity**
      - **Authentication**
   - TLS Handshake Process
      1. Client sends Client Hello
         - valid TLS version
      2. Server sends Server Hello
         - digital certificate
      3. Certificate Verification
         - browser checks the certificate using Certificate Authority
         - if invalid: browser will send a warning
      4. Key Generation
         - generate encryption/decryption keys
      5. Secure Communication
   ## Encryption 
   - hiding the data by translating it into ciphertext
   - **Types:**
      1. **Asymmetrical**
         - two keys; a public key for everyone and a private key for the server
         - used for TLS handshake
      3. **Symmetrical**
         - one key for both the client and the server
         - fast and used for HTTPS communication
   ## HTTPS Process:
      1. User types URL on the browser
      2. Browser performs TLS handshake with the server
      3. Browser sends encrypted HTTP request
      4. Server processes the request
      5. Server returns encrypted HTTP response
      6. Browser decrypts the data and loads the website
   ## HTTPS Status Codes
   | Ranges | Meaning |
   | --- | --- |
   | 100-199 | Informationality |
   | 200-299 | Success |
   | 300-399 | Redirection |
   | 400-499 | Client error |
   | 500-599 | Server Error |
   ## Limitations:
   - It doesn't prevent any compromises happened on the sender and receiver
   - **SSL stripping** - an attacker on the same network forces a browser to downgrade a connection from HTTPS to HTTP
      - browsers might still initially connect on a website via HTTP
      - Prevention: **HSTS** - only accepts HTTPS connections, even if you manually type http
   ## Opening website process
      1. User enters the URL
      2. Browser cache check: load the website if found
      3. DNS cache check: jump to TCP handshake if found
      4. DNS lookup - translates the domain name into an IP address
      5. TCP three-way handshake - establish reliable and ordered connection between the client and the server
      6. If on HTTPS:
         TLS handshake
         - verify a server's identity, protect data in-transit, and build a secure tunnel
         - check CA (Certificate Authority certificate and domain name
      7. Browser sends HTTP request via GET method
      8. Server processes the request
      9. Browser sends HTTP response - sends HTML, CSS, and JavaScript
      10. Browser loads the resources, parses the code, and then renders the website
   Key terms:
   1. Uniform Resource Locator - address for locating web resources
      - Components:
         - Ex: https://github.com/Yotsuhadesu/cybersecurity-notes
         - Protocol: https://
         - Domain: github.com
         - Path: /Yotsuhadesu/cybersecurity-notes
   2. DNS - system that translates domain names into IP addresses
   3. IP address - unique nuemric identifier for a device or software connected on a network
   4. Client - device or software (e.g. browser); sends request
   5. Server - a system the processes the request and sends response
   6. HTTP(S) - protocol for requesting web resources
