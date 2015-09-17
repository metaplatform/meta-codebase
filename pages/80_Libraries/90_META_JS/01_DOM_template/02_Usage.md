## Usage

Create template instance:

```javascript
var tpl = Meta.Template(document.getElementById('tpl'), {
    ".project_name":    "name",
    ".budget":          $__string("$ #{budget}"),
    ".created":         $__date("d. m. Y", "created"),
    ".active":          $__if("active"),
    ".status":          $__fn(function(data){
        switch(data.status){
            case 0: return "Concept";
            case 1: return "In progress";
            case 2: return "Closed";
        }
    }),
    ".manager"          $__with("manager", {
        ".first-name":      "first_name",
        ".last-name":       "last_name"
    }),
    "ul.tasks":         $__repeat("tasks", {
        ".task":            "task",
        ".due-date":        $__date("d. m. Y", "due_date"),
        "@":                $__attrIf("completed", "complete")
    }),
    ".note":            $__html("note")
});
```

Render template:

```javascript
tpl({
    name:       "My project",
    budget:     1000,
    created:    new Date(2015, 3, 20, 0, 0, 0, 0),
    active:     true,
    status:     1,
    manager:    {
        first_name: "John",
        last_name:  "Doe"
    },
    tasks:      [
        {
            task: "Write concept",
            due_date: new Date(2015, 3, 22, 0, 0, 0, 0),
            complete: true
        }, {
            task: "Consult with customer",
            due_date: new Date(2015, 3, 25, 0, 0, 0, 0),
            complete: false
        }
    ],
    note: '<p>This will be fun!</p>'
});
```

Results in:

```html
<div id="tpl">
    <p class="project-name">My project</p>
    <p class="budget">$ 1000</p>
    <p class="created">20. 3. 2015</p>
    <p class="active">ACTIVE</p>
    <p class="status">In progress</p>
    <p class="manager">
        <span class="first-name">John</span>
        <span class="last-name">Doe</span>
    </p>

    <ul class="tasks">
        <li>
            <span class="task" completed>Write concept</span>
            <span class="due-date">22. 3. 2015</span>
        </li>
        <li>
            <span class="task">Consult with customer</span>
            <span class="due-date">25. 3. 2015</span>
        </li>
    </ul>

    <div class="note">
        <p>This will be fun!</p>
    </div>
</div>
```