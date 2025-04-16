# Experiment-4

### 1. IP Address Basics

An **IP (Internet Protocol)** address is a unique identifier assigned to each device connected to a network.

### Types of IP Addresses

| Type              | Description                                |
|-------------------|--------------------------------------------|
| IPv4              | 32-bit address, most commonly used         |
| IPv6              | 128-bit address, supports more devices     |

### IPv4 Format

- Written in **dotted decimal notation**: e.g., `192.168.1.1`
- Divided into **four octets** (8 bits each)
- Each octet ranges from 0 to 255

### IPv4 Address Classes

| Class | Range             | Default Subnet Mask  | Usage                        |
|-------|-------------------|-----------------------|------------------------------|
| A     | 1.0.0.0 – 126.255.255.255   | 255.0.0.0 ( /8 )       | Large networks              |
| B     | 128.0.0.0 – 191.255.255.255 | 255.255.0.0 ( /16 )    | Medium networks             |
| C     | 192.0.0.0 – 223.255.255.255 | 255.255.255.0 ( /24 )  | Small networks              |
| D     | 224.0.0.0 – 239.255.255.255 | N/A                   | Multicast                   |
| E     | 240.0.0.0 – 255.255.255.255 | N/A                   | Experimental, Research      |

> Note: 127.x.x.x is reserved for loopback testing.

---

### 2. Subnetting

**Subnetting** is the process of dividing a large network into smaller subnetworks (subnets). This helps optimize performance and improve security.

### Subnet Mask

A **subnet mask** separates the network portion from the host portion of an IP address.

#### Common Subnet Masks

| CIDR Notation | Subnet Mask         | # of Subnets | # of Hosts per Subnet |
|---------------|----------------------|---------------|------------------------|
| /8            | 255.0.0.0            | 1             | 16,777,214             |
| /16           | 255.255.0.0          | 256           | 65,534                 |
| /24           | 255.255.255.0        | 65,536        | 254                    |
| /30           | 255.255.255.252      | 1,048,576     | 2                      |

> Formula for hosts per subnet: `2^(32 - subnet_bits) - 2` (subtracting network and broadcast addresses)

### Example: Subnetting a Class C Network

Original IP: `192.168.1.0/24`  
Want 4 subnets → Need 2 bits → New prefix = /26

| Subnet # | Network Address | First Host   | Last Host    | Broadcast Address |
|----------|------------------|--------------|--------------|-------------------|
| 1        | 192.168.1.0/26   | 192.168.1.1  | 192.168.1.62 | 192.168.1.63      |
| 2        | 192.168.1.64/26  | 192.168.1.65 | 192.168.1.126| 192.168.1.127     |
| 3        | 192.168.1.128/26 | 192.168.1.129| 192.168.1.190| 192.168.1.191     |
| 4        | 192.168.1.192/26 | 192.168.1.193| 192.168.1.254| 192.168.1.255     |

---

### 3. Supernetting

**Supernetting** is the opposite of subnetting. It combines multiple small networks into a larger one.

Used to:
- Reduce routing table size
- Allow summarization of routes

### When to Use Supernetting

- ISPs aggregate multiple customer networks
- Need efficient routing

### Example: Combine 4 Class C Networks

Networks:
- 192.168.0.0/24  
- 192.168.1.0/24  
- 192.168.2.0/24  
- 192.168.3.0/24  

All four can be summarized as: **192.168.0.0/22**

| Network         | CIDR |
|------------------|------|
| 192.168.0.0      | /24  |
| 192.168.1.0      | /24  |
| 192.168.2.0      | /24  |
| 192.168.3.0      | /24  |
| Combined (supernet) | /22  |

### How it works

- `/24` = 256 addresses
- `/22` = 1024 addresses (covers `.0.0` to `.3.255`)
- All network addresses must be contiguous and align properly on binary boundaries

---

### 4. Private vs Public IP Addresses

### Private IP Ranges

| Class | Private IP Range                  |
|-------|----------------------------------|
| A     | 10.0.0.0 – 10.255.255.255        |
| B     | 172.16.0.0 – 172.31.255.255      |
| C     | 192.168.0.0 – 192.168.255.255    |

- Private IPs are not routable on the internet.
- Used within LANs (Local Area Networks)

### Public IP

- Globally unique
- Routable over the internet
- Assigned by ISPs and registries (IANA, RIRs)

---

### 5. Binary Representation

Understanding IPs in binary helps with subnetting/supernetting.

Example: IP = `192.168.1.1`

| Octet  | Decimal | Binary         |
|--------|---------|----------------|
| 1st    | 192     | 11000000       |
| 2nd    | 168     | 10101000       |
| 3rd    | 1       | 00000001       |
| 4th    | 1       | 00000001       |
