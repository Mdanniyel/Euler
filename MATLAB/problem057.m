tic
 a1=[1];
 a=[3];
 b1=1;
 b=[2];
 c=0;
 for i=1:1e3
     ra=Dig(a.*2);
     inda=length(ra):-1:(1+length(ra)-length(a1));
     ra(inda)=ra(inda)+flip(a1);
     ra=Dig(ra);
     rb=Dig(b.*2);
     indb=length(rb):-1:(1+length(rb)-length(b1));
     rb(indb)=rb(indb)+flip(b1);
     rb=Dig(rb);
     a1=a;
     b1=b;
     a=ra;
     b=rb;
     if length(ra)>length(rb)
         c=c+1;
     end
 end
 disp(c);
toc