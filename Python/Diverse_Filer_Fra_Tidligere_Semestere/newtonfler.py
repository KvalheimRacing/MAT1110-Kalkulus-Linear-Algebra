from numpy import *

def newtonfler(x, F, J, epsilon, N):
    n = 0
    while linalg.norm(F(x)) > epsilon and n<=N:
        x = x - linalg.solve(J(x),F(x))
        fval = F(x)
        print 'itnr=%2d x=[%13.10f,%13.10f] F(x)=[%13.10f,%13.10f]\n' % (n, x[0], x[1], fval[0], fval[1])
        n = n + 1
    return x