require 'table'
require 'io'

-- a) Create a queue object with a push function and a pop function
queue={}
function queue:new (o)
      o = o or {}   -- create object if user does not provide one
      setmetatable(o, self)
      self.__index = self
      return o
    end
function queue.push(self,v)
    table.insert(self,1,v)
end

function queue.pop(self,v)
    table.remove(self,1)
end

function queue.reead(self)
    i=1
repeat
  print(self[i])
  i = i + 1
until self[i] == nil
end
a1=queue:new(o)
a1.push(a1,'v')


-- b) Write a table to hold three instances of your queue. This table should also be where you are adding and removing from your queues
big={queue:new(),queue:new(),queue:new()}

function big.push(self,v,spot)
    self[spot].push(self[spot],v)
end
function big.pop(self,v,spot)
    self[spot].pop(self[spot],v)
end


b=big;
-- c) Write a driver to run your code. This should take user input for adding items, removing items, and getting the counts
a= io.read("*n")















