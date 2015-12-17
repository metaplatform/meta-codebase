## Response

### Method call result

:::sidecode
```json
{
	"r": 201,
	"i": "u36dHjkFr34",
	"d": {
		"first_name": "John",
		"last_name": "Doe"
	}
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 201 = Method call result |
| i | string | Unique request ID for client. |
| d | mixed | Result data |

### Subscribe & unsubscribe confirmation

:::sidecode
```json
{
	"r": 202,
	"i": "u36dHjkFr64"
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 202 = Subscribe successfull |
| i | string | Unique request ID for client. |

::: clear :::

:::sidecode
```json
{
	"r": 203,
	"i": "u36dHjkFr96"
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 203 = Unsubscribe successfull |
| i | string | Unique request ID for client. |

### Publish confirmation

:::sidecode
```json
{
	"r": 204,
	"i": "u36dHjkFr12",
	"c": 3
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 204 = Published |
| i | string | Unique request ID for client. |
| c | integer | Count of subscribers |

### Incoming message

:::sidecode
```json
{
	"r": 205,
	"c": "customerdb:/customers/42",
	"d": {
		"first_name": "John",
		"last_name": "Doe"
	},
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 205 = Incoming published message |
| c | string | Channel name |
| d | mixed | Published data |

### Authorization / registration request

:::sidecode
```json
{
	"r": 206,
	"i": "u36dHjkFr42"
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 206 = Authorization response |
| i | string | Unique request ID for client. |

### Error response

:::sidecode
```json
{
	"r": 500,
	"i": "u36dHjkFr34",
	"e": "InvalidArguments",
	"m": "You must specify all required arguments.",
	"d": {
		"0": "Value"
	}
}
```
:::

| Property name | Type | Description |
| ------------- | ---- | ----------- |
| r | integer | Response type - 500 = Generic error |
| i | string | Unique request ID for client. |
| e | string | Error name |
| m | string | Error message |
| d | object | Optional descriptive data |