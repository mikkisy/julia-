function move_by_steps(r, Side, Numsteps)
    while Numsteps != 0
        move!(r, Side)
        Numsteps -= 1
    end
end
function task7!(r, Prohod)
    i = 1
    while isborder(r, Prohod)
        if i % 2 == 1
            move_by_steps(r, Ost, i)
            i += 1
        else
            move_by_steps(r, West, i)
            i += 1
        end
    end
    move!(r, Prohod)
end
