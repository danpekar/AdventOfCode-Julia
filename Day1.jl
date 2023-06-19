open("C:\\Users\\Daniel\\Documents\\Julia\\Advent of Code\\Day 1\\input.txt") do f
    lines = readlines(f)

    totals = [0]
    counter = 0

    for l in lines
        if l == ""
            push!(totals,counter)
            counter = 0
        else
        counter += parse(Int,l)
        end
    end

    sort!(totals)
    max1 = pop!(totals)
    max2 = pop!(totals)
    max3 = pop!(totals)
    println(max1)
    println(max2)
    println(max3)
    println(max1+max2+max3)

end