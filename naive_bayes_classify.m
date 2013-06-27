function [ y ] = naive_bayes_classify(xv,pTrue,p0v,p1v)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
pfalse=1-pTrue;
p1 = sum(xv.*p1v) + log(pTrue);
p0 = sum(xv.*p0v) * log(pfalse);
if(p1 > p0)
    y=1;
else 
    y=0;
end
end