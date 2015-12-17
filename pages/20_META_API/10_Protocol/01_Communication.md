## Communication

META API is using WebSocket for bi-directional communication between server and client.

- [MessagePack](http://msgpack.org/) is used for message encoding
- Server responds to RPC calls and can publish message to channels
- Client can call remote methods and can subscribe to channels

## Message broker

Many components needs realiable message delivery. META Stack implements message broker service.

- Each API server connects to message broker and is waiting for incoming RPC requests
- Each API client connects to message broker and send requests
- Message broker handles channel subscriptions and delivers published messages
- API server also acts as client so it can subscribe to other channels and can call other services