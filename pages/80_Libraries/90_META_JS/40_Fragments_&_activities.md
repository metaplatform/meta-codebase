:::sidecode
### Define fragment

```javascript
Meta.Fragment("com.example.todo", {

    view: "com.example.todo",
    import: ["example-list"],
    extends: ["com.example.list"],

    binding: {
        "ul li": $__repeat("tasks", {
            "@":        [
                $__attrIf("completed", "completed"),
                $__prop("task", "@key")
            ],
            ".task":    "task"
        })
    },

    events: {
        "click #add": function(ev){

            var value = this.$.todo.value;

            if(value != ""){
                this.provider.addTask(value);
                this.$.todo.value = '';
            }

        }
    },

    onCreate: function(self){

        self.provider = new TodoProvider("com.example.simpleTodo");
        self.model.tasks = self.provider.tasks;

    },

    onResume: function(self){

        self.providerChanged = self.provider.on("changed", function(data){
            self.render();
        });

    },

    onPause: function(self){

        self.provider.off("changed", self.providerChanged);

    },

    onRender: function(self){

        console.log("Rendered");

    }

});
```

### Use fragment

```html
<meta-fragment name="com.example.todo" auto></meta-fragment>
```
:::

## Fragments & activities

MetaJS provides Fragment and Activity components which are representing reusable UI building blocks.

Fragments and activities also supports ShadowDOM for convenient styling and resource distribution.

### Fragment

Fragment represents basic reusable component such as:
header, toolbar, search-box, list-view, etc...

### Activity

Activity represents specific use-case component such as:
customers list, customer detail, user account, etc...

### Component logic

Fragments uses Views and wraps its view-logic and event binding in a friendly way.

### Data model

Fragments provides data model object which is automatically binded to view.

### Custom methods & Events

Fragments provides interface for defining custom component methods and firing Element events which can be binded via standard addEventListener method.

### Dynamic imports

Fragments can specify modules which must be dynamically loaded before initialization.

### Mixins

Fragments and activites can inherit from multiple other fragments or activities.

### Lifecycle

Fragments can be paused and resumed. When fragments is removed from parent element then it is paused and all event bindings are removed. Resume and pause methods also propagates to all child fragments.