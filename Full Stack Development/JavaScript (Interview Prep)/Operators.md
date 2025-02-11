#### **Definition**

Operators in JavaScript are special symbols or keywords used to perform operations on values (operands). They allow us to manipulate data, compare values, perform arithmetic, and more.

---

### **Categories of Operators**

1. **[[Operators#**1. Arithmetic Operators**|Arithmetic Operators]]**
2. **[[Operators#**2. Assignment Operators**|Assignment Operators]]**
3. **[[Operators#**3. Comparison Operators**|Comparison Operators]]**
4. **[[Operators#**4. Logical Operators**|Logical Operators]]**
5. **[[Operators#**5. Bitwise Operators**|Bitwise Operators]]**
6. **[[Operators#**6. String Operators**|String Operators]]**
7. **[[Operators#**7. Ternary Operator**|Ternary (Conditional) Operator]]**
8. **[[Operators#**8. Unary Operators**|Unary Operators]]**
9. **[[Operators#**9. Type Operators**|Type Operators]]**
10. **[[Operators#**10. Nullish Coalescing Operator (`??`)**|Nullish Coalescing Operator]]**

---

### **1. Arithmetic Operators**

Used for basic mathematical operations.

|Operator|Description|Example|Output|
|---|---|---|---|
|`+`|Addition|`5 + 3`|`8`|
|`-`|Subtraction|`5 - 3`|`2`|
|`*`|Multiplication|`5 * 3`|`15`|
|`/`|Division|`5 / 2`|`2.5`|
|`%`|Modulus (Remainder)|`5 % 2`|`1`|
|`**`|Exponentiation|`5 ** 2`|`25`|

**Examples**

```javascript
console.log(10 + 20);  // 30
console.log(10 % 3);   // 1
console.log(2 ** 3);   // 8
```

---
### **2. Assignment Operators**

Used to assign values to variables.

|Operator|Description|Example|Equivalent to|
|---|---|---|---|
|`=`|Assign|`a = 10`|-|
|`+=`|Add and assign|`a += 5`|`a = a + 5`|
|`-=`|Subtract and assign|`a -= 3`|`a = a - 3`|
|`*=`|Multiply and assign|`a *= 2`|`a = a * 2`|
|`/=`|Divide and assign|`a /= 2`|`a = a / 2`|
|`%=`|Modulus and assign|`a %= 2`|`a = a % 2`|

**Examples**

```javascript
let num = 10;
num += 5; // num = 15
num *= 2; // num = 30
console.log(num);
```

---
### **3. Comparison Operators**

Used to compare two values and return a boolean result.

|Operator|Description|Example|Output|
|---|---|---|---|
|`==`|Equal to|`5 == "5"`|`true`|
|`===`|Strictly equal|`5 === "5"`|`false`|
|`!=`|Not equal|`5 != "6"`|`true`|
|`!==`|Strictly not equal|`5 !== "5"`|`true`|
|`>`|Greater than|`5 > 3`|`true`|
|`<`|Less than|`5 < 3`|`false`|
|`>=`|Greater or equal|`5 >= 5`|`true`|
|`<=`|Less or equal|`5 <= 4`|`false`|

**Examples**

```javascript
console.log(5 == "5");  // true
console.log(5 === "5"); // false
console.log(10 > 3);    // true
```

---
### **4. Logical Operators**

Used to perform logical operations.

| Operator | Description | Example             | Output  |
| -------- | ----------- | ------------------- | ------- |
| `&&`     | Logical AND | `true && false`     | `false` |
| \|\|     | Logical OR  | `true` \|\| `false` | `true`  |
| `!`      | Logical NOT | `!true`             | `false` |

**Examples**

```javascript
let a = 10, b = 20;
console.log(a > 5 && b < 30); // true
console.log(a > 15 || b > 10); // true
console.log(!(a > 5));        // false
```

---
### **5. Bitwise Operators**

Operate on binary representations of numbers.

| Operator | Description | Example  | Output |
| -------- | ----------- | -------- | ------ |
| `&`      | AND         | `5 & 1`  | `1`    |
| \|       | OR          | 5 \| 1   | `5`    |
| `^`      | XOR         | `5 ^ 1`  | `4`    |
| `~`      | NOT         | `~5`     | `-6`   |
| `<<`     | Left shift  | `5 << 1` | `10`   |
| `>>`     | Right shift | `5 >> 1` | `2`    |

---

### **6. String Operators**

Used to concatenate strings.

|Operator|Description|Example|Output|
|---|---|---|---|
|`+`|Concatenation|`"Hello" + "!"`|`"Hello!"`|
|`+=`|Add and assign|`greeting += "!"`|`greeting + "!"`|

---

### **7. Ternary Operator**

A shorthand for `if-else` conditions. For more elaborate definition: [[Control Flow Statements#**4. Ternary Operator**|Ternary Operator]]. 

```javascript
let age = 18;
let status = age >= 18 ? "Adult" : "Minor";
console.log(status); // "Adult"
```

---
### **8. Unary Operators**

Operate on a single operand.

|Operator|Description|Example|Output|
|---|---|---|---|
|`+`|Unary plus|`+true`|`1`|
|`-`|Unary negation|`-true`|`-1`|
|`++`|Increment|`a++`|Increases by 1|
|`--`|Decrement|`a--`|Decreases by 1|
|`typeof`|Type of variable|`typeof "abc"`|`"string"`|
|`delete`|Delete a property|`delete obj.a`|`true` (if deleted)|

---

### **9. Type Operators**

- `typeof`: Checks the type of a variable.
- `instanceof`: Checks if an object is an instance of a class.

---

### **10. Nullish Coalescing Operator (`??`)**

Returns the right-hand operand if the left-hand operand is `null` or `undefined`.

```javascript
let name = null;
let greeting = name ?? "Hello, Guest!";
console.log(greeting); // "Hello, Guest!"
```

---
### **Interview Questions**

11. **What’s the difference between `==` and `===`?**
    
    - `==`: Compares values with type coercion.
    - `===`: Compares values without type coercion.
    
12. **Predict the output:**

```javascript
console.log("5" - 2);    // 3
console.log("5" + 2);    // "52"
console.log(5 + true);   // 6
console.log(5 == "5");   // true
console.log(5 === "5");  // false
```

13. What is the output of the following code?

```javascript
let result = null || undefined || "Hello";
console.log(result); // "Hello"
```

14. Write a program to check if a number is odd or even using a ternary operator.

```javascript
let num = 7;
let result = (num % 2 === 0) ? "Even" : "Odd";
console.log(result); // "Odd"
```
