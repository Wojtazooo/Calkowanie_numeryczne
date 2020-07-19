function [przyb_calka,A] = kw_trapezow(a,b,f,N)
% WEJSCIE 
% a - poczatek przedzialu
% b - koniec przedzialu 
% f - funkcja ktora bedziemy calkowac
% N - liczba popdprzedzialow
% WYJSCIE
% przyb_calka - przyblizona wartosc calki obliczona zl metoda trapezow
% A           - wektor punktow wyznaczajacych podprzedziy (do wykresu)

% granice podprzedzia?�w <a,b> jest ich o jeden wi?cej ni? podprzedzia?�w
A = linspace(a,b,N+1);
% szeroko?c podprzedzia?u
szer = ((b-a)/N);
 
% wartosc ca?ki
% ka?de dwa trapezy obok siebie maj? wspoln? podstaw?
% wszystkie trapezy maj? tak? sam? wysoko?? r�wn? szer
% Suma p�l takich trapez�w mo?na upro?ci?
% dla przyk?adu trzy takie trapezy mo?na zsumowa? w nast spos�b
% Suma p�l = h * (a/2 + b + c + d/2) gdzie a,b,c,d to nastepne wysokosci
% trapezow
przyb_calka = szer*(sum(f(A)) - (f(a)/2) - (f(b)/2));

end
