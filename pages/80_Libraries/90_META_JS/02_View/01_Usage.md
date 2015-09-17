## Usage

View defines reusable HTML template for each activity and fragment or can be used standalone.

View component extends html template tag which is not rendered and parsed until instanced.

View component also supports dynamic event-binding so when view is rendered all defined events are bound to template elements.

### Defining view

```html
<template is="meta-view" id="my-template">

    <p>This is meta-view template content where X = <span class="x">?</span></p>

    <button>Increment X</button>

</template>

<div id="target"></div>
```

### Using view

```javascript
var view = document.getElementById('my-template');
var target = document.getElementById('target');

//Create instance and define template rules
var instance = view.instance(target, {
    ".x": "x"
});

//Set model values
instance.model.x = 0;

//Bind event
instance.on("click", "button", function(){
    this.model.x++;
    this.render();
});

//Or bind events like this
instance.events = {
    "click button": function(){
        this.model.x++;
        this.render();
    }
}

//Do the first render
instance.render();
```