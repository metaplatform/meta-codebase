## Endpoint schema

Endpoint schema describes object properties and methods.

- Properties with `$` prefix are descriptive (meta) values
- Properties with `@` prefix describes method
- Other properties describes endpoint (object) properties
- Structure of properties depends on it`s purpose and interface

::: sidecode
```json
{

	"$name": "Customers",
	"$implements": [ "Collection" ],
	"$title": "Customers",
	"$description": "List of customers",
	"$icon": "user",
	
	"$record": {

		"$name": "CustomerRecord",
		"$implements": [ "Record" ],
		"$title": "Customer",
		"first_name": {
			"$name": "FirstName",
			"$implements": [ "TextProperty" ],
			"$title": "First name",
			"@get": {
				"$arguments": [],
				"$return": "string"
			},
			"@set": {
				"$arguments": [
					{
						"name": "value",
						"type": "string"
					}
				]
			}
		},
		"last_name": "..."

	},

	"@get": {
		"$title": "Get records",
		"$arguments": [
			"query": "object",
			"sort": "object",
			"properties": "object"
		],
		"$return": "CollectionResult"
	},

	"@create": {
		"$title": "Create new customer",
		"$arguments": [ "CustomerRecord" ],
		"$return": "CustomerRecord"
	}

}
```
:::

### Object properties

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| $name | string | Camel-case schema identifier |
| $implements | array | Array of implemented interfaces |
| $title (optional) | string | User-friendly endpoint title |
| $description (optional) | string | User-friendly description |
| $icon (optional) | string | MDI icon used by API console |

### Method properties

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| $title (optional) | string | User-friendly method name |
| $description (optional) | string | User-friendly method description |
| $icon (optional) | string | MDI icon used by API console |
| $arguments (optional) | array | Array of accepted arguments in format `name: <name>, type: <data type>` |
| $return (optional) | string | Data type of returned value - can be object schema |

::: info
**Property definition**

Each object property is specified by another schema of that property. Object must describe at least one level of it`s properties.
:::

::: info
**Collection interface**

Collection interface for example specifies `$record` meta property which describes collection record properties and methods.
:::