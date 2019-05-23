A Storage subclass is an abstract definition of a storage for components.

The system will call #atForRead: if it tries to get a stored component. You may return `self nullInstance` if there is currently no component at this spot.

If #atForWrite: is called, you should instead make sure that a new instance of `self type` is found at that location and return it. The user will then modify it as they want. You are not required to call #alive: true, as the caller will take care of that.

If #remove: is called, the user no longer needs the object at the given index. You are now required to set #alive: false on the component. You may then return the memory or keep it.