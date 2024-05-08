#Michael Boateng
#Date: 2021-07-01
#PowerModels.jl is a Julia/JuMP package for solving power flow and optimal power flow problems

#Power Grid Library: IEE case 14 
#AC-PF

using PowerModels
using Ipopt
solve_ac_opf("data/case14.m", Ipopt.Optimizer)


#Power Grid Library: BW case 33
#AC-OPF
using PowerModels
using Ipopt
solve_ac_opf("data/case33bw.m", Ipopt.Optimizer)


#Power Grid Library: Texas [case_ACTIVSg2000.m]
#DC-OPF
using PowerModels
using Ipopt
solve_dc_opf("case_ACTIVSg2000.m", Ipopt.Optimizer)


#MATPOWER Wildfire Analysis of RTS_GLC [RTS_GLC_risk.m]
#Reliability Test System_Grid Modernization Lab Consortium

#Used a risk weight of 0.15 | Solve using AC-OPF

using PowerModels
using Ipopt
solve_ac_opf("data/RTS_GLC_risk.m", Ipopt.Optimizer)
