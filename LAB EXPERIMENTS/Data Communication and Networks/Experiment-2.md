# Experiment-2

## **Bit Stuffing:**

In data transmission, certain patterns of bits (like `01111110` or `01111111`) are used to mark the beginning and end of a data frame, called a **flag**. If the data you are transmitting already contains this pattern, it can confuse the receiver into thinking it's a flag, which is not the case.

To prevent this confusion, **bit stuffing** is used to insert extra bits into the data stream to break up any sequence of bits that might match the flag pattern.

### **How Bit Stuffing Works:**
Whenever five consecutive `1`s (i.e., `11111`) appear in the data, a `0` bit is inserted after them.
This ensures that the pattern `01111110` (which might be confused as a flag) never appears in the actual data.

**Example:**
Let’s say we want to send the data:

```bash
111110101111
```

This data contains five consecutive 1s (`11111`), so we need to stuff a `0` after those 1s to prevent it from being mistaken for a flag. The stuffed data would be:

```bash
1111101011110
```
Now, the receiver knows that whenever it sees five `1`s in a row, followed by a `0`, the `0` is not part of the data and should be removed during **destuffing**.

---

## **Bit Destuffing:**

On the receiving end, **destuffing** is the reverse process. The receiver removes any stuffed bits (the extra `0` that was inserted after five consecutive `1`s).

### **How Destuffing Works:**
The receiver scans the data stream and looks for a sequence of `11111` followed by a `0`.
When this pattern is found, the `0` is removed, restoring the original data.

**Example:**
If the receiver gets the data:

```bash
1111101011110
```

It sees that there are five `1`s followed by a `0`, so it removes the `0`, resulting in:

```bash
111110101111
```

This is the original data that was sent.

---

## **Python Code**

### Bit Stuffing:

```python
def bit_stuffing(arr):
    stuffed_data = []
    count = 0
    
    for bit in arr:
        stuffed_data.append(bit)
        if bit == 1:
            count += 1
        else:
            count = 0
        
        # If we encounter 5 consecutive '1's, insert a '0' after them
        if count == 5:
            stuffed_data.append(0)
            count = 0  # Reset count after stuffing a '0'
    
    return stuffed_data
```

### Bit Destuffing:

```python
def bit_destuffing(stuffed_data):
    destuffed_data = []
    count = 0
    
    i = 0
    while i < len(stuffed_data):
        destuffed_data.append(stuffed_data[i])
        
        if stuffed_data[i] == 1:
            count += 1
        else:
            count = 0
        
        # If we encounter 5 consecutive '1's followed by '0', skip the '0'
        if count == 5 and i+1 < len(stuffed_data) and stuffed_data[i+1] == 0:
            i += 1  # Skip the '0' stuffed after five '1's
        
        i += 1
    
    return destuffed_data
```

#### Let's Test our code:

```python
arr = [1, 1, 1, 1, 1, 1]
print("Original Data:", ''.join(map(str, arr)))
stuffed_data = bit_stuffing(arr)
print("Stuffed Data:", ''.join(map(str, stuffed_data)))

destuffed_data = bit_destuffing(stuffed_data)
print("Destuffed Data:", ''.join(map(str, destuffed_data)))

arr = [1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1]
print("Original Data:", ''.join(map(str, arr)))
stuffed_data = bit_stuffing(arr)
print("Stuffed Data:", ''.join(map(str, stuffed_data)))

destuffed_data = bit_destuffing(stuffed_data)
print("Destuffed Data:", ''.join(map(str, destuffed_data)))
```

Output:
```bash
Original Data: 111111
Stuffed Data: 1111101
Destuffed Data: 111111
Original Data: 111110101111
Stuffed Data: 1111100101111
Destuffed Data: 111110101111
```