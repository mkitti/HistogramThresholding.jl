module HistogramThresholding

using Images
using LinearAlgebra

abstract type HistogramDistribution end
struct Unimodal <: HistogramDistribution end
struct Bimodal <: HistogramDistribution end

abstract type ThresholdAlgorithm end
struct Otsu <: ThresholdAlgorithm end
struct MinThreshold <: ThresholdAlgorithm end
struct Intermodes <: ThresholdAlgorithm end
struct UniThreshold <: ThresholdAlgorithm end
struct Moments <: ThresholdAlgorithm end

include("common.jl")
include("otsu.jl")
include("unimodal.jl")
include("moments.jl")
include("minimum.jl")
include("intermodes.jl")

export
	# main functions
  find_threshold,
	Otsu,
	UniThreshold,
	Moments,
	MinThreshold,
	Intermodes

end # module