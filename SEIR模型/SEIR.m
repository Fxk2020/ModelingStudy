clear;clc

S=139300; %易感人群
E=2.5;  %潜伏期人群
I=1;  %感染者
R=0;  %康复者

N=S+E+I+R; %总数

r1=10;  %潜伏期患者每天接触到的人
r2=10;  %感染者每天接触到的人
b1=0.045; %潜伏期患者传染概率
b2=0.045; %感染者传染概率
a=0.10;  %潜伏期患者变成感染者

%r患者康复概率
%d患者死亡概率
[rr,d] = getData_COVID_19( );
days=600;

for i=1:600
    if i>=26
        r1=5;
        r2=1;
        b1=0.035; %戴口罩后潜伏期患者传染概率
        b2=0.035; %戴口罩后感染者传染概率
    end
    if i<=28
        r=rr(i);
    else
        r=rr(28);
    end
    S(i+1)=S(i)-(r1*b1*E(i)*(S(i)/N)+r2*b2*I(i)*(S(i)/N));
    E(i+1)=E(i)+(r1*b1*E(i)*(S(i)/N)+r2*b2*I(i)*(S(i)/N))-(E(i)*a);
    I(i+1)=I(i)+E(i)*a-(I(i)*r+I(i)*d);
    R(i+1)=R(i)+I(i)*r;
    N=S(i+1)+E(i+1)+ I(i+1)+R(i+1);
end

x=1:days+1;
subplot(2,1,1);
plot(x,S,x,E,x,I,x,R);
xlabel('天数');
ylabel('人数');
legend('易感人群','潜伏期患者','感染者','康复者');
hold on;
subplot(2,1,2)
plot(rr(1:42))
xlabel('天数');
ylabel('康复率');





    


