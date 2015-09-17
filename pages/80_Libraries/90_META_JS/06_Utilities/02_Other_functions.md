## Other functions

::: sidecode-h3
### Batch processing

```javascript
var items = ["a", "b", "c"];

var process = function(el, next){
	console.log("Item:", el);
	next();
};

Meta.Utils.Batch(items, process, function(err){
	if(err)
		console.log("Error", err);
	else
		console.log("Done");
});
```
:::

### Meta.Utils.batch(list, processingFn, callback) {.tag .func}

Function calls `processingFn` for each item in list array.

Argument `processingFn` must be a function which accepts list element as first argument and next function as second argument. It must call next function to continue batch processing.

Function next accepts error as first argument. When error is passed then batch is stopped and callback is called with error as first argument.

Otherwise callback is called when all items has been processed without error.

::: clear :::
::: sidecode-h3
### Creating hashmap

HTML:

```html
<div id="parent">
	<p id="p1">P 1</p>
	<p id="p2">P 2</p>
</div>
```

JavaScript:

```javascript
var map = Meta.Utils.idHashmap(document.getElementById('parent'));

map.p1.innerHTML === "P 1";
map.p2.innerHTML === "P 1";
```
:::

### Meta.Utils.idHashmap(targetElement) {.tag .func}

Function goes throught targetElement child nodes and associates them to result object by it's ID attribute if ID set.

::: clear :::
::: sidecode-h3
### Sanitizing HTML contents

```javascript
var html = '<p>Lorem ipsum</p>';
var text = Meta.Utils.sanitizeHtml(html);

text === '&lt;p&gt;Lorem ipsum&lt;/p&gt;';
```
:::

### Meta.Utils.sanitizeHtml(input) {.tag .func}

Function returns input where html open and close tags are converted to HTML entities.

::: clear :::
::: sidecode-h3
### Traversing object by string path

```javascript
var obj = {
	"abc": { "def": 123 }
}

Meta.Utils.traverse(obj, "abc.def") === 123;
```
:::

### Meta.Utils.traverse(o, path) {.tag .func}

Function traverses object `o` by path array.

::: clear :::
::: sidecode-h3
### Formatting date

```javascript
var now = Math.round(new Date("2015-01-02 12:43:10").getTime() / 1000);

Meta.Utils.formatDate("d. m. Y", now) === "2. 1. 2015";
```
:::

### Meta.Utils.formatDate(format, unixtime) {.tag .func}

Port of PHP's date function.