from numpy import *

def oppg104(a,b,m):
  ret = zeros(m)
  if m >= 1:
    ret[0] = b
  for k in range(1,m):
    ret[k] = a*ret[k-1]*(1-ret[k-1])
  return ret