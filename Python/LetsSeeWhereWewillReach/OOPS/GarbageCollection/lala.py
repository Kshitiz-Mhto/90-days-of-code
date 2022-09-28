# Automatic Garbage Collection of Cycles

# Because reference cycles take computational work to discover, garbage collection must be a scheduled activity.
# Python schedules garbage collection based upon a threshold of object allocations and object deallocations. 
# When the number of allocations minus the number of deallocations is greater than the threshold number, the garbage collector is run. 
# One can inspect the threshold for new objects (objects in Python known as generation 0 objects) by importing the gc module and asking for garbage collection thresholds: 


# loading gc
import gc
 
# get the current collection
# thresholds as a tuple
print("Garbage collection thresholds:",
                    gc.get_threshold())

# Here, the default threshold on the above system is 700.
# This means when the number of allocations vs. the number of deallocations is greater than 700 the automatic garbage collector will run.
# Thus any portion of your code which frees up large blocks of memory is a good candidate for running manual garbage collection. 

# Manual Garbage Collection

# Importing gc module
import gc
 
# Returns the number of
# objects it has collected
# and deallocated
collected = gc.collect()
 
# Prints Garbage collector
# as 0 object
print("Garbage collector: collected",
          "%d objects." % collected)