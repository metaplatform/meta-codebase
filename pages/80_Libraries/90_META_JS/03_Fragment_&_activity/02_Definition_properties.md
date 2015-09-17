## Fragment definition properties

Fragment definition properties are used to configure fragment behaviour.

::: clear :::
::: sidecode-h3
###  `shadowRoot` property

```javascript
{
    shadowRoot: true
}
```
:::

### shadowRoot: boolean {.tag .prop}

Specifies if to create Shadow root.

Default: true

::: sidecode-h3
###  `import` property

```javascript
{
    import: [ "fragment-a", "fragment-b" ]
}
```
:::

### import: array of string {.tag .prop}

List of modules which should be imported before fragment is initialized.

See Utilities / Import for module importing details.

::: clear :::
::: sidecode-h3
###  `extends` property

```javascript
{
    extends: [ "fragment-a", "fragment-b" ]
}
```
:::

### extends: array of string {.tag .prop}

Specifies list of other fragment from which definition will be merged.

Listed fragments must be imported or listed in import property or exception will be thrown.

**Example:**

```javascript
Meta.Fragment("com.example.a", {
    
    view: "com.example.a",
    
    model: {
        x: 1
    }

});

Meta.Fragment("com.example.b", {

    view: "com.example.b"

});

Meta.Fragment("com.example.c", {

    extends: ["com.example.a", "com.example.b"],
    shadowRoot: false

});
```

**Fragment `com.example.c` definition will be:**

```javascript
{
    view: "com.example.b",

    model: {
        x: 1
    },

    shadowRoot: false
}
```

::: clear :::
::: sidecode-h3
###  `model` property

```javascript
{
    model: {
        "key": "val"
    }
}
```
:::

### model: object {.tag .prop}

Default model object which will be bound to view's model property.

::: clear :::
::: sidecode-h3
###  `binding` property

```javascript
{
    binding: {
        ".selector": "model_property"
    }
}
```
:::

### binding: object {.tag .prop}

Template binding rules which will be passed to view's instance function.

::: clear :::
::: sidecode-h3
###  `events` property

```javascript
{
    events: {
        "click .button": function(ev){ //... }
    }
}
```
:::

### events: object {.tag .prop}

View event binding rules which will be bound to view's events property.

Note that view's eventsContext property is set to fragment instance.

::: clear :::
::: sidecode-h3
###  `onCreate` property

```javascript
{
    onCreate: function(self){
        //...
    }
}
```
:::

### onCreate: function(self) {.tag .prop}

Function which will be called when fragment is created.

See Fragment lifecycle for more details.

::: clear :::
::: sidecode-h3
###  `onReady` property

```javascript
{
    onReady: function(self){
        //...
    }
}
```
:::

### onReady: function(self) {.tag .prop}

Function which will be called when fragment is ready.

See Fragment lifecycle for more details.

::: clear :::
::: sidecode-h3
###  `onResume` property

```javascript
{
    onResume: function(self){
        //...
    }
}
```
:::

### onResume: function(self) {.tag .prop}

Function which will be called when fragment is resumed.

See Fragment lifecycle for more details.

::: clear :::
::: sidecode-h3
###  `onPause` property

```javascript
{
    onPause: function(self){
        //...
    }
}
```
:::

### onPause: function(self) {.tag .prop}

Function which will be called when fragment is paused.

See Fragment lifecycle for more details.

::: clear :::
::: sidecode-h3
###  `onRender` property

```javascript
{
    onRender: function(self){
        //...
    }
}
```
:::

### onRender: function(self) {.tag .prop}

Function which will be called when fragment's view has been rendered.

::: clear :::

::: sidecode-h3
### Custom method example
Define fragment:

```javascript
Meta.Fragment("com.example.todo", {

    sayHello: function(name){
        alert("Hello " + name + "!");
    }

});
```

Create fragment:

```html
<meta-fragment name="com.example.todo" id="my-fragment"></meta-fragment>
```

Call custom method:

```javascript
document.getElementById('my-fragment').sayHello('world');
```
:::

### Custom methods

We can define fragment custom methods by defining them as functions in fragment definition.

These methods are exported to fragment element instance when it is created.

Be carefull about method naming beacause you can accidentally override default fragmentElement methods or other HTMLElement methods.