#### **What are Non-Primitive Data Types**

Non-primitive types, also known as reference types, are data types that store collections of data or more complex structures. Unlike [[Primitive Types|primitives]], non-primitives are mutable, and their values are stored as [[Values & References#**Reference**|references]] in memory.

#### **Types of Non-Primitive Data**

1. **Objects**
2. **Arrays**
3. **Functions**
4. **Dates**
5. **Regular Expressions (RegExp)**
6. **Errors**

#### **Key Differences Between Primitives and Non-Primitives**

1. **Storage**:
    
    - Primitive types store values directly in memory.
    - Non-primitive types store references to the memory location where the data is stored.
    
2. **Mutability**:
    
    - Primitive types are immutable (values cannot be changed).
    - Non-primitive types are mutable (values can be changed).
    
3. **Equality Check**:
    
    - Primitive types are compared by value.
    - Non-primitive types are compared by reference.
    
    Example:
    
  ```javascript
let a = [1, 2, 3];
let b = [1, 2, 3];
console.log(a === b); // false (different references)
	```

---
### **Basic Example**

```javascript
// Primitive vs Non-Primitive
let primitiveValue = 10; 
let nonPrimitiveValue = { key: "value" };

let anotherPrimitive = primitiveValue; 
let anotherNonPrimitive = nonPrimitiveValue;

// Changing primitive doesn't affect the other
anotherPrimitive = 20;
console.log(primitiveValue); // 10

// Changing non-primitive affects the other (reference shared)
anotherNonPrimitive.key = "newValue";
console.log(nonPrimitiveValue.key); // "newValue"
```

---
### **Common Questions for Non-Primitive Types Overview**

**1. What is the difference between primitives and non-primitives?**

- Primitives store values directly, are immutable, and are compared by value.
- Non-primitives store references, are mutable, and are compared by reference.

**2. Can a primitive type be converted to a non-primitive type?**

- Yes, using object wrappers like `Number`, `String`, and `Boolean`.
    
    Example:
    
```javascript
let num = 42;
let wrappedNum = new Number(num);
console.log(typeof wrappedNum); // "object"
```
