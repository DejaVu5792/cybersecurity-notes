# IP Address
   - **Internet Protocol** Address
   - A changing identifier of a device assigned by a network it is connected on
   - **Analogy**: Address of a specific house (device) in a town (internet)
     ## Types:
     1. **IPv4**
        - ~4.3 billion addresses
        - uses 32-bit address
        - 4 octets
         ### Private IPv4 Address Ranges
         - 10.0.0.0 - 10.255.255.255
         - 172.16.0.0 - 172.31.255.255
         - 192.168.0.0 - 192.168.255.255
     2. **IPv6**
        - Very huge address space
        - uses 128-bit addresses      
   ## DHCP
   - **Dynamic Host Configuration Protocol**
   - automatically assign IP address to devices
   ## APIPA
   - **Automatic Private IP Addressing**
   - Ranges: 169.254.0.0 - 169.254.255.255
   - automatically assigns IP address to devices when DHCP fails
   ## Subnet
   - **Subnetting** - segmenting/dividing a network into smaller networks
   - **Network Address:** first address
   - **Broadcast Address:** last address
   - **Third octet movement** - normally happens if the CIDR notation goes beyond /23
   - **Block Size** - the subnet's ranges, from the network to the broadcast address
   - **Usable Hosts** - IP addresses within a subnet that can be allocated for devices
      - Formula: (2^(32-CIDR Notation))-2
   - Counters **lateral movement**, where an attacker compromises one address to another
   - **Step-by-Step Subnetting**
      1. CIDR Notation -> Subnet Mask
     
         | CIDR Notation | Subnet Mask |
         | --- | --- |
         | /30 | 255.255.255.252 |
         | /29 | 255.255.255.248 |
         | /28 | 255.255.255.240 |
         | /27 | 255.255.255.224 |
         | /26 | 255.255.255.192|
         | /25 | 255.255.255.128 |
         | /24 | 255.255.255.0 |
         | /23 | 255.255.254.0 |
         | /22 | 255.255.252.0 |

      2. Find interesting octet
         - Octet that isn't 255 or 0
      3. Compute Block size
         - Block Size = 256 - interesting octet
      4. Find Network Address
         - first network in a subnet
      5. Find Broadcast Address
         - Broadcast Address = Network Address + (Block Size - 1)
      6. Find Usable Hosts Range
         - Network Address + 1
         - Broadcast Address - 1
   ## CIDR
   - **CIDR Notation** - defines the subnet ranges/blocks
   ## VLSM 
   - **Variable Length Subnet Masking**
   - a network design technique of allocating subnets for efficiency
   - largest to smallest block size
---
[Back to Top](#ip-address)

