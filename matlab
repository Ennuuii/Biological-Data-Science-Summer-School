O = detectImportOptions('C:\Users\user\Downloads\new 24.txt','DecimalSeparator',',');
 preview('C:\Users\user\Downloads\new 24.txt',O);
 T = readtable('C:\Users\user\Downloads\new 24.txt',O);
 K.Var2 = mean(T{:,"Var2"},"all","default");
 p = K.Var2;
 u = groupfilter(T,"Var1",@(x) max(x) <= p);
 x =u{ : , "Var1"};
 y =u{ : ,"Var2"};
 plot(x, y);
 title('графік залежності значень')
 xlabel('x')
 ylabel('y')
