###
     __                
    |__| ____   _____  
    |  |/ __ \ /     \ 
    |  \  ___/|  Y Y  \
/\__|  |\___  >__|_|  /
\______|    \/      \/ 

Javascript Error Manager
========================

author: Justin Taylor

###

class Jem
  @init: (url, output = null) ->
    @client = new Jem.Client output || new Jem.OutputAdapter url