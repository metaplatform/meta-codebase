## Data binding

Data-binding processing functions reference.

::: sidecode
### $__html
Example usage

```javascript
var tpl = Meta.Template(target, {
    "p.first_name": $__html("first_name"),
});
```
:::

### $__html(key) {.tag .func}

Sets element innerHTML to raw context value.

::: clear :::

::: sidecode
### $__text
Example usage

```javascript
var tpl = Meta.Template(target, {
    "p.first_name": $__text("first_name"),
});
:::

### $__text(key) {.tag .func}

Sets element innerHTML to sanitized context value.

By default if string is provided instead of processing function then $__text is used.

::: clear :::

::: sidecode
### $__string
Example usage

```javascript
var tpl = Meta.Template(target, {
    "p.full_name": $__string("#{first_name} #{last_name}"),
});
```
:::

### $__string(stringPattern) {.tag .func}

Sets element innerHTML to string defined by stringPattern.

Pattern is string where #{key} is replaced by context value.

::: clear :::

::: sidecode
### $__fn
Example usage

```javascript
var tpl = Meta.Template(target, {
    "p.date": $__fn(function(data, context){
        return data.date.toString()
    }),
});
```
:::

### $__fn(fn) {.tag .func}

Sets element innerHTML to value returned by user-function.

User-function accepts data as first parameter, context as second and this is set to current element.

::: clear :::

::: sidecode
### $__filter
Example usage

```javascript
var tpl = Meta.Template(target, {
    "p.last_name": $__filter("uppercase", "last_name"),
});
```
:::

### $__filter(filterName, key) {.tag .func}

Sets element innerHTML to context value filtered by global filter - see filters reference.

::: clear :::

::: sidecode
### $__date
Example usage

```javascript
var tpl = Meta.Template(target, {
    "p.published": $__date("d. m. Y H:i", "published", "-"),
});
```
:::

### $__date(format, key, emptyValue = "NaN") {.tag .func}

Sets element innerHTML to date-formated context value.

Context value must be a timestamp or Date object.

Parameter format is same as in PHP - see PHP's date function reference.

::: clear :::

::: sidecode
### $__attr
Example usage

```javascript
var tpl = Meta.Template(target, {
    "#menu": $__attr("opened", "ui.menu.opened"),
});
```
:::

### $__attr(attributeName, key) {.tag .func}

Sets element attribute specified by attributeName to context value.

::: clear :::

::: sidecode
### $__attrIf
Example usage

```javascript
var tpl = Meta.Template(target, {
    "#menu": $__attrIf("opened", "ui.menu.opened", true),
});
```
:::

### $__attrIf(attributeName, key, empty) {.tag .func}

Sets element attribute specified by attribtueName to context value only if value is positive.

If empty is set to true, attribute will be added without content, eg.: <li completed>...</li>.

::: clear :::

::: sidecode
### $__classIf
Example usage

```javascript
var tpl = Meta.Template(target, {
    "#menu": $__classIf("opened", "ui.menu.opened"),
});
```
:::

### $__classIf(className, key) {.tag .func}

Adds or removes element's css class specified by className if context key is positive or negative.

::: clear :::

::: sidecode
### $__prop
Example usage

```javascript
var tpl = Meta.Template(target, {
    "meta-fragment#todo-list": $__prop("model", "todos"),
});
```
:::

### $__prop(propertyName, key) {.tag .func}

Sets element node object property to context value.