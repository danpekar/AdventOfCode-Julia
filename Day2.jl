#PART 1
"""
open("C:\\Users\\Daniel\\Documents\\Julia\\Advent of Code\\Day 2\\input_2.txt") do f
    lines = readlines(f)

    score = 0
    value = Dict("A" => 1, "B" => 2, "C" => 3, "X" => 1, "Y" => 2, "Z" => 3)
    beat = Dict("X" => "C", "Y" => "A", "Z" => "B")

    for l in lines
        opp = string(l[1])
        you = string(l[3])
        score += value[you]

        if value[you] == value[opp]

            score += 3

        elseif (opp == beat[you])

            score += 6

        end
        
    end

    println(score)

end
"""

#PART 2
open("C:\\Users\\Daniel\\Documents\\Julia\\Advent of Code\\Day 1\\input_2.txt") do f
    lines = readlines(f)

    score = 0
    value = Dict("A" => 1, "B" => 2, "C" => 3)
    winval = Dict("X" => 0, "Y" => 3, "Z" => 6)
    draw = Dict("A" => "A", "B" => "B", "C" => "C")
    win = Dict("A" => "B", "B" => "C", "C" => "A")
    lose = Dict("A" => "C", "B" => "A", "C" => "B")
    outcome = Dict("X" => lose, "Y" => draw, "Z" => win)

    for l in lines
        opp = string(l[1])
        you = outcome[string(l[3])][opp]
        score += value[you]
        score += winval[string(l[3])]
        
        println("=== NEW ROUND ===")
        println(opp," ", string(l[3]))
        println(you, " ",value[you], " ",winval[string(l[3])]) 
    end
    println(score)
end