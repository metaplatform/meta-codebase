## Channel instance reference

::: sidecode-h3
### Meta.Channel

```javascript
var channel = new Meta.Channel({
	
	name: "global-channel",
	
	onPublish: function(message){
		//...
	}

});
```
:::

### Meta.Channel(config) {.tag .func}

Channel constructor.

| Config property | Type | Description |
| --------------- | ---- | ----------- |
| name | string | If config property name is set then channel is added to Meta.channels object by specified name. |
| onPublish | function(message) | If onPublish property is set then every published message is passed to this function. Function should throw an error if has invalid format. Function must return message instance so it can modify it. This function is usefull when using global channels and message validation is needed. |

::: sidecode-h3
### Subscribing and unsubscribing

```javascript
var Channel = new Meta.Channel();

var handler = function(message){
	//...
}

Channel.subscribe(handler);
Channel.unsubscribe(handler);
```
:::

### Channel.subscribe(handler) {.tag .func}

Adds handler which will be called when someone publishes message to the channel.

### Channel.unsubscribe(handler) {.tag .func}

Removes handler from subscriptions.

::: clear :::

::: sidecode-h3
### Publishing messages

```javascript
var Channel = new Meta.Channel();

Channel.publish({
	"message": "property"
});
```
:::

### Channel.publish(message) {.tag .func}

Publishes message to channel so all subscribers will be notified and will receive published message.