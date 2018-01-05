function ret=oppg104(a,b,m)
  ret = zeros(1,m);
  if (m >= 1)
    ret(1) = b;
  end
  for (k=2:m)
    ret(k) = a*ret(k-1)*(1-ret(k-1));
  end
