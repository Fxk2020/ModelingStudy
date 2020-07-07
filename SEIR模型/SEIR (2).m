clear;clc

S=8837300/8; %�׸���Ⱥ
E=2.4;  %Ǳ������Ⱥ
I=1;  %��Ⱦ��
R=0;  %������

N=S+E+I+R; %����

r1=20;  %Ǳ���ڻ���ÿ��Ӵ�������
r2=10;  %��Ⱦ��ÿ��Ӵ�������
b1=0.045; %Ǳ���ڻ��ߴ�Ⱦ����
b2=0.045; %��Ⱦ�ߴ�Ⱦ����
a=0.10;  %Ǳ���ڻ��߱�ɸ�Ⱦ��

%r���߿�������
%d������������
[rr,d] = getData_COVID_19( );
days=200;

for i=1:200
    if i>=16
        r1=3;
        r2=5;
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
subplot(2,1,1)
plot(x,S,x,E,x,I,x,R);
xlabel('����');
ylabel('����');
legend('�׸���Ⱥ','Ǳ���ڻ���','��Ⱦ��','������');
hold on;
subplot(2,1,2)
plot(rr(1:28))
xlabel('����');
ylabel('������');





    


