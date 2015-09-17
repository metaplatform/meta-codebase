## View instance reference

### instance.target (read-only) {.tag .prop}

Template target element specified when creating instance.

### instance.template {.tag .prop}

DOM templating engine instance.

### instance.model {.tag .prop}

Model object containing data which are passed to template instance when rendering view.

::: sidecode-h3
### Events binding example

```javascript
{
    "click button.increment": function(ev){
        this.model.x++;
    }
}
```
:::

### instance.events {.tag .prop}

Object containing events definition for auto-binding.

Property name is string in format `eventName selector`.

Property value is an event handler.

Event handler accepts one parameter - Event object.

Event object also has a sender property which is set to an element on which event has been bound.

### instance.eventsContext {.tag .prop}

Object which is passed to event handlers as this context variable.

::: sidecode-h3
### Example
For following HTML:
```html
<div id="first-name">...</div>
<div id="last-name">...</div>
```

This hasmap is generated:
```javascript
{
    "first-name": <div id="first-name">...</div>,
    "last-name": <div id="first-name">...</div>
}
```
:::

### instance.$ {.tag .prop}

Elements ID hashmap of view's template child elements.

Hashmap is available after first render.

::: clear :::

::: sidecode-h3
### instance.materialize
Materialization example:

```javascript
viewInstance.materialize(document.getElementById('target'), {
	".selector": "model_property"
	//...
})
```
:::

### instance.materialize(targetEl, binding) {.tag .func}

Re-creates view's template instance.

This function is called automatically if targetElement and bindings arguments are set in instance constructor.

This function should be manually called only once and in case where we don't know target and binding when creating instance.

::: clear :::

::: sidecode-h3
### instance.on
Event binding example:

```javascript
viewInstance.on("click", ".button", function(ev){
	alert("You've clicked on the button at:" + ev.clientX + ":" + ev.clientY);
});
```
:::

### instance.on(event, selector, handler) {.tag .func}

Adds event handler for elements specified by selector to instance's events property.

::: clear :::

::: sidecode-h3
### instance.render
Render example:

```javascript
viewInstance.render();
```
:::

### instance.render() {.tag .func}

Renders template.

You have to render template each time model changes.

Throws error if view has not been materialized yet.