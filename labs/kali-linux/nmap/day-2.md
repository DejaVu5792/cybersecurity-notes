# NMAP - IP Scan

## Operating System
Kali Linux

## Objective
Scan an IP Address on my network.

## Commands Used
- ip route
- nmap -sn
- nmap
- nmap -sS
- nmap -sT
- nmap -T4

---

## 1. Scan the Network
Command: nmap -sn

Result: 

![ping scan](Screenshots/day-2/nmap-ping-scan.png)

Observations:
- I can see the IP Addresses on my network.

---

## 2. Select a Target
Command: ip route

Result:

![router ip](Screenshots/day-2/kali-router-ip.png)

Observations:
- Router IP Address: 10.42.159.247
- Set the router as my target

---

## 3. Baseline Scan
Command: nmap

Result:

![router ip](Screenshots/day-2/nmap-router-baseline.png)

Observations:
- Port 53 open, the default port for DNS
- Scan speed: 2.68 seconds

---

## 4. Stealth Scan
Command: nmap -sS

Result: 

![stealth scan result](Screenshots/day-2/nmap-router-half-scan.png)

Observations:
- Scan Speed: 1.74 seconds
- Almost a second faster than baseline scan

---

## 5. Full Scan
Command: nmap -sT

Result:

![scan result](Screenshots/day-2/nmap-router-scan.png)

Observations:
- conn-refused instead of reset is shown
- Scan Speed: 2.60 seconds
- Same speed as the baseline scan

---

## 6. Fast Scan
Command: nmap -T4

Result: 

![fast scan result](Screenshots/day-2/nmap-router-fast-scan.png)

Observations:
- Scan Speed: 1.09 seconds
- Faster than all of the previous scans

--- 

Key Learnings:
- I can see what services an IP on my network is using
- The router uses DNS, which defaults to port 53
