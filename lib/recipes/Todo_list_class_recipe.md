# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby


class TodoTask
  def initialize # initialize the method
    @task_list = [] #want to create an empty list to start with 
    @remaining_task = []
    @completed_task = []
  end

  def add_task(new_task) # task is a string
    @task_list << new_task #adds a task to the list
    end

  def list_task()
    return @task_list # returns a list of the tasks added to the list
  end

  def completed_task(completed)
    @completed_task << completed #adds a completed task to the completed list
  end

  def remaining_list
    return @remaining_task # returns a list of tasks that have not been completed
  end

end


```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 adds a task and lists that task given
todo_task = TodoTask.new
todo_task.add_task("walk the dog")
expect(todo_task.list_task).to eq ["walk the dog"]


# 2 adds and lists multiple tasks given
todo_task = TodoTask.new
todo_task.add_task("walk the dog")
todo_task.add_task("go shopping")
expect(todo_task.list_task).to eq ["walk the dog", "go shopping"]


# 3 Fails when trying to list tasks when NO tasks are added
todo_task = TodoTask.new
todo_task.add_task()
expect { todo_task.list_task }.to raise_error "No tasks have been added"


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


