using Plots

# Network flags, these designate various properties of networks that may be used for optimization or to inform plotting, etc.
@enum NetworkFlag Passive = 1,Lossless = 2 , Active = 4, Reciprocal = 8, Symmetric, = 16

# Frequency class
struct Frequency

# Network class
struct Network 
    freq::Frequency
    s::Array{Array{Array{Complex}}}
    z0::Array{Complex}

function fromTouchstone(network::Network)

end

function numPorts(network::Network)
    return size(network.s[0])
end

struct Circuit
    networks::Array{Network}