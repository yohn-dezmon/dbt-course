# Modern Data Stack

SMP:
- symmetric multi processing (database design)
- many processors store resources (memory, storage, OS)
- several CPU cores
- scaled up / vertically


MPP:
- multi parallel processing db processors
- compute nodes (don't share memory)
- each node has its own OS and memory
- master node, coordinates operations among compute nodes
- communication via high speed messaging interface
- storage can be shared or not "shared storage" vs. "shared nothing" 
- "shared nothing" is the most common 

data from a single table might span many nodes.  
horizontal scaling.  

Modern Data Stack:
- compute and storage decoupled
- compute on-demand (per query)
- always make sure you shut down the compute nodes as soon as possible! (Snowflake will f you on this if you're not careful).

Column oriented databases:
- vs. row based database
- allows for compression
- less IO
- row based better for writing/reading (transactional)
- they improve query performance!!!


