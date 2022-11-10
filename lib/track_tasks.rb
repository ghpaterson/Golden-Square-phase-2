def track_tasks(text)
    if text.upcase.include?("#TODO")
        return true
    else 
        return false
    end
end