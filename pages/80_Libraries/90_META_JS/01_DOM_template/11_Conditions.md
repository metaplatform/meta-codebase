## Conditions

Condition processing functions reference.

### Behaviour

If condition is satisfied then DOM node is added back to it's parent node if were removed.

If condition is not satisfied then DOM node is stored as is and removed from it's parent.

Parameter binding specifies definition rules which will be processed on child node if condition is satisfied.

Parameter key can also be a function returning a value which will be evaluated instead of context value. See Key, context & scope.

Parameter value can also be a function returning a value which will be used for comparision.

::: clear :::

::: sidecode
### $__if

```javascript
var tpl = Meta.Template(target, {
    ".supplier": $__if("supplier", {
        ".name": "name"
    }),
});
```
:::

### $__if(key, binding) {.tag .func}

Conditions is satisfied if context value is positive, eg.: true / >0 / non empty.

::: clear :::

::: sidecode
### $__ifNot

```javascript
var tpl = Meta.Template(target, {
    "#actions": $__ifNot("disabled")
});
```
:::

### $__ifNot(key, binding) {.tag .func}

Conditions is satisfied if context value is negative, eg.: false / undefined / null / NaN.

::: clear :::

::: sidecode
### $__ifLt

```javascript
var tpl = Meta.Template(target, {
    ".success": $__ifLt("errors.length", 1)
});
```
:::

### $__ifLt(key, value, binding) {.tag .func}

Condition is satisfied if context value is lower then reference value.

::: clear :::

::: sidecode
### $__ifLte

```javascript
var tpl = Meta.Template(target, {
    ".success": $__ifLte("errors.length", 1)
});
```
:::

### $__ifLte(key, value, binding) {.tag .func}

Condition is satisfied if context value is lower then or equal to reference value.

::: clear :::

::: sidecode
### $__ifGt

```javascript
var tpl = Meta.Template(target, {
    ".issues": $__ifGt("issues.length", 0)
});
```
:::

### $__ifGt(key, value, binding) {.tag .func}

Condition is satisfied if context value is greater then reference value.

::: clear :::

::: sidecode
### $__ifGte

```javascript
var tpl = Meta.Template(target, {
    ".issues": $__ifGt("issues.length", 1)
});
```
:::

#### $__ifGte(key, value, binding) {.tag .func}

Condition is satisfied if context value is greater then or equal to reference value.