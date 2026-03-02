# Ports
   - doors where data go in and out in the IP address (device)
   - ports disappear when the service stops
   - the device uses random high (ephemeral) port and the server listens through a well-known port
      - the ephemeral port will get released and will wait for new client when the current client stops using the service
   - **Well-known Ports**
      - 21 - FTP (File Transfer)
      - 22 - SSH (Secure Remote Login)
      - 23 - Telnet (Insecure Remote Login)
      - 25 - SMTP
      - 53 - DNS
      - 80 - HTTP
      - 443 - HTTPS
   - **TCP 4 tuple**
      - client IP, client port, server IP, server port
      - if any one changes, the connection becomes different
   - **States:**
      - **Open** - the service is actively listening
      - **Closed** - No service is listening
      - **Filtered** - the service is blocked
   - **How port scanning/scanners work?**
      - **Half scan** - Port scanners send **TCP SYN** packets to the server port
         - **Open port** - return **TCP SYN-ACK** packets
         - **Closed port** - send **TCP RST**
         - **Filtered port** - no response
   - **Threat:**
      - open port = attack surface, so close unused ports
      - Attackers can exploit the gaps/vulnerabilities of the service you access through a port
# Transport Layer Protocols - the ways data are transferred
   ## TCP 
   - resends lost packets
   - segments of data comes with a sequence number that'll be rearranged by the receiver
   - good for file downloads, bank transactions, and other services that needs reliability
   - **Pros:** - reliable, ordered
   - **Cons:** - slow
      ### TCP Three-way Handshake 
      1. **SYN** - sender says **hi** to receiver
      2. **SYN-ACK** - the receiver says **let's connect** to sender
      3. **ACK** - the sender says **sure** to receiver
   ## UDP 
   - connectionless
   - it's like data are getting fired by a machine gun
   - good for calls, livestreams, video games, and other services that require low latencies
   - **Pros:** - fast
   - **Cons:** - unreliable
