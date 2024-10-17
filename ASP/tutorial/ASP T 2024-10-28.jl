import Plots

using LaTeXStrings
using Statistics
using Base.Threads

particle = 2
trace = 1

directions = (:left, :right, :up, :down)

function init_lattice(lattice_size::Integer)
    # generate a new lattice and set a particle in the center
    lattice = fill(0, lattice_size, lattice_size)
    center = Integer(round(lattice_size/2))
    lattice[center,center] = particle

    return lattice
end

function locate_particle(lattice::Matrix)
    position = findfirst(x -> x == particle, lattice) # find current position
    return position.I
    # return x, y
end

function squared_distance(start_pos, end_pos)
    return sum((start_pos .- end_pos).^2)
end

function RandomWalk(lattice::Matrix, n::Integer; self_avoiding=false)
    for i in 1:n
        lattice = move(lattice, self_avoiding=self_avoiding)
        if lattice == :aborted
            return
        end
    end
end

function move(lattice::Matrix; self_avoiding=false, available_directions=directions)
    if length(available_directions) == 0
        return :aborted
    end
    direction = rand(available_directions)

    x, y = locate_particle(lattice)
    if direction == :up
        Δx, Δy = -1, 0
    elseif direction == :down
        Δx, Δy = 1, 0
    elseif direction == :right
        Δx, Δy = 0, 1
    else # direction == :left
        Δx, Δy = 0, -1
    end

    x2 = x + Δx
    if x2 > length(lattice[:, 1]) || x2 < 1
        return lattice
    end
    y2 = y + Δy
    if y2 > length(lattice[1, :]) || y2 < 1
        return lattice
    end

    if self_avoiding && lattice[x2,y2] > 0
        available_directions = filter(x -> x != direction, available_directions)
        if length(available_directions) == 0
            return :aborted
        else
            return move(lattice, available_directions=available_directions)
        end
    end

    # move
    lattice[x,y] = trace
    lattice[x2,y2] = particle

    return lattice
end

function simulate_average_distance(n::Integer, lattice_size::Integer=150; iterations::Integer=1000, self_avoiding=false)
    Rs = Vector(undef, Integer(iterations))
    @inbounds @threads for i in 1:iterations
        L = init_lattice(lattice_size)
        start_pos = locate_particle(L)
        RandomWalk(L, n, self_avoiding=self_avoiding)
        end_pos = locate_particle(L)
        Rs[i] = squared_distance(start_pos, end_pos)
    end
    return mean(Rs), std(Rs)
end

simulate_average_distance(10)

N = 1000

ns = [20, 40, 60, 80, 100]
means = []
stds = []
for n in ns
    R2 = simulate_average_distance(n, iterations=N)
    append!(means, R2[1])
    append!(stds, R2[2])
end

Plots.plot(ns, means, marker=:circ, lw=0, label=L"\langle R^2(n) \rangle")
Plots.plot!(ns, stds, marker=:circ, lw=0, label=L"\Delta R^2(n)")
Plots.plot!(ns, ns, color=:red, label=L"n")

Plots.savefig("ASP T 2024-10-28 a.pdf")

ns = [15, 20, 25, 30, 35, 40]
means = []
stds = []
for n in ns
    R2 = simulate_average_distance(n, self_avoiding=true, iterations=N)
    append!(means, R2[1])
    append!(stds, R2[2])
end

Plots.plot(ns, means, marker=:circ, lw=0, label=L"\langle R^2(n) \rangle")
Plots.plot!(ns, stds, marker=:circ, lw=0, label=L"\Delta R^2(n)")
Plots.plot!(ns, ns, color=:red, label=L"n")
Plots.plot!(ns, ns.^3//2, color=:green, label=L"n")

Plots.xaxis!(:log)
Plots.yaxis!(:log)

Plots.savefig("ASP T 2024-10-28 b.pdf")
