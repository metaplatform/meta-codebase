::: warning
**This specification is first draft under active development. Everything can change.**
:::

## Introduction

Purpose of META API is to specify unified communication protocol for META Platform components.

META API is socket-based objective RPC with support of publish/subscribe pattern.

:::sidecode-h3
```text
#Root object
/

#Contacts collection
/contacts/
/contacts/@get

#Contacts record
/contacts/3
/contacts/3/@get

#Record property
/contacts/3/first_name
/contacts/3/first_name/@get
/contacts/3/first_name/@set

#Record method
/contacts/3/@send_mail
```
:::

### Characteristics

Today almost all data structures are objects which has properties. META API is based on this principle and copies object structure.

Also reactivness is becoming a standard so META API supports this feature via pub/sub pattern.

- Each path resource (directory) represents a object property (API root is root object)
- Property is object as well
- Property can be a callable method
- Each object except method has schema (class) which defines its properties and behaviour
- When no method `@methodName` is specified then property (object) schema is returned
- Object schemas can implement interface which defines common method and properties (for example: collection with filtering, sorting and pagination)
- Clients can subscribe to channels
- Server can (and should) publish object changes to channels