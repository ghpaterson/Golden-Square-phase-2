require 'todo_task'

RSpec.describe TodoTask do
    context "No tasks added" do
        it "returns an empty list if no tasks added" do
        todo_task = TodoTask.new
        expect(todo_task.list_task).to eq []
        end
    end

    context "lists tasks when tasks are added " do
        it "Adds a single task and puts that task in a list" do
            todo_task = TodoTask.new
            todo_task.add_task("walk the dog")
            expect(todo_task.list_task).to eq ["walk the dog"]
        end

        it "Adds a multiple tasks and puts tasks in a list" do
            todo_task = TodoTask.new
            todo_task.add_task("walk the dog")
            todo_task.add_task("go shopping")
            expect(todo_task.list_task).to eq ["walk the dog", "go shopping"]
        end
    end

    context "when we complete a task" do
        it "removes a task from the list" do
            todo_task = TodoTask.new
            todo_task.add_task("walk the dog")
            todo_task.add_task("go shopping")
            todo_task.completed_task("walk the dog")
            expect(todo_task.list_task).to eq ["go shopping"]
        end
    end

    context "when we try to complete a non-existent task" do
        it "fails" do
            todo_task = TodoTask.new
            todo_task.add_task("go shopping")
            expect { todo_task.completed_task("walk the dog") }.to raise_error "No such task"
        end
    end
end