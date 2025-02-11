
#### **Definition**

Type conversion and type coercion are processes by which JavaScript converts values from one data type to another.

- **Type Conversion (Explicit)**: When a developer manually converts a value from one type to another.
- **Type Coercion (Implicit)**: When JavaScript automatically converts a value to another type during operations or comparisons.

---
### **Type Conversion (Explicit)**

JavaScript provides functions and techniques to explicitly convert data types.

#### **String Conversion**

Convert values to a [[Primitive Types#1. String|string]] using the `String()` function or concatenation.

```javascript
let num = 42;
let str = String(num); // Explicit conversion
console.log(typeof str); // "string"

let bool = true;
console.log(bool + ""); // Implicit conversion to string
```

#### **Number Conversion**

Convert values to [[Primitive Types#**2. Number**|numbers]] using the `Number()` function or unary `+`.

```javascript
let str = "123";
let num = Number(str); // Explicit conversion
console.log(typeof num); // "number"

let bool = true;
console.log(+bool); // 1
```

#### **Boolean Conversion**

Convert values to [[Primitive Types#**3. Boolean**|boolean]] using the `Boolean()` function.

```javascript
let str = "Hello";
console.log(Boolean(str)); // true

let zero = 0;
console.log(Boolean(zero)); // false
```

#### **Key Points**

- [[Truthy and Falsy Values#**1. Falsy Values**|Falsy values]]: `0`, `""`, `null`, `undefined`, `NaN`, `false`
- [[Truthy and Falsy Values#**2. Truthy Values**|Truthy values]]: Everything else

---

### **Type Coercion (Implicit)**

JavaScript often coerces data types automatically when performing operations.

#### **String Coercion**

Occurs during concatenation with a [[Primitive Types#**1. String**|string]].

```javascript
let num = 10;
let result = num + " apples";
console.log(result); // "10 apples"
```

#### **Number Coercion**

Occurs during [[Operators#**1. Arithmetic Operators**|arithmetic operations]] with [[Primitive Types#**2. Number**|numbers]].

```javascript
let str = "5";
console.log(str * 2); // 10
```

#### **Boolean Coercion**

Occurs in [[Operators#**4. Logical Operators**|logical operations]] or [[Control Flow Statements#**1. If-Else Statements**|conditions]].

```javascript
let value = 0;
if (value) {
  console.log("Truthy");
} else {
  console.log("Falsy"); // This runs
}
```

---
### **Special Cases**

1. **`null` and `undefined`**
    
    - `Number(null)` → `0`
    - `Number(undefined)` → `NaN`
    
2. **Empty strings**
    
    - `Number("")` → `0`
    - `Boolean("")` → `false`
    
3. **`NaN`**
    
    - A result of invalid mathematical operations.
    - Example: `Number("abc")` → `NaN`
    
4. **Adding numbers and strings**

```javascript
console.log(1 + "2" + 3); // "123" (string concatenation)
console.log(1 + 2 + "3"); // "33"
```

---
### **Examples**

#### String Conversion Example

```javascript
let age = 25;
let message = "I am " + age + " years old.";
console.log(message); // "I am 25 years old."
```

#### Number Conversion Example

```javascript
let str = "100";
console.log(Number(str) + 50); // 150
```

#### Boolean Conversion Example

```javascript
console.log(Boolean(0)); // false
console.log(Boolean("Hello")); // true
```

---
### **Interview Questions**

**1. Explain the difference between type conversion and type coercion.**

- **Type conversion**: Explicitly converting a value (e.g., `Number("123")`).
- **Type coercion**: Implicit conversion by JavaScript during operations (e.g., `"123" * 2`).

**2. What are falsy values in JavaScript?**

- Falsy values: `0`, `""`, `null`, `undefined`, `NaN`, `false`.

**3. Predict the output:**

```javascript
console.log(1 + "2" + 3); // "123"
console.log(1 + 2 + "3"); // "33"
console.log("5" - 3);     // 2
console.log("five" * 2);  // NaN
```

**4. How can you convert a string to a number?**

```javascript
// Using Number()
let str = "123";
let num = Number(str);

// Using parseInt()
let num2 = parseInt(str, 10);

// Using unary +
let num3 = +str;

console.log(num, num2, num3); // 123, 123, 123
```

**5. Predict the output:**

```javascript
console.log(null + 5); // 5
console.log(undefined + 5); // NaN
console.log(" " + 0); // " 0"
```

