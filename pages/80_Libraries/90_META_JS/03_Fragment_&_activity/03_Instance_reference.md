## Fragment element instance reference

To create fragment instance add meta-fragment element to document.

```html
<meta-fragment name="com.example.myFragment"></meta-fragment>
```

### `auto` {.tag .attr}

If auto attribute is set then fragment's method resume will be automatically called when fragment is created.


### fragmentElement.config {.tag .prop}

Property config points to fragment definition object.

### fragmentElement.model {.tag .prop}

Object containing fragment's model which is passed to view instance.

### fragmentElement.view {.tag .prop}

Property view points to fragment view instance.

### fragment.$ {.tag .prop}

Property $ is bound to fragment view ID's hashmap (viewInstance.$).

### fragmentElement.resume(callback) {.tag .func}

Resumes fragment - see Fragment lifecycle for more details.

If callback attribute is provided then it will be called when fragment was sucessfuly resumed.

Using callback is recommended because fragment initialization can be asynchonous and thus delayd due to import of modules.

### fragmentElement.pause() {.tag .func}

Pauses fragment - see Fragment lifecycle for more details.

### fragmentElement.render() {.tag .func}

Renders fragment view.

### fragmentElement.setView(name) {.tag .func}

Sets fragment view manually.

### fragmentElement.fireEvent(event, data) {.tag .func}

Dispatches HTMLElement event specified by eventName and merges data object to Event object.

Fragment events can be bound using standard addEventListener method.