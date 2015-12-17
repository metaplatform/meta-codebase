## Collection

Collection is set of records and supports filtering and sorting.

**Collection must provide:**

- Filtering by propreties
- Sorting by properties
- Returning of specified propreties only
- Extending of specified properties

### Subscription to queries

Collection should cache query based on requested parameters and should return channel name.

When result set changes (records has been modified - result set changed) collection should publish changes to query channel.

When no subscribers remains then collection should remove cached query.

::: warning
Work in progress.
:::