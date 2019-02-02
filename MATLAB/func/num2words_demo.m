function num2words_demo
% Print comparisons of NUM2WORDS output against some online-sourced examples.
%
% (c) 2016 Stephen Cobeldick

fop = {'fail','pass'};
fmt = '%s:\n  original: ''%s''\n num2words: ''%s''\n';
cmp = @(w,s)fprintf(fmt,fop{1+strcmp(w,s)},w,s);
cnp = @(w,s,n)fprintf(fmt,fop{1+strncmp(w,s,numel(1:find(w==' ',n,'last')))},w,s);

% http://www.bbc.com/news/world-asia-30288542
% "
% Gangnam Style music video 'broke' YouTube view limit
% ...
% How do you say 9,223,372,036,854,775,808?
%
% Nine quintillion, two hundred and twenty-three quadrillion, three hundred
% and seventy-two trillion, thirty-six billion, eight hundred and fifty-four
% million, seven hundred and seventy-five thousand, eight hundred and eight.
% "
n2w = num2words(uint64(9223372036854775808), 'case','sentence');
str = 'Nine quintillion, two hundred and twenty-three quadrillion, three hundred and seventy-two trillion, thirty-six billion, eight hundred and fifty-four million, seven hundred and seventy-five thousand, eight hundred and eight';
cmp(n2w,str)

% http://social.technet.microsoft.com/wiki/contents/articles/18894.how-to-get-the-textual-representation-of-a-number-convert-number-to-words-in-vb-net.aspx
n2w = num2words(1234.56, 'order',-2, 'comma',false);
str = 'one thousand two hundred and thirty-four point five six';
cmp(n2w,str)

% http://blog.functionalfun.net/2008/08/project-euler-problem-17-converting.html
n2w = num2words(uint64(9223372036854775807));
str = 'nine quintillion, two hundred and twenty-three quadrillion, three hundred and seventy-two trillion, thirty-six billion, eight hundred and fifty-four million, seven hundred and seventy-five thousand, eight hundred and seven';
cmp(n2w,str)

% https://en.wikipedia.org/wiki/9223372036854775807
n2w = num2words(uint64(9223372036854775807), 'and',false, 'comma',false);
str = 'nine quintillion two hundred twenty-three quadrillion three hundred seventy-two trillion thirty-six billion eight hundred fifty-four million seven hundred seventy-five thousand eight hundred seven';
cmp(n2w,str)

% https://en.wikipedia.org/wiki/2147483647
str = 'two billion, one hundred and forty-seven million, four hundred and eighty-three thousand, six hundred and forty-seven';
cmp(num2words(2147483647),str)

% https://en.wikipedia.org/wiki/65535_(number)
n2w = num2words(65535, 'comma',false, 'type','ordinal');
cmp(n2w,'sixty-five thousand five hundred and thirty-fifth')

% https://projecteuler.net/index.php?section=problems&id=017
cmp(num2words(342),'three hundred and forty-two')
cmp(num2words(115),'one hundred and fifteen')

% http://www.mathworks.com/matlabcentral/answers/165487-fun-question-but-confusing-convert-number-to-english-phrase
% "
% Answer by John D'Errico on 4 Dec 2014 at 22:56
% ...
% vpi2english(vpi('112242347947688988364501324523423523445'))
% ans = one hundred twelve undecillion, two hundred forty two decillion, three
% hundred forty seven nonillion, nine hundred forty seven octillion, six hundred
% eighty eight septillion, nine hundred eighty eight sextillion, three hundred
% sixty four quintillion, five hundred one quadrillion, three hundred twenty four
% trillion, five hundred twenty three billion, four hundred twenty three million,
% five hundred twenty three thousand, four hundred forty five
% "
n2w = num2words(112242347947688988364501324523423523445, 'hyphen',false, 'and',false);
str = 'one hundred twelve undecillion, two hundred forty two decillion, three hundred forty seven nonillion, nine hundred forty seven octillion, six hundred eighty eight septillion, nine hundred eighty eight sextillion, three hundred sixty four quintillion, five hundred one quadrillion, three hundred twenty four trillion, five hundred twenty three billion, four hundred twenty three million, five hundred twenty three thousand, four hundred forty five';
cnp(n2w,str,2) % ignore rounded last digit as double only supports ~15 sigfig.

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%num2words_demo