%Import SpectralAnalysisData into a table%
%requires Signal Processing Toolkit, code adapted from MathWorks Help
%Center "Significance Testing for Periodic Component"
%
%Select Data
Mean = SpectralAnalysisDataS2.(11);
%
%generate and evaluate significance of sinusoidial components in the
%periodogram using Fisher's g-statistic
%
x = Mean
Fs = 1; %sample rate--one sample collected per hour
%plots periodogram while excluding 0 and Fs/2
[Pxx,F] = periodogram(x,rectwin(length(x)),length(x),Fs);
Pxx = Pxx(2:length(x)/2);
%
periodogram(x,rectwin(length(x)),length(x),Fs)
%
%Finds max value
[maxval,index] = max(Pxx);
%
%ratio of max value to all periodogram values
fisher_g = Pxx(index)/sum(Pxx)
%
%Finds where the max value occurs
F = F(2:end-1);
F(index)
%
%p value calculation
N = length(Pxx);
nn = 1:floor(1/fisher_g);
%
I = (-1).^(nn-1).*exp(gammaln(N+1)-gammaln(nn+1)-gammaln(N-nn+1)).*(1-nn*fisher_g).^(N-1);
%
pval = sum(I)
% p-value of > 0.00001 is significant