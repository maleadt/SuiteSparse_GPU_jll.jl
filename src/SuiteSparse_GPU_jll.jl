# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SuiteSparse_GPU_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SuiteSparse_GPU")
JLLWrappers.@generate_main_file("SuiteSparse_GPU", UUID("d273dfef-62f2-5f88-806b-f32b81b662f1"))
end  # module SuiteSparse_GPU_jll
