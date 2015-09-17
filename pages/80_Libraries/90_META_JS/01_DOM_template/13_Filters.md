## Filters

Custom filters reference.

### Meta.Template.registerFilter(name, func) {.tag .func}

::: sidecode
```javascript
Meta.Template.registerFilter("uppercase", function(value, params){
    return value.substr(params.start, params.length);
});

```
:::

Register custom filter globaly so every template instance can use it.

User-function accepts value as first parameter and params object as second.

### Default filters

| Filter name | Description | Params |
| ----------- | ----------- | ------ |
| uppercase | Converts string to upperacse. | - |
| lowercase | Converts string to lowercase. | - |
| trim | Trims string. | - |
| substr | Return substring of given string. | offset: integer, length: integer |
| replace | Replaces substring of given string. | find: string/regexp, replace: string, global:  boolean (true) |