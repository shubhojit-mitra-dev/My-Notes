### **What are Primitive Types?**

Primitive types are the most basic data types in JavaScript. They represent single values (not objects) and are immutable, meaning their value cannot be changed. When you work with a primitive value, you are dealing directly with the value itself, not a reference to it.

There are **7 primitive types** in JavaScript:

1. **[[Primitive Types#**1. String**|String]]**
2. **[[Primitive Types#**2. Number**|Number]]**
3. **[[Primitive Types#**3. Boolean**|Boolean]]**
4. **[[Primitive Types#**4. Null**|Null]]**
5. **[[Primitive Types#**5. Undefined**|Undefined]]**
6. **[[Primitive Types#**6. Symbol**|Symbol]]** (introduced in ES6)
7. **[[Primitive Types#**7. BigInt**|BigInt]]** (introduced in ES2020)

---
### **1. String**

A `string` is a sequence of characters enclosed in single quotes (`'`), double quotes (`"`), or backticks (`` ` ``).

**Examples:**

```javascript
let singleQuote = 'Hello, world!'; // Single quotes
let doubleQuote = "Hello, world!"; // Double quotes
let backticks = `Hello, ${singleQuote}`; // Backticks allow template literals

// Common operations
let name = "Alice";
console.log(name.length); // Length of the string -> 5
console.log(name.toUpperCase()); // Convert to uppercase -> "ALICE"
console.log(name[0]); // Access character by index -> "A"
```

**Key Points for Interviews:**

- Strings are immutable (e.g., you cannot change individual characters).
- Be familiar with string methods like `concat()`, `includes()`, `slice()`, `split()`, etc.

---
### **2. Number**

A `number` in JavaScript can be an integer or a floating-point value. JavaScript uses the IEEE 754 standard, so numbers are stored as 64-bit floating-point values.

**Examples:**

```javascript
let intNum = 42;         // Integer
let floatNum = 3.14;     // Floating-point number
let scientific = 1e6;    // Scientific notation (1 * 10^6) -> 1000000

// Arithmetic operations
console.log(10 + 5); // Addition -> 15
console.log(10 / 2); // Division -> 5
console.log(2 ** 3); // Exponentiation -> 8

// Special numbers
console.log(0 / 0); // NaN (Not-a-Number)
console.log(Infinity + 1); // Infinity
console.log(-Infinity); // Negative Infinity
```

**Key Points for Interviews:**

- Understand `NaN`, `Infinity`, and how JavaScript handles edge cases (e.g., `1 / 0`).
- Floating-point precision issues (e.g., `0.1 + 0.2 !== 0.3`).

---
### **3. Boolean**

A `boolean` represents a logical entity and can have only two values: `true` or `false`.

**Examples:**

```javascript
let isJavaScriptFun = true;  // Boolean value
let isGreater = 10 > 5;      // Comparison -> true
console.log(Boolean(0));     // Convert to boolean -> false
console.log(Boolean(""));    // Empty string -> false
```

**Key Points for Interviews:**

- Truthy vs Falsy values (e.g., `0`, `null`, `undefined`, `""` are falsy).

---
### **4. Null**

`null` represents the intentional absence of any object value. It's often used as a placeholder.

**Examples:**

```javascript
let emptyValue = null; // Variable explicitly has "no value"
console.log(typeof null); // "object" (historical bug in JavaScript)
```

**Key Points for Interviews:**

- Difference between `null` and `undefined`.
- Why `typeof null` is `"object"` (it's a bug in JavaScript).

---
### **5. Undefined**

`undefined` means a variable has been declared but has not yet been assigned a value.

**Examples:**

```javascript
let unassigned; // No value assigned
console.log(unassigned); // undefined
console.log(typeof unassigned); // "undefined"
```

**Key Points for Interviews:**

- Default value of uninitialized variables is `undefined`.
- Difference between `undefined` and `null`.

---
### **6. Symbol**

A `Symbol` is a unique and immutable value, often used as object keys to avoid naming collisions.

**Examples:**

```javascript
let sym1 = Symbol("id");
let sym2 = Symbol("id");
console.log(sym1 === sym2); // false (each Symbol is unique)

// Using Symbol as a key
let obj = {};
obj[sym1] = "Unique Identifier";
console.log(obj[sym1]); // "Unique Identifier"
```

**Key Points for Interviews:**

- Symbols are always unique, even if they have the same description.
- Useful in avoiding key collisions in objects.

---
### **7. BigInt**

`BigInt` is used to represent integers larger than `Number.MAX_SAFE_INTEGER` (2^53 - 1).

**Examples:**

```javascript
let bigNum = 123456789012345678901234567890n; // Note the 'n' at the end
let smallNum = BigInt(123);
console.log(bigNum + smallNum); // BigInt arithmetic
```

**Key Points for Interviews:**

- BigInts cannot be mixed with regular numbers (`TypeError`).
- Use BigInt for handling very large integers.

---

### Summary Table

| Type      | Example         | Notes                                       |
| --------- | --------------- | ------------------------------------------- |
| String    | `"Hello"`       | Immutable, use string methods               |
| Number    | `42`, `3.14`    | Includes integers, floating points          |
| Boolean   | `true`, `false` | Logical values                              |
| Null      | `null`          | Intentional absence of value                |
| Undefined | `undefined`     | Default value for uninitialized vars        |
| Symbol    | `Symbol("key")` | Unique and immutable                        |
| BigInt    | `123n`          | For integers larger than `MAX_SAFE_INTEGER` |

---
### **Interview Questions on Primitive Data Types**

#### **1. What is the difference between `null` and `undefined`?**

**Answer:**

- **`null`**: Represents an intentional absence of value. It is explicitly assigned to a variable.
- **`undefined`**: Represents a variable that has been declared but not assigned a value.

**Code Example:**

```javascript
let a = null;         // Variable explicitly has no value
let b;                // Variable declared but not assigned
console.log(a);       // null
console.log(b);       // undefined
console.log(a === b); // false (different types)
```

---
#### **2. Why is `typeof null` equal to `"object"`?**

**Answer:** This is a **historical bug** in JavaScript. `null` was intended to represent "no object", but `typeof null` returns `"object"` due to how types were implemented in the early days of JavaScript.

---
#### **3. What are truthy and falsy values in JavaScript?**

**Answer:**

- **Truthy**: Any value that evaluates to `true` in a Boolean context.
- **Falsy**: Values that evaluate to `false` in a Boolean context. Falsy values include: `false`, `0`, `""` (empty string), `null`, `undefined`, and `NaN`.

**Code Example:**

```javascript
let truthy = "Hello";  // Non-empty string is truthy
let falsy = 0;         // 0 is falsy

if (truthy) console.log("This is truthy"); // Executes
if (!falsy) console.log("This is falsy");  // Executes
```

---
#### **4. How does JavaScript handle floating-point arithmetic issues like `0.1 + 0.2`?**

**Answer:** JavaScript follows the IEEE 754 standard for floating-point arithmetic, which can lead to precision issues.

**Code Example:**

```javascript
console.log(0.1 + 0.2);         // 0.30000000000000004
console.log((0.1 + 0.2).toFixed(2)); // "0.30" (fix using `.toFixed`)
```

---
#### **5. What is the difference between `==` and `===` in JavaScript?**

**Answer:**

- **`==`**: Performs type coercion, converting operands to the same type before comparison.
- **`===`**: Does not perform type coercion and checks for strict equality.

**Code Example:**

```javascript
console.log(5 == "5");  // true (type coercion)
console.log(5 === "5"); // false (strict comparison)
```

---
#### **6. How can you check if a value is NaN?**

**Answer:** Use the global `isNaN()` function or the modern `Number.isNaN()` method for a stricter check.

**Code Example:**

```javascript
console.log(isNaN("hello"));         // true (legacy behavior)
console.log(Number.isNaN("hello"));  // false (modern approach)
console.log(Number.isNaN(0 / 0));    // true
```

---
#### **7. How are `BigInt` and `Number` different, and how do you use `BigInt`?**

**Answer:**

- `BigInt` is used for integers larger than `Number.MAX_SAFE_INTEGER`.
- You cannot mix `BigInt` and `Number` in arithmetic operations.

**Code Example:**

```javascript
let bigInt = 123456789012345678901234567890n;
let num = 123;
console.log(bigInt + BigInt(num));  // 123456789012345678901234567913n
```

---
#### **8. Can you explain immutability of strings in JavaScript?**

**Answer:** Strings are immutable, meaning their value cannot be changed once created. Operations like concatenation or replacement return a new string.

**Code Example:**

```javascript
let str = "Hello";
str[0] = "J";         // This has no effect
console.log(str);      // "Hello"

let newStr = str + " World!";
console.log(newStr);   // "Hello World!" (new string created)
```

---
#### **9. What will this code print?**

```javascript
console.log(typeof NaN);
console.log(typeof Infinity);
console.log(typeof null);
```

**Answer:**

- `typeof NaN` -> `"number"` (NaN is still a type of number).
- `typeof Infinity` -> `"number"` (Infinity is treated as a numeric value).
- `typeof null` -> `"object"` (historical bug).

---
#### **10. Write a function to check if a variable is a primitive type.**

**Answer:** **Code Example:**

```javascript
function isPrimitive(value) {
  return (
    value === null || 
    (typeof value !== "object" && typeof value !== "function")
  );
}

console.log(isPrimitive(42));        // true
console.log(isPrimitive("Hello"));   // true
console.log(isPrimitive({}));        // false
console.log(isPrimitive(null));      // true
console.log(isPrimitive(Symbol()));  // true
```
