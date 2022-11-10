{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

#method name and parameter
def track_tasks(text)

#results
return true if text includes "#TODO"
return false if text does NOT inlcude "#TODO"

# Do I want to include lower case i.e "#todo"?




3. Create Examples as Tests
Make a list of examples of what the method will take and return.

track_tasks(" ") -> false
track_tasks("this is a string") -> false
track_tasks("#TODO") -> true

#lower case todo?

track_tasks("#todo") -> true 



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.