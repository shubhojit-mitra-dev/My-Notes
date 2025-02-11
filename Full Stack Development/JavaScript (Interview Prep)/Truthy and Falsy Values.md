In JavaScript, every value has an inherent truthiness or falsiness when evaluated in a [[Primitive Types#**3. Boolean**|boolean]] context (e.g., inside an [[Control Flow Statements#**1. If-Else Statements**|`if` statement]]).

- **Truthy values**: These are values that evaluate to `true` when used in a boolean context.
- **Falsy values**: These are values that evaluate to `false` when used in a boolean context.

---

### **1. Falsy Values**

There are only **8 falsy values** in JavaScript:

|Falsy Value|Description|
|---|---|
|`false`|Boolean `false`|
|`0`|The number zero|
|`-0`|Negative zero|
|`0n`|BigInt zero (`BigInt(0)`)|
|`""` (empty string)|An empty string (single or double quotes)|
|`null`|Absence of any value|
|`undefined`|A variable declared but not assigned a value|
|`NaN`|Not-a-Number|

**Example: Checking Falsy Values**

```js
if (!0) {
  console.log("0 is falsy"); // This will be printed
}

if (!"") {
  console.log("An empty string is falsy"); // This will be printed
}

if (!null) {
  console.log("null is falsy"); // This will be printed
}
```

---
### **2. Truthy Values**

Everything **except** the 8 falsy values is **truthy** in JavaScript.

**Example of Truthy Values**

```js
if ("hello") {
  console.log("'hello' is truthy"); // This will be printed
}

if (42) {
  console.log("42 is truthy"); // This will be printed
}

if ([]) {
  console.log("An empty array [] is truthy"); // This will be printed
}

if ({}) {
  console.log("An empty object {} is truthy"); // This will be printed
}
```

---

### **3. Using Truthy and Falsy Values in Conditional Statements**

Truthy and falsy values are often used in conditions to simplify code.

**Example: Checking if a Variable is Defined**

```js
let name = "John";

// Instead of checking explicitly
if (name !== "" && name !== null && name !== undefined) {
  console.log("The name is valid.");
}

// We can simply write
if (name) {
  console.log("The name is valid."); // This will be printed
}
```

**Example: Using the Logical OR (`||`) Operator**

```js
let userInput = ""; 
let defaultValue = "Guest";

let username = userInput || defaultValue; // If userInput is falsy, use defaultValue

console.log(username); // Output: "Guest"
```

---

### **4. Best Practices**

- **Use truthy/falsy checks for cleaner conditional statements** instead of explicitly checking `null`, `undefined`, or empty values.  
- **Be careful with `0`, `""`, and `false`**, as they are falsy but may be valid values in your logic.  
- **Use `Boolean(value)` or `!!value`** to explicitly convert a value into `true` or `false`.

**Example: Explicit Conversion to Boolean**

```js
console.log(Boolean("hello")); // true
console.log(Boolean(0));       // false
console.log(Boolean([]));      // true
console.log(Boolean({}));      // true
console.log(Boolean(undefined)); // false
```

---
### **Interview Questions on Truthy and Falsy Values**

1.  **What are the falsy values in JavaScript? **
	* `false, 0, -0, 0n, "", null, undefined, NaN`.
	
2. **How can you check if a variable has a truthy value?**
	* Use an `if` statement or convert it explicitly using `Boolean(value)` or `!!value`.
	
3. **What will be the output of the following code?**

```js
console.log([] ? "Truthy" : "Falsy");  
console.log({} ? "Truthy" : "Falsy");  
console.log("" ? "Truthy" : "Falsy");  
console.log(" " ? "Truthy" : "Falsy");  
```

**Output:**

```js
Truthy
Truthy
Falsy
Truthy
```

4. **How does the `||` (logical OR) operator use truthy and falsy values?**
	* The `||` operator returns the first **truthy** value. If all are falsy, it returns the last falsy value.
	
```js
console.log("" || "default");  // Output: "default"
console.log(0 || "fallback");  // Output: "fallback"
console.log("value" || "fallback");  // Output: "value"
console.log(false || null || undefined || "yes" || "no"); // Output: "yes"
```

5. **How does the `&&` (logical AND) operator use truthy and falsy values?**
	* The `&&` operator returns the first **falsy** value. If all are truthy, it returns the last truthy value.
	
```js
console.log("value" && 42);  // Output: 42
console.log("yes" && false);  // Output: false
console.log("" && "hello");  // Output: ""
console.log("A" && "B" && "C");  // Output: "C"
```

