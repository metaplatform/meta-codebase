## Importing modules

MetaJS provides dynamic module imports.

::: sidecode-h3
### Set import url

```javascript
window.Meta.config.importUrl = '/path/to/%module%.html';
```
:::

### Meta.config.importUrl {.tag .prop}

Variable which specifies import url pattern. String %module% is replaced by module name.

Default value: `modules/%module%.html`

::: clear :::
::: sidecode-h3
### Import modules

```javascript
window.Meta.Utils.import("my-module", function(){
	console.log("Imported!");
}, function(err){
	console.log("Import error", err);
});
```
:::

### Meta.Utils.import(module, onReady onError) {.tag .func}

Imports specified module.

If onReady callback is provided then it is called when module has been sucessfully imported.

If onError callback is provided then it is called when module import failed.

Callback onError accepts error as first argument.

::: clear :::
::: sidecode-h3
### Import multiple modules

```javascript
window.Meta.Utils.importMany([
	"my-module1",
	"my-module2",
	"my-module3"
], function(){
	console.log("Imported!");
}, function(err){
	console.log("Import error", err);
});
```
:::

### Meta.Utils.importMany(moduleList, onReady, onError) {.tag .func}

Same as Meta.Utils.import but accepts moduleList argument as array of modules to import.