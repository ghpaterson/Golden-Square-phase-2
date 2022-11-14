class TodoTask
    def initialize
        @task_list = []
    end

    def add_task(task)
        @task_list << task
    end

    def completed_task(task)
        fail "No such task" unless @task_list.include? task
        @task_list.delete(task)
    end

    def list_task
        return @task_list
    end

end