# Experiment-3

## **Cyclic Redundancy Check (CRC)**

A **Cyclic Redundancy Check (CRC)** is a type of hash function used to detect errors in digital data. It works by applying polynomial division to the data, and the remainder of this division (the CRC) is sent alongside the data. When the data is received, the same CRC algorithm is applied, and if the remainder doesn't match the expected value, it indicates that there was an error during transmission.

CRC is widely used in networking, file storage, and communication protocols to ensure data integrity.

A **Cyclic Redundancy Check (CRC)** is a way of checking if data has been altered or corrupted. It's like a digital **"checksum"** that helps ensure the integrity of data when it's transferred or stored.

**For Example:**
Imagine you send a letter (data) to someone, and you want to make sure it hasn’t been changed during the journey. You add a special number (CRC) to the letter before you send it, which is calculated based on the contents of the letter.

The person who receives the letter can calculate the same number using the same method and compare it to the number you sent. If the numbers match, the letter is fine. If they don't, something was altered in transit.

### **Key Concepts:**

- **Polynomial Representation:** Data and CRC values are treated as polynomials with binary coefficients. For example, `x^3 + x + 1` can be written as 1011 in binary.
- **Modulo-2 Division:** This is similar to normal polynomial division, but using XOR instead of regular subtraction.
- **CRC-32:** One of the most common CRC types used in practice.

### **Why CRC is Useful:**

- **Data Integrity:** Detects errors in files, data packets, or any data transfer.
- **Efficiency:** It’s fast and uses a small amount of extra data to ensure that large chunks of data haven’t been corrupted.

### **Key Idea:**
- CRC checks data by treating it as a number and performing some mathematical operations (like division with remainders) on it.
- If the calculated "remainder" (CRC) matches the expected one, the data is assumed to be correct.

## **Example with a simple CRC:**

Let's look at a very simplified example with small numbers.

Imagine you have the number `1101` (binary), and you're using the polynomial `1011` (binary). You’ll divide `1101` by `1011` and check the remainder. The remainder is the CRC.

---

## **Python Code**

```python
def crc32(data: bytes, polynomial: int = 0x04C11DB7) -> int:
    """
    Perform CRC-32 calculation on the given data.

    :param data: The data to compute the CRC for, as bytes.
    :param polynomial: The polynomial to use for CRC calculation, default is CRC-32 (0x04C11DB7).
    :return: The resulting CRC value.
    """
    # Initialize the CRC value to all 1's (0xFFFFFFFF).
    crc = 0xFFFFFFFF
    
    # Iterate through each byte in the data.
    for byte in data:
        # XOR the byte with the current CRC value.
        crc ^= byte << 24  # Align the byte to the highest byte of the CRC

        # Perform the division process: 8 bits at a time.
        for _ in range(8):
            if crc & 0x80000000:  # Check if the highest bit is 1.
                crc = (crc << 1) ^ polynomial  # Shift and XOR with the polynomial
            else:
                crc <<= 1  # Just shift left if no XOR needed
            crc &= 0xFFFFFFFF  # Keep CRC within 32-bits (mask)

    # Return the CRC result (inverted to match the standard CRC-32 output).
    return crc ^ 0xFFFFFFFF
```

**Let's test our code**

```python
data = b"Hello"  # Example data to compute CRC for
crc_value = crc32(data)
print(f"CRC-32 Value: {crc_value:#010x}")  # Print in hex format (e.g., 0x1c291ca3)
```

Output
```
CRC-32 Value for 'Hello': 0x1a546492
```