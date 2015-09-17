## Template reference

### Meta.Template(targetElement, binding) {.tag .func}

::: sidecode
```javascript
var tpl = Meta.Template(element, {
    "selector": "model_property"
});
```
:::

Parameter targetElement specifies root element on which bindings will be processed.

Parameter binding specifies definition rules in format "selector": processingFunction.

var instance = Meta.Template(targetElement, binding);

### instance(data) {.tag .func}

::: sidecode
```javascript
instance({
	model: "property"
});
```
:::

Parameter data specifies data values which will be passed to processing functions.

instance(data);