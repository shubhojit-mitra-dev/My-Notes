# Experiment-5

Understanding network commands is essential for diagnosing and configuring network settings in any operating system. These commands help in:

- Checking network connectivity  
- Viewing IP address information  
- Modifying network configurations  
- Troubleshooting network issues  

---

### 1. Basic Network Commands

### 1.1 `ping`

Sends ICMP packets to test connectivity between your device and another host.

```bash
ping google.com
```

**Use:** Check if the host is reachable.

---

### 1.2 `ip` (Linux)

Replaces older `ifconfig` command to manage IP addresses and routes.

```bash
ip a            # Show all IP addresses
ip link         # Show network interfaces
ip route        # Show routing table
```

**Use:** View and configure network interfaces, addresses, and routes.

---

### 1.3 `ifconfig` (Deprecated but still used)

Displays or configures network interfaces (older tool).

```bash
ifconfig
```

**Use:** View or change IP address, netmask, etc.

---

### 1.4 `traceroute` / `tracert` (Windows)

Displays the route packets take to reach a destination.

```bash
traceroute google.com      # Linux
tracert google.com         # Windows
```

**Use:** Diagnose where packets are getting dropped or delayed.

---

### 1.5 `nslookup`

Queries DNS servers to get domain name or IP address mapping.

```bash
nslookup google.com
```

**Use:** Troubleshoot DNS resolution issues.

---

### 1.6 `dig` (Linux)

Another tool for querying DNS information.

```bash
dig google.com
```

**Use:** More detailed DNS lookup compared to `nslookup`.

---

### 1.7 `netstat` (Deprecated in Linux)

Displays active connections, routing tables, and network statistics.

```bash
netstat -tulnp
```

| Option | Description                          |
|--------|--------------------------------------|
| -t     | TCP connections                      |
| -u     | UDP connections                      |
| -l     | Listening ports                      |
| -n     | Show numeric IPs instead of resolving|
| -p     | Show process using the port          |

---

### 1.8 `ss` (Modern replacement for `netstat`)

```bash
ss -tulnp
```

**Use:** Check active connections and which programs are using ports.

---

### 1.9 `arp`

Displays and modifies the Address Resolution Protocol cache.

```bash
arp -a
```

**Use:** See IP-to-MAC address mapping.

---

### 1.10 `hostname`

Displays or sets the system's hostname.

```bash
hostname           # View hostname
hostname newname   # Set hostname (temporary)
```

---

### 2. Network Configuration Commands

### 2.1 `ip addr add`

Assign an IP address to an interface.

```bash
sudo ip addr add 192.168.1.100/24 dev eth0
```

---

### 2.2 `ip link set`

Enable or disable a network interface.

```bash
sudo ip link set eth0 up      # Enable
sudo ip link set eth0 down    # Disable
```

---

### 2.3 `ip route add`

Add a new route to the routing table.

```bash
sudo ip route add 192.168.2.0/24 via 192.168.1.1
```

---

### 2.4 `/etc/network/interfaces` (Debian-based)

Edit static IP configurations manually.

```bash
# Example static IP config
auto eth0
iface eth0 inet static
    address 192.168.1.50
    netmask 255.255.255.0
    gateway 192.168.1.1
```

---

### 2.5 `nmcli` (NetworkManager CLI tool)

Used in modern Linux distros to manage network connections.

```bash
nmcli dev status                # Show all devices
nmcli con show                 # List saved connections
nmcli con up id "WIFI_NAME"    # Connect to a network
nmcli con down id "WIFI_NAME"  # Disconnect from a network
```

---

### 2.6 `systemctl` (To restart network services)

```bash
sudo systemctl restart networking       # Debian-based
sudo systemctl restart NetworkManager  # Red Hat-based
```

---

### 3. Windows Network Commands

### 3.1 `ipconfig`

Displays IP address, subnet mask, and default gateway.

```cmd
ipconfig
ipconfig /all       # Detailed info
ipconfig /release   # Release DHCP lease
ipconfig /renew     # Renew DHCP lease
```

---

### 3.2 `netsh`

Advanced network configuration tool.

```cmd
netsh interface ip show config
netsh wlan show profile
netsh wlan connect name="WiFi_Name"
```

---

### 3.3 `route`

View and edit routing table in Windows.

```cmd
route print               # View routing table
route add                 # Add route
route delete              # Delete route
```

---

### All Commands

| Command     | OS      | Purpose                              |
|-------------|---------|--------------------------------------|
| `ping`      | All     | Test connectivity                    |
| `ip`        | Linux   | Manage IP, routes, interfaces        |
| `ifconfig`  | Linux   | (Old) View/change network interfaces |
| `traceroute`/`tracert`| Linux/Win | Trace path to destination     |
| `nslookup`  | All     | DNS resolution info                  |
| `dig`       | Linux   | Advanced DNS query                   |
| `netstat`   | All     | Network connections (old)            |
| `ss`        | Linux   | Modern connection viewer             |
| `arp`       | All     | View ARP cache                       |
| `nmcli`     | Linux   | Manage network connections           |
| `ipconfig`  | Windows | IP info and renew/release            |
| `netsh`     | Windows | Network interface config             |
| `route`     | All     | View and manage routing table        |
