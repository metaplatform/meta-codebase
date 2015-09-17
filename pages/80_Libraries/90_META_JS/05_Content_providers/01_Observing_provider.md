## Observing provider

Observing provider uses `Object.observe` to watch for deep model changes and notifies listeners when change occours.

### Usage example

```javascript
var provider = new Meta.ObservingProvider({
    myValue: 0,
    items: []
});

var handler = provider.on("changed", function(data){
    console.log("Data has changed");
});

provider.myValue = 1
//Logs: Data has changed

var item = { x: 0 };

provider.items.push(item);
//Logs: Data has changed

item.x = item.x + 1;
//Logs: Data has changed

provider.items.pull();
//Logs: Data has changed

provider.off("changed", handler);

provider.myValue = 2;
//Logs nothing
```

::: clear :::
::: sidecode-h3
### Constructor

```javascript
var provider = new Meta.ObservingProvider({
	"default": "properties"
});
```
:::

### ObservingProvider(data) {.tag .func}

Provider constructor.

If data parameter is set then data are merged to provider model.

::: clear :::
::: sidecode-h3
### Event binding and unbinding

```javascript
var provider = new Meta.ObservingProvider();

var handler = function(model){
	//...	
};

provider.on("changed", handler);
provider.off("changed", handler);
```
:::

### on(eventName, handler) {.tag .func}

Binds event handler.

### off(eventName, handler) {.tag .func}

Unbinds event handler.

::: clear :::
::: sidecode-h3
### Listening for changes

```javascript
var provider = new Meta.ObservingProvider();

provider.on("changed", function(model){
	//...
});
```
:::

### changed {.tag .event}

Provider fires changed event when model has changed.