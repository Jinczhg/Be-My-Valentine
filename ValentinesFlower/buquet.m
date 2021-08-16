function [] = buquet(varargin)

if ischar(varargin{1})
    someonespecial = varargin{1};
else
    someonespecial='Me';
end
t=0:pi/2048:2*pi;
hold on

plot(1);

xcone=[-40 0 40];
ycone=[-20 -100 -20];
fill(xcone,ycone,'m');

for f=1:500

    k1=0;
    k2=0;
    
    while (k1 <= 4 || k2 <= 4)
        k1=floor(10*rand(1)); %outer flower
        k2=floor(15*rand(1)); %inner flower
    end
    T1=2*pi*rand(1); 
    T2=2*pi*rand(1); 
    
    
    Roff=0;
    Rin=0;
    while (Roff == Rin || Roff <= 5 || Rin <= 0 || abs(Roff-Rin)<=3)
        Roff=floor(10*rand(1));
        Rin=floor(4*rand(1));
    end
    
    if Rin > Roff
        bin=Roff;
        Roff=Rin;
        Rin=bin;
    end
    
    r1=sin(k1*t+T1)+Roff;
    r2=sin(k2*t+T2)+Rin;
    
    Rplace=50*rand(1);
    Tplace=2*pi*rand(1);
    
    Xoff=Rplace*cos(Tplace);
    Yoff=Rplace*sin(Tplace);
    
    x1=r1.*cos(t)+Xoff;
    y1=r1.*sin(t)+Yoff;
    
    x2=r2.*cos(t)+Xoff;
    y2=r2.*sin(t)+Yoff;
    
    FlowerColor=[rand(1) rand(1) rand(1)];
    fill([x1 x2],[y1 y2],FlowerColor,'EdgeColor',FlowerColor)
end

axis equal
h = msgbox( ...
    ['Happy Valentines Day, ' someonespecial '!'], ...
    '', ...
    'warn' ...
    );
set(gca,'visible','off')
end


