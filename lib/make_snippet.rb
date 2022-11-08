def make_snippet(string)
    if string.split.size < 6
        return string
    else
        return "#{string.split[0..4].join(" ")}..."
    end
end