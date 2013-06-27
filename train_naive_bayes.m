function [ pTrue p0v p1v] = train_naive_bayes(X,y)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[m n]=size(X);
pTrue=sum(y)/m;
p1v=ones(1,n);
p0v=ones(1,n);
p1d=2;
p0d=2;
for i=1:m
   if y(i)==1
       p1v = p1v + X(i,:);
       p1d = p1d + 1 ;
   else 
       p0v = p0v + X(i,:);
       p0d = p0d + 1;
   end
   
end
p1v=log(p1v./p1d) ;
p0v=log(p0v./p0d) ;
end

