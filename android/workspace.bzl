load('@org_tensorflow//tensorflow:workspace.bzl', 'tf_workspace')

def android_workspace():
  tf_workspace()
  
  
# use custom copts instead of tf_copts from tensorflow:tensorflow.bzl
def android_copts():
  return (["-DEIGEN_AVOID_STL_ARRAY",
           "-Iexternal/gemmlowp",
           "-Wno-sign-compare",
           "-fno-exceptions"] +
          ["-mfpu=neon",
          "-std=c++11",
          "-DTF_LEAN_BINARY",
          "-O2"]
          )