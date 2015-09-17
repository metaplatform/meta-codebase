## Element `<meta-view>` reference

Element `meta-view` defines view component.

::: sidecode-h3
### Creating template
```html
<template is="meta-view" name="com.example.view">
    ...
</template>
```
:::

### `name="string"` {.tag .attr}

When name attribute is set then view is registered globaly and can be access by it's name.

::: clear :::

::: sidecode-h3
### Creating instance

```javascript
var instance = Meta.views["com.example.view"].instance(target, {
	".selector": "model_property"
	//...
});
```
:::

### instance(targetElement, binding) {.tag .func}

Instance method materializes template and returns new view instance.

Parameters targetElement and binding are passed to DOM templating engine.