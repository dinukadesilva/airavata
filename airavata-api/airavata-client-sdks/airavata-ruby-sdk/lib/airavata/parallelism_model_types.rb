#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module ApplicationParallelismType
  SERIAL = 0
  MPI = 1
  OPENMP = 2
  OPENMP_MPI = 3
  CCM = 4
  CRAY_MPI = 5
  VALUE_MAP = {0 => "SERIAL", 1 => "MPI", 2 => "OPENMP", 3 => "OPENMP_MPI", 4 => "CCM", 5 => "CRAY_MPI"}
  VALID_VALUES = Set.new([SERIAL, MPI, OPENMP, OPENMP_MPI, CCM, CRAY_MPI]).freeze
end

