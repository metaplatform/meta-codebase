::: sidecode
### Template HTML
```html
<div id="tpl">
    <p class="project-name"></p>
</div>
```

### Create template instance
```javascript
var tpl = Meta.Template(document.getElementById('tpl'), {
    ".project_name":    "name"
});
```

### Render template

```javascript
tpl({
    name: "My project"
});
```

### Result

```html
<div id="tpl">
    <p class="project-name">My project</p>
</div>
```
:::

## Overview

MetaJS templating engine provides data-binding, conditions and loops. It is dom-based which means that it manipulates directly with DOM without text-based re-rendering and re-parsing which provides high performance and flexibility.

### Usability & compatibility

MetaJS Template library can be used standalone and not depends on WebComponents specification so it works in most modern browsers. See working demo.

Just include dist/template.min.js.

### Concept

Template engine processes DOM nodes by definition rules. Engine goes throught selectors and executes processing function for every node returned by selector.

Definition rules are specified by and object in format "selector": processing_function.

Purpose of each processing function is to modify DOM element.