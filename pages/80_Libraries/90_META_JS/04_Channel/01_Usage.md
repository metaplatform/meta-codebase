## Usage

Channels are simple implementation of publish / subscribe pattern.

### Local channel example

```javascript
var localChannel = new Meta.Channel();

var subscriber = localChannel.subscribe(function(message){
    console.log("Received message", message);
});

localChannel.publish({
    "Hello world!"
});

localChannel.unsubscribe(subscriber);
```

### Global channel example

```javascript
new Meta.Channel({ name: "global-channel" });

//In one part of application
var subscriber = Meta.channels["global-channel"].subscribe(function(message){
    console.log("Received message", message);
});

//In another part of application
Meta.channels["global-channel"].publish({
    "Hello world!"
});
```