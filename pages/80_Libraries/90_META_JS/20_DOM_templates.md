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

## DOM templates

MetaJS provides templating engine which manipulates directly with DOM. This way needs no re-rendering so it is efficient and provides high performance.

### DOM based
No re-rendering and no browser re-parsing provides high performance and flexibility compared to other traditional string-based engines.

### Data binding
Templating engine provides data binding, conditions and loops.

- item is added to array -> new dom node appended
- item is removed from array -> dom node removed
- item index changed -> dom node moved
- item data changed -> binding updated = no flickering

### Rule based

Template logic is defined by rules (processing functions) and provides flexible interface for non-standard usage.