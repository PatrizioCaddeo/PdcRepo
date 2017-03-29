function sistema(s,v,w,N)

a=Array{Float64}(N+1)
b=Array{Float64}(N+1)

a[1]=s
b[1]=v

for k in 1:N
a[k+1]=a[k]+b[k]*2*pi/(N*w)
b[k+1]=b[k]-w^2*a[k]*2*pi/(N*w)
end

function x(t)
if floor(Int64, t*N*w/(2*pi))==0
return a[1]
elseif floor(Int64, t*N*w/(2*pi))==N
return a[N+1]
else
n=floor(Int64, t*N*w/(2*pi))
return a[n+1]+(a[n+2]-a[n+1])/(2*pi/(N*w))*(t-2*(n+1)*pi/(N*w))
end
end

return x

end
