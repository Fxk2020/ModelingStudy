function [rr,d] = getData_COVID_19( )
[data,~,~]=xlsread('.\data\ȫ���¹ڷ�������.xls');
 
pat=data(:,2);  %ȷ������
pat_re=data(:,5); %��������
pat_die=data(:,4);  %��������
[fitresult, gof] = get_RE_2(pat, pat_re);
m=fitresult.a;
n=fitresult.b;
for i=1:length(pat)
    rr(i)=m*pat(i)^(n-1);
end
[fitresult, gof] = getDIE(pat, pat_die);
d=fitresult.p1;
end