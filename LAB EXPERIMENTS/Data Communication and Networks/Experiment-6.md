# Experiment 6: 

# Set up Network Topology in Cisco Packet Tracer
## **Objective:**

To design and understand different network topologies using **Cisco Packet Tracer**, specifically:

- Bus Topology
- Star Topology
- Ring Topology
- Mesh Topology

Each topology is designed using **PCs connected to switches**, and the **interconnection of switches** defines the topology.

---

## **Software Used:**

- Cisco Packet Tracer (version 8.2.2)

---

## **Components Required:**

- 4 PCs (5 in Star)
- 4 Switches (Except Ring where only 1 is used)
- Copper Straight-through cables
- IP configuration per PC

---

## **IP Addressing Table:**

| Device | IP Address | Subnet Mask   |
| ------ | ---------- | ------------- |
| PC0    | 192.0.0.1  | 255.255.255.0 |
| PC1    | 192.0.0.2  | 255.255.255.0 |
| PC2    | 192.0.0.3  | 255.255.255.0 |
| PC3    | 192.0.0.4  | 255.255.255.0 |
| PC4    | 192.0.0.5  | 255.255.255.0 |

Each PC is connected to its **own switch** using **Copper Straight-through** cables.

---

## **Topologies Setup and Description**

---

### **1. Bus Topology**

#### **Description**:

All PCs are connected to their own switches. These **switches are connected in a straight line** to simulate a bus-like structure.

#### **Steps**:

1. Place 4 PCs and 4 switches.
2. Connect each PC to its respective switch using Copper Straight-through cables.
3. Connect switches in a **linear series**: Switch0 ↔ Switch1 ↔ Switch2 ↔ Switch3.
4. Assign IP addresses to PCs.
5. Use `ping` to test connectivity between all PCs.

![image](https://github.com/user-attachments/assets/56410eb2-bc2e-46bb-a0cf-ae1ae98cf7e1)

---

### **2. Star Topology**

#### **Description**:

All PCs are connected to **a single central switch**.

#### **Steps**:

1. Place 4 PCs and 1 switch.
2. Connect all PCs to the single switch.
3. Assign IP addresses to all PCs.
4. Test communication using `ping` commands.

![image](https://github.com/user-attachments/assets/d86efeb4-f9a7-4ffd-9b5a-4749b34301a5)

---

### **3. Ring Topology**

#### **Description**:

Each PC is connected to a switch, and the **switches are connected in a closed loop (ring)**.

#### **Steps**:

1. Place 4 PCs and 4 switches.
2. Connect each PC to its own switch.
3. Connect the switches in a ring:
    - Switch0 ↔ Switch1 ↔ Switch2 ↔ Switch3 ↔ Switch0
4. Assign IP addresses to PCs.
5. Verify connectivity with `ping`.

![image](https://github.com/user-attachments/assets/1753763f-e702-42d7-9341-1737ad0abdc3)

---

### **4. Mesh Topology**

#### **Description**:

Each PC is connected to a switch, and **all switches are interconnected** (full mesh).

#### **Steps**:

1. Place 4 PCs and 4 switches.
2. Connect each PC to its own switch.
3. Connect every switch to every other switch:
    - Switch0 ↔ Switch1, Switch2, Switch3
    - Switch1 ↔ Switch2, Switch3
    - Switch2 ↔ Switch3
4. Assign IP addresses to PCs.
5. Use `ping` to verify communication.

![image](https://github.com/user-attachments/assets/24d11937-8d74-49ac-83c7-1dcfb1b0f959)

---

## **Testing Commands** (for each PC):

```bash
ping 192.0.0.x
```

Use this in the **Command Prompt** of each PC to test connectivity to the other PCs.

---

## **Observations**:

|Topology|Central Device|Complexity|Fault Tolerance|Cable Usage|
|---|---|---|---|---|
|Bus|None (Linear)|Low|Low|Low|
|Star|Single Switch|Moderate|Moderate|Moderate|
|Ring|Loop of Switches|Moderate|Moderate|Moderate|
|Mesh|Fully Connected Switches|High|High|High|
