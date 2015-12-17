## Request

### Method call request

:::sidecode
```json
{
	"r": 101,
	"i": "u36dHjkFr34",
	"s": "customerdb",
	"p": [ "customers", 42, "@get" ],
	"a": [
		{ "properties": [
			"first_name"
			"last_name"
		] }
	]
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Request type - 101 = Method call |
| i | string | Unique request ID for client. Response will be identified by this ID. |
| s | string | Service name |
| p | array | Request path |
| a | array | Method arguments |

**Request path must follow this rules:**

- Method is prefixed by `@`
- If no method is specified then endpoint must return property schema

### Subscribe & unsubscribe request

:::sidecode
```json
{
	"r": 102,
	"i": "u36dHjkFr64",
	"c": "customerdb:/customers/42"
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Request type - 102 = Subscribe request |
| i | string | Unique request ID for client. Response will be identified by this ID. |
| c | string | Channel name |

::: clear :::

:::sidecode
```json
{
	"r": 103,
	"i": "u36dHjkFr96",
	"c": "customerdb:/customers/42"
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Request type - 103 = Unsubscribe request |
| i | string | Unique request ID for client. Response will be identified by this ID. |
| c | string | Channel name |

### Publish request

:::sidecode
```json
{
	"r": 104,
	"i": "u36dHjkFr12",
	"c": "customerdb:/customers/42",
	"d": {
		"first_name": "John",
		"last_name": "Doe"
	},
	"t": 3600
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Request type - 104 = Publish request |
| i | string | Unique request ID for client. Response will be identified by this ID. |
| c | string | Channel name |
| d | mixed | Published data |
| t | integer | Message lifetime (TTL) in seconds. Message will be removed from delivery queue for subscriber that doesn`t pick up message within specified time. |

### Authorization / registration request

:::sidecode
```json
{
	"r": 105,
	"i": "u36dHjkFr42",
	"u": "customerdb",
	"s": "uHd3Dkdf2DaF6="
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Request type - 105 = Authorization request |
| i | string | Unique request ID for client. Response will be identified by this ID. |
| u | string | Client / server ID (service name) |
| s | string | Secret |