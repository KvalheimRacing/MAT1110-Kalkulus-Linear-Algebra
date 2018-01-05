from numpy import *
import matplotlib.pyplot as plt

# Summere tall

print 3 + 4

# Potens

print 2**4

# Divisjon

print 3/4.

# $\sin(x)$ og tallet $\pi$

print sin(pi/2)

# $e^x$

print exp(2)


# Kvadratrot


print sqrt(16)


# Regne ut logaritmer og verifisere regnereglene for disse


print log(exp(2))


# Sinus i grader
# Sinus regnes ut i radianer. Folgende regner ut i grader i stedet.


print sin(radians(pi/2))


# Presisjon
# Bruke 16 siffers presisjon i stedet


print '%.16f' % sin(radians(pi/2))


# Bruke 4 siffers presisjon


print '%.4f' % sin(radians(pi/2))


# Definere variable


a = 1
b = -2
c = a*b
print c


# Funksjoner for avrunding


print floor(2.5)
print ceil(2.5)
print round(2.5)


# Generere tilfeldige tall


print random.random(3)


# Definere matriser


A = array([[2, -3, 1], [0, 1, 3], [-4, 2, 1]])
print A



B = array([[2, 3, -1], [0, 1, -3], [4, -2, 1]])
print B


# Enkle matriseoperasjoner


print (A + B)



print (A - B)



print 3*A



print matrix(A)**7


# Komponentvis potens


print matrix(A)**7


# Transponere en matrise


print A



print A.T


# Invertere en matrise


print linalg.inv(A)


# Determinant


print linalg.det(A)


# Multiplisere matriser


print dot(A, B)


# Radvektorer og soylevektorer


b = array([-2, 5, 6])
c = array([7, -3, 2])



# Skalarprodukt og vektorprodukt


print dot(b, c)
print cross(b, c)


# Diverse maater aa lage nye matriser paa


print random.random((2, 3))



print zeros((2, 3))



print ones((2, 3))



print eye(3)


# Komponentvise operasjoner


print A*B



print A/B



print sin(A)



print exp(A*(B**2))


# Regne ut maksimum i matriser


print max([1, 2, 3])



print max([[1, 2, 3], [4, 5, 6]])



print max([[1, 7, 3], [4, 5, 6]])


# Generere lister og regne ut sum


a = arange(1, 11)
print a



print sum(a)



print sum(a**2)



a = arange(1,11,2)
print a


# Enkel plotting


t = linspace(0, 2, 100)
plt.plot(t,t**2)
plt.show()



# Kombinere matriser


print A



print B



C = hstack([A, B])
print C



C=vstack([A, B])
print C


# Trekke ut deler av en matrise


print C[0,1]



print C[0,:]



print C[:,0]



print C[0:3,1]



print C[ix_([0,2],[0,2])]
