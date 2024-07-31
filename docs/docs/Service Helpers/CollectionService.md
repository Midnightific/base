---
sidebar_position: 1
---

# CollectionService

If you don't know what Collection Service is, you can read about it [here](https://create.roblox.com/docs/reference/engine/classes/CollectionService).

## API

### CollectionServiceHelper:BindToTag

```lua
CollectionServiceHelper:BindToTag(Tag: string, Callback: (Instance) -> ()): RBXScriptConnection
```

Binds a function to a tag. The function will be called whenever an instance with the specified tag is added to the game.

**Parameters:**

- `Tag` (string): The tag to bind the function to.
- `Callback` (function): The function to call when an instance with the specified tag is added. The function receives the instance as an argument.

**Returns:**

- `RBXScriptConnection`: A connection object that can be used to disconnect the binding.

### CollectionServiceHelper:BindToTagWithFilter

```lua
CollectionServiceHelper:BindToTagWithFilter(
    Tag: string,
    Filter: (Instance) -> boolean,
    Callback: (Instance) -> ()
): RBXScriptConnection
```

Binds a function to a tag with a filter. The function will be called whenever an instance with the specified tag is added to the game and passes the filter.

**Parameters:**

- `Tag` (string): The tag to bind the function to.
- `Filter` (function): A function that takes an instance and returns a boolean. The callback will only be called if the filter returns `true`.
- `Callback` (function): The function to call when an instance with the specified tag is added and passes the filter. The function receives the instance as an argument.

**Returns:**

- `RBXScriptConnection`: A connection object that can be used to disconnect the binding.

### CollectionServiceHelper:BindToTagRemoved

```lua
CollectionServiceHelper:BindToTagRemoved(Tag: string, Callback: (Instance) -> ()): RBXScriptConnection
```

Binds a function to a tag. The function will be called whenever an instance with the specified tag is removed from the game.

**Parameters:**

- `Tag` (string): The tag to bind the function to.
- `Callback` (function): The function to call when an instance with the specified tag is removed. The function receives the instance as an argument.

**Returns:**

- `RBXScriptConnection`: A connection object that can be used to disconnect the binding.
