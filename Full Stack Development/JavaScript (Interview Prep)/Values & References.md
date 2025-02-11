
#### **Definition**

In JavaScript, variables can hold data in two ways:

1. **By Value**: For [[Primitive Types|primitive data types]] (e.g., numbers, strings, booleans).
2. **By Reference**: For [[Non-Primitive Types|non-primitive data types]] (e.g., objects, arrays, functions).

Understanding the difference is crucial as it directly impacts how variables are copied, compared, and manipulated

---
### **Key Concepts**

#### **Value**

- When assigning a [primitive](Primitive%20Types) value to a variable, the value itself is stored in the variable.
- When copying a variable holding a primitive value, a new copy of the value is created. Changes to one do not affect the other.

#### Example:

```javascript
let a = 5;  // Primitive value
let b = a;  // Copy of the value stored in `a`
b = 10;     // Modifying `b` does not affect `a`
console.log(a); // 5
console.log(b); // 10
```

---
#### **Reference**

- [Non-primitive data types](Non-Primitive%20Types) are stored in memory as references (pointers).
- When assigning or copying a variable that holds a reference, the reference is copied, not the actual data. Both variables point to the same memory location.

#### Example:

```javascript
let obj1 = { name: "Alice" };  // Non-primitive value (object)
let obj2 = obj1;              // Copy of the reference
obj2.name = "Bob";            // Modifies the original object
console.log(obj1.name); // "Bob"
console.log(obj2.name); // "Bob"
```

---
### **Key Differences**

| **Aspect**     | **By Value (Primitive)**        | **By Reference (Non-Primitive)**    |
| -------------- | ------------------------------- | ----------------------------------- |
| **Storage**    | Stores the actual value         | Stores a reference (memory address) |
| **Copying**    | Creates a new, independent copy | Copies the reference                |
| **Comparison** | Compared by value               | Compared by reference               |

---
### **Common Mistakes**

3. Assuming that copying an object creates a new independent object:

```javascript
let arr1 = [1, 2, 3];
let arr2 = arr1; // Both refer to the same array
arr2.push(4);
console.log(arr1); // [1, 2, 3, 4]
```

4. Confusing equality comparison for references:

```javascript
let objA = { x: 1 };
let objB = { x: 1 };
console.log(objA === objB); // false (different references)
```

---
### **How to Create Independent Copies of Non-Primitives**

To avoid shared references, you can create deep or shallow copies of non-primitives.

#### **Shallow Copy**

Copies only the first level of data (not nested objects or arrays).

```javascript
let original = { x: 10, y: { z: 20 } };
let shallowCopy = { ...original }; // Spread operator
shallowCopy.x = 50;
shallowCopy.y.z = 100;

console.log(original.y.z); // 100 (nested object still shared)
```

#### **Deep Copy**

Creates a completely independent copy of all levels of data.

```javascript
let original = { x: 10, y: { z: 20 } };
let deepCopy = JSON.parse(JSON.stringify(original));
deepCopy.y.z = 100;

console.log(original.y.z); // 20 (independent copy)
```

---
### **Common Interview Questions**

**1. What is the difference between value and reference in JavaScript?**

- **Value**: Stores the actual value. Copying creates independent variables.
- **Reference**: Stores a pointer to the memory location. Copying shares the same memory location.

**2. How do you create a copy of an object?**

- **Shallow copy**: Use the spread operator or `Object.assign()`.
- **Deep copy**: Use `JSON.parse(JSON.stringify())` or a utility library like Lodash.

**3. What happens when you compare two objects in JavaScript?**

- Objects are compared by reference, not value. Even if two objects have the same properties, they are not equal unless they reference the same memory location.
    
    Example:

```javascript
let a = { x: 1 };
let b = { x: 1 };
console.log(a === b); // false
```

**4. Write a function to clone an object.**

```javascript
function cloneObject(obj) {
  return JSON.parse(JSON.stringify(obj));
}

let obj1 = { a: 1, b: { c: 2 } };
let obj2 = cloneObject(obj1);

obj2.b.c = 5;
console.log(obj1.b.c); // 2 (independent copy)
```
