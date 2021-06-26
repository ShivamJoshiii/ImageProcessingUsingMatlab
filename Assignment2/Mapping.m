function[scaledIm,transfunc] = Mapping(Im,range)

Find_Im_Min = min(min(Im));
Find_Im_Max = max(max(Im));
Check_Range1 = range(1);
Check_Range2 = range(2);

if ( Check_Range1 < 0 )
    disp('Range is not right.');
    
    return;
    
end
if ( Check_Range1 > 255 )
    disp('Range is not right.');
    
    return;
end

if ( Check_Range2 < 0 )
    disp('Range is not right.');
    
    return;
end
if ( Check_Range2 > 255 )
    disp('Range is not right.');
    
    return;
end

a=0;
b=0;
syms a b
eqn1 = Find_Im_Min*a + b == Check_Range1;
eqn2 = Find_Im_Max*a + b == Check_Range2;
sol = solve([eqn1,eqn2],[a,b]);

a = double(sol.a);
b = double(sol.b);

scaledIm = uint8(a.*double(Im) + b) ;

vec = Find_Im_Min:Find_Im_Max;
transfunc = uint8(a.*double(vec) + b ) ;

transfunc = double(transfunc)./double(vec);
end