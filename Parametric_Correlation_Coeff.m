WingLength=[10.4 10.8 11.1 10.2 10.3 10.2 10.7 10.5 10.8 11.2 10.6 11.4];
TailLength=[7.4 7.6 7.9 7.2 7.4 7.1 7.4 7.2 7.8 7.7 7.8 8.3]

TailLength =

  Columns 1 through 7

    7.4000    7.6000    7.9000    7.2000    7.4000    7.1000    7.4000

  Columns 8 through 12

    7.2000    7.8000    7.7000    7.8000    8.3000

figure(1); clf; hold on;plot(WingLength,TailLength,'.','Markersize',35,'color',[.5 .5 .5]);
xlabel('Wing Length (cm)','fontname','Georgia','fontsize', 12);
ylabel('Tail Length (cm)','fontname','Georgia','fontsize', 12);
set(gca,'fontname','Georgia','fontsize',12);
R = corrcoef(WingLength,TailLength)

R =

    1.0000    0.8704
    0.8704    1.0000

R = corrcoef(TailLength,WingLength);
R = corrcoef(TailLength,WingLength)

R =

    1.0000    0.8704
    0.8704    1.0000

%ask for help calculating standard error

[R,P,RL,RU] = corrcoef(WingLength, TailLength)

R =

    1.0000    0.8704
    0.8704    1.0000


P =

    1.0000    0.0002
    0.0002    1.0000


RL =

    1.0000    0.5923
    0.5923    1.0000


RU =

    1.0000    0.9632
    0.9632    1.0000
