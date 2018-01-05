# coding=utf-8
from numpy import *

tol = 1.0e-10 #toleranse for hva som er numerisk null

def cutNoise(A):
    """Funksjon som setter alle elementer < tol til 0, siden
    disse antageligvis skulle vært null, men ikke ble det pga
    numerisk unøyaktighet."""
    m,n = A.shape
    for i in xrange(m):
        for j in xrange(n):
            if abs(A[i,j]) < tol:
                A[i,j] = 0
    return A

def gramschmidt(A):
    """Funksjon som finner en ortogonal basis for kolonnerommet
    til en matrise A ved Gram-Schmidt-prosedyren.
    Input: Matrisen A
    Output: En matrise V med samme kolonnerom som A med ortogonale
            søyler. Dersom rank A < n (der n er antall søyler i A)
            vil V inneholde (n - rank A) null-søyler.
    """
    m,n = A.shape
    V = matrix(zeros((m,n),double))
    
    for j in xrange(n):
        v0 = A[:,j]
        v = v0.copy()
        for i in xrange(j):
            vi = V[:,i]
            
            nullvektor = True
            for k in xrange(len(vi)):   # Vi må sjekke om vi er en nullvektor
                if abs(vi[k]) > tol:    # for å ikke dele med null.
                    nullvektor = False
                    break
                
            if not nullvektor:
                v -= (vdot(v0,vi)/vdot(vi,vi))*vi # Trekk fra projeksjonen på
                                                  # underrom utspent av de første vektorene
        V[:,j] = v
    
    return V

def orth(A):
    """Funksjon som finner en ortonormal basis for Col A.
    Input: Matrisen A
    Output: En matrise V med ortonormale basisvektorer for Col A
    """
    A = matrix(A,double)
    # Bruker først Gram-Schmidt-funksjonen
    V = gramschmidt(A)

    # Fjerner nullvektorer
    m,n = V.shape
    indekser = [] # nr på nullsøyler
    for j in xrange(n):
        nullvektor = True
        for i in xrange(m):
            if abs(V[i,j]) > tol:
                nullvektor = False
                break
        if nullvektor:
            indekser.append(j)

    V = matrix(V)
    k = 0
    for j in indekser:
        indeks = j - k
        V = hstack((V[:,:indeks],V[:,indeks+1:]))
        k += 1

    # Normalisering
    for j in xrange(V.shape[1]):
        V[:,j] /= linalg.norm(V[:,j])

    return cutNoise(array(V))

def rang(A):
    """Funksjon som returnerer rangen til A."""
    return orth(A).shape[1]

def null(A):
    """Funksjon som finner en ortonormal basis for nullrommet til en matrise.
    Input: Matrisen A
    Output: En matrise der søylene utgjør den ortonormale basisen for Nul A
    """
    A = matrix(A,double)
    m,n = A.shape
    rankA = rang(A)
    dim = n - rankA
    if dim == 0:
        return zeros((n,dim),double) # dim Nul A = 0

    # Radreduserer
    reduced = rref(A)
    
    # Finner pivotsøyler
    pivot = []
    for i in xrange(m):
        for j in xrange(n):
            if reduced[i,j] != 0:
                pivot.append(j)
                break
    # Lager liste over ikke-pivotsøyler
    ikkepivot = []
    for j in xrange(n):
        if not j in pivot:
            ikkepivot.append(j)
    
    # Lager matrise som skal holde basisen
    V = matrix(zeros((n,dim),double))
    
    # Legger til enere
    for j in xrange(dim):
        V[ikkepivot[j],j] = 1

    # Legger til resten
    for i in xrange(rankA):
        for j in xrange(dim):
            V[pivot[i],j] = -reduced[i,ikkepivot[j]]
        
    # Ortogonaliserer og normaliserer
    V = gramschmidt(V)
    for j in xrange(dim):
        V[:,j] /= linalg.norm(V[:,j])

    return cutNoise(V)

def rref(M,*args): 
    """
    rref(M,toleranse) 
    M: 2-D matrise. Største neglisjerbare element. 
    Bestemt av algoritme i programmet dersom ingen ting spesifiseres.
    
    Implementering av Gauss-Jordan algoritmen.
    Bringer matrise M (2-D array) på redusert trappeform.
    
    Bruker lignende algoritme som i matlabs rref funksjon.
    Fjerner små pivotelementer (<tol) som kan skyldes avrundingsfeil.     
    For penere utskrifter settes alle elementer < tol lik 0
    i arrayen som returneres.
    
    OBS: Denne algoritmen kan man ikke stole blindt på. 
    Kan for mange ''nesten singulære'' matriser gi helt feil svar. 
    """
    # Vi forsikrer oss om at M er et array-objekt med float elementer.
    M=matrix(M,float)
    
    if rank(M)!=2:
        print 'Feil: Input må være et todimensjonalt objekt.'
        return 
    
    (m,n) = M.shape
    # Leser inn minste neglisjerbare element.
    if len(args)<2:
        # Finner største avrundingsfeil
        maxabs = amax(abs(M).sum(0))
        toleranse = 2.22044*10**(-16) * max([m,n]) * maxabs
    else:
        toleranse=args[1]
    
    soylenr=-1 # holder orden på hvilken pivot søyle 
    for y in xrange(m):
        soylenr += 1
        while soylenr<n:        
            # Finn raden blant de gjenværende radene,
            # der 1. element har størst absoluttverdi.
            Mabsolute=abs(M[y:,soylenr])
            storsteelement=Mabsolute.argmax()+y
            
            # Sjekk om største element er mindre enn toleransen.
            # I så fall: slett raden. 
            # Ellers: bruk raden som pivot-rad, og avbryt loopen.
            if Mabsolute[storsteelement-y,0]<toleranse:
                M[storsteelement:,soylenr]=0
                soylenr+=1              
            else:
                # bytt om rader
                M[[y,storsteelement],:] = M[[storsteelement,y],:]
                break
            
        if soylenr<n:
            # Normaliser pivotrad
            M[y,soylenr:]/=M[y,soylenr]
            
            # Fjern de resterende elementene i søylen
            for z in xrange(m): 
                if z!=y: 
                    M[z,soylenr:] -= M[y,soylenr:] *  M[z,soylenr]
                                
    # Setter alle tall mindre enn toleranse lik 0
    M_bool=abs(M)>toleranse
    M =matrix(asarray(M)*asarray(M_bool)) # Komponentvis produkt
    
    return M
