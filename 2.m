A = [1 2 3; 4 5 6; 7 8 9]

A =

     1     2     3
     4     5     6
     7     8     9

B = inv(A)
Warning: Matrix is close to singular or badly scaled. Results may be inaccurate.
RCOND =  1.541976e-18. 
 

B =

   1.0e+16 *

   -0.4504    0.9007   -0.4504
    0.9007   -1.8014    0.9007
   -0.4504    0.9007   -0.4504

A * B

ans =

     2     0     2
     8     0     0
    16     0     8

C = A'

C =

     1     4     7
     2     5     8
     3     6     9

A

A =

     1     2     3
     4     5     6
     7     8     9

m = max(A, [], 2)

m =

     3
     6
     9

Am = [A, m]

Am =

     1     2     3     3
     4     5     6     6
     7     8     9     9

m = max(A, [], 1)

m =

     7     8     9

Am = max(A, [], 1)

Am =

     7     8     9

Am = max(Am, [], 1)

Am =

     7     8     9

Am = [A; max(A)]

Am =

     1     2     3
     4     5     6
     7     8     9
     7     8     9

Am = [A; min(A)]

Am =

     1     2     3
     4     5     6
     7     8     9
     1     2     3

Am = [A; min(A): max(A)]
Error using  : 
Colon operands must be real scalars.
 

Am = [A; min(A); max(A)]

Am =

     1     2     3
     4     5     6
     7     8     9
     1     2     3
     7     8     9

Am = [A; max(A),[]]

Am =

     1     2     3
     4     5     6
     7     8     9
     7     8     9

F = [A max(A, [], 2]; [max(A,[],1) max(max(A))]]
 F = [A max(A, [], 2]; [max(A,[],1) max(max(A))]]
                    ↑
Error: Unmatched ']'. Check for missing '['.
 

Did you mean:
F = [A max(A, [], 2); [max(A,[],1) max(max(A))]]

F =

     1     2     3     3
     4     5     6     6
     7     8     9     9
     7     8     9     9

A max(A, [], 2)
Unrecognized function or variable 'A'.
 

[A max(A, [], 2)]

ans =

     1     2     3     3
     4     5     6     6
     7     8     9     9

[max(A,[],1) max(max(A))]]
 [max(A,[],1) max(max(A))]]
                          ↑
Error: Unmatched ']'. Check for missing '['.
 

[max(A,[],1) max(max(A))]

ans =

     7     8     9     9

[A min(A, [], 2)]

ans =

     1     2     3     1
     4     5     6     4
     7     8     9     7

[min(A,[],1) min(min(A))]

ans =

     1     2     3     1

A

A =

     1     2     3
     4     5     6
     7     8     9

columnMean = mean(A)

columnMean =

     4     5     6

rowMean = mean(A)

rowMean =

     4     5     6

rowMean = mean(A, 2)

rowMean =

     2
     5
     8

overallMean = mean(A, 'all');

meanIgnoringMissing = mean(A, 'omitnan');

weights = [0.1; 0.3; 0.6]; % Example weights
   weightedMean = mean(A, 1, 'Weights', weights);

overallMean = mean(A);
E = [A mean(A, 2); [mean(A,1) mean(mean(A)]]

 E = [A mean(A, 2); [mean(A,1) mean(mean(A)]]
                                           ↑
Error: Unmatched ']'. Check for missing '['.
 

Did you mean:
E = [A mean(A, 2); [mean(A,1) mean(mean(A))]]

E =

     1     2     3     2
     4     5     6     5
     7     8     9     8
     4     5     6     5

E = [A median(A, 2); [median(A,1) med(mean(A))]]
Unrecognized function or variable 'med'.
 

Did you mean:
E = [A median(A, 2); [median(A,1) median(median(A))]]

E =

     1     2     3     2
     4     5     6     5
     7     8     9     8
     4     5     6     5

diag(A)

ans =

     1
     5
     9

prod(A)

ans =

    28    80   162

prod(A, 2)

ans =

     6
   120
   504

prod(A, 'all')

ans =

      362880

sort(A, 'descend')

ans =

     7     8     9
     4     5     6
     1     2     3

sort(A)

ans =

     1     2     3
     4     5     6
     7     8     9

det(A)

ans =

   6.6613e-16

triu(A)

ans =

     1     2     3
     0     5     6
     0     0     9

tril(A)

ans =

     1     0     0
     4     5     0
     7     8     9

a
Unrecognized function or variable 'a'.
 

Did you mean:
AA
Unrecognized function or variable 'AA'.
 

A

A =

     1     2     3
     4     5     6
     7     8     9

d = diag(A)

d =

     1
     5
     9

d(:) = 1

d =

     1
     1
     1

D = diag(d)

D =

     1     0     0
     0     1     0
     0     0     1

A-dig(diag(A))
Unrecognized function or variable 'dig'.
 

Did you mean:
A-diag(diag(A))

ans =

     0     2     3
     4     0     6
     7     8     0

diag(diag(A))

ans =

     1     0     0
     0     5     0
     0     0     9

 x = -3.5;
y=2.8;
z=[4,5,-1,7];
n = 100;
m=5;
fprintfi Natural logarithm values:\n");

fprintf('log(%g)=%g\n', x, log(x));

G

fprintf('log(%g)=%g\n\n', y, log(y));

% Display the remainder of x and y

fprintf('Remainder values: \n');

fprintf('rem(%g, %g) = %g\n', x, y, rem(x, y));

fprintf('rem(%g, %g) = %g\n\n', y, x, rem(y, x));

% Display the square roots of x and y

fprintf('Square root values: \n');

fprintf('sqrt(%g)=%g\n', x, sqrt(abs(x)));

fprintf('sqrt(%g)=%g\n\n', y, sqrt(y));

% Display a random matrix of size n x m

fprintf('Random matrix:\n');

randmat = rand(n, m);
Unrecognized function or variable 'fprintfi'.
 

Did you mean:
fprintf Natural logarithm values:\n");
Natural>> 
fprintf Natural logarithm values:\n");
Natural>> 4

ans =

     4

