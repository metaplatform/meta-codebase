::: sidecode
### Define view template

```html
<template is="meta-view" id="my-template">

    <p>This is meta-view template content where X = <span class="x">?</span></p>

    <button>Increment X</button>

</template>

<div id="target"></div>
```

### Create view

```javascript
var view = document.getElementById('my-template');
var target = document.getElementById('target');

//Create instance and define template rules
var instance = view.instance(target, {
    ".x": "x"
});

//Set model values
instance.model.x = 0;

//Do the first render
instance.render();
```
:::

## Views

MetaJS provides View component which is wrapper for templates and adds view-logic and other features such as automatic event-binding and name-based access.

### Template definition & view logic

Views are extending native html template tag and provides its instacing. View wraps MetaJS templating engine and provides nice interface for view logic definition.

### Event binding

Views provides automatic event binding when template data changed. So you define event bindings once and when nodes are added or changed their events are automatically binded.

### Global registry
Views can be defined only once and can be added to registry so other components can access it via name reference.