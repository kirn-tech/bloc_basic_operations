# bloc_basic_operations

What we are going to see?

- implementations of screen and bloc don't know anything about error handling and loading indication.
  error handling and loading indication are done out-of-the box on a base level.
  
- bloc runs any number of async operation simultaneously.
  
- async operation could be triggered by a user or by a system at any time.
  
- all running operations are handled atomically, as one.
  once all are completed the loading indication is off.
  if some operations are failed an error message is show.
  
- retry runs just for failed operations.

- if one operation depends on another they could be mapped.
  retry in mapped operations restarts failed one and execution chain proceed.

- each bloc may decide which error it wants to ignore by applying reducer.


  




