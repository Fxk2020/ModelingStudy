function [rr,d] = getData_COVID_19( )
[data,~,~]=xlsread('.\data\全国新冠肺炎数据.xls');
 
pat=data(:,2);  %确诊人数
pat_re=data(:,5); %康复人数
pat_die=data(:,4);  %死亡人数
[fitresult, gof] = get_RE_2(pat, pat_re);
m=fitresult.a;
n=fitresult.b;
for i=1:length(pat)
    rr(i)=m*pat(i)^(n-1);
end
[fitresult, gof] = getDIE(pat, pat_die);
d=fitresult.p1;
end