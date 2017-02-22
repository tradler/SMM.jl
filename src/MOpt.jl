
module MOpt

# Dependencies
# ############

using Distributions 
using Logging
using DataFrames, DataFramesMeta
using HDF5
import Base.show, Base.std
using GLM
using DataStructures
using PDMats
using Roots
using Documenter
using Plots
pyplot(reuse=true)
using FreqTables

@Logging.configure(level=DEBUG)

import Base.get, Base.mean

# exports: Types
export MProb, Eval,MAlgo, MAlgoBGP 

# exports: methods
export addParam!, 
       addSampledParam!, 
       addMoment!, 
       addEvalFunc!, 
       setMoment, 
       readEvalArray , 
       dataMoment,
       dataMomentW,
       summary


# load files
# ############

include("mopt/mprob.jl")
include("mopt/incmopt.jl")
include("mopt/Eval.jl")
# include("mopt/chains.jl")
include("mopt/slices.jl")
include("mopt/AlgoAbstract.jl")
include("mopt/AlgoBGP.jl")
include("mopt/ObjExamples.jl")
include("mopt/Examples.jl")
# include("mopt/sobolsearch.jl")
# include("mopt/econometrics.jl")

# if is_apple()
#        using PyPlot
       include("mopt/plotting.jl")
# end


end 	# module




