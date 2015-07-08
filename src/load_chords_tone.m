
%--------------------------
chords_tone_mask(12,48) = 0; % inicializando o banco de dados para acordes
%--------------------------


%C
%CM
chords_tone_mask(1,1) = 1; %baixo
chords_tone_mask(5,1) = 1; %terça
chords_tone_mask(8,1) = 1; %quinta
%Cm
chords_tone_mask(1,2) = 1; %baixo
chords_tone_mask(4,2) = 1; %terça
chords_tone_mask(8,2) = 1; %quinta
%Caum
chords_tone_mask(1,3) = 1; %baixo
chords_tone_mask(5,3) = 1; %terça
chords_tone_mask(9,3) = 1; %quinta
%Cdim
chords_tone_mask(1,4) = 1; %baixo
chords_tone_mask(4,4) = 1; %terça
chords_tone_mask(7,4) = 1; %quinta

%C#
%C#M
chords_tone_mask(2,5) = 1; %baixo
chords_tone_mask(6,5) = 1; %terça
chords_tone_mask(9,5) = 1; %quinta
%C#m
chords_tone_mask(2,6) = 1; %baixo
chords_tone_mask(5,6) = 1; %terça
chords_tone_mask(9,6) = 1; %quinta
%C#aum
chords_tone_mask(2,7) = 1; %baixo
chords_tone_mask(6,7) = 1; %terça
chords_tone_mask(10,7) = 1; %quinta
%C#dim
chords_tone_mask(2,8) = 1; %baixo
chords_tone_mask(5,8) = 1; %terça
chords_tone_mask(8,8) = 1; %quinta

%D
%DM
chords_tone_mask(3,9) = 1; %baixo
chords_tone_mask(7,9) = 1; %terça
chords_tone_mask(10,9) = 1; %quinta
%Dm
chords_tone_mask(3,10) = 1; %baixo
chords_tone_mask(6,10) = 1; %terça
chords_tone_mask(10,10) = 1; %quinta
%Daum
chords_tone_mask(3,11) = 1; %baixo
chords_tone_mask(7,11) = 1; %terça
chords_tone_mask(11,11) = 1; %quinta
%Ddim
chords_tone_mask(3,12) = 1; %baixo
chords_tone_mask(6,12) = 1; %terça
chords_tone_mask(9,12) = 1; %quinta

%D#
%D#M
chords_tone_mask(4,13) = 1; %baixo
chords_tone_mask(8,13) = 1; %terça
chords_tone_mask(11,13) = 1; %quinta
%D#m
chords_tone_mask(4,14) = 1; %baixo
chords_tone_mask(7,14) = 1; %terça
chords_tone_mask(11,14) = 1; %quinta
%D#aum
chords_tone_mask(4,15) = 1; %baixo
chords_tone_mask(8,15) = 1; %terça
chords_tone_mask(12,15) = 1; %quinta
%D#dim
chords_tone_mask(4,16) = 1; %baixo
chords_tone_mask(7,16) = 1; %terça
chords_tone_mask(10,16) = 1; %quinta

%E
%EM
chords_tone_mask(5,17) = 1; %baixo
chords_tone_mask(9,17) = 1; %terça
chords_tone_mask(12,17) = 1; %quinta
%Em
chords_tone_mask(5,18) = 1; %baixo
chords_tone_mask(8,18) = 1; %terça
chords_tone_mask(12,18) = 1; %quinta
%Eaum
chords_tone_mask(5,19) = 1; %baixo
chords_tone_mask(9,19) = 1; %terça
chords_tone_mask(1,19) = 1; %quinta
%Edim
chords_tone_mask(5,20) = 1; %baixo
chords_tone_mask(8,20) = 1; %terça
chords_tone_mask(11,20) = 1; %quinta

%F
%FM
chords_tone_mask(6,21) = 1; %tonica
chords_tone_mask(10,21) = 1; %terça
chords_tone_mask(1,21) = 1; %quinta
%Fm
chords_tone_mask(6,22) = 1;
chords_tone_mask(9,22) = 1;
chords_tone_mask(1,22) = 1;
%Faum
chords_tone_mask(6,23) = 1;
chords_tone_mask(10,23) = 1;
chords_tone_mask(2,23) = 1;
%Fdim
chords_tone_mask(6,24) = 1;
chords_tone_mask(9,24) = 1;
chords_tone_mask(12,24) = 1;

%F#
%F#M
chords_tone_mask(7,25) = 1;
chords_tone_mask(11,25) = 1;
chords_tone_mask(2,25) = 1;
%F#m
chords_tone_mask(7,26) = 1;
chords_tone_mask(10,26) = 1;
chords_tone_mask(2,26) = 1;
%F#aum
chords_tone_mask(7,27) = 1;
chords_tone_mask(11,27) = 1;
chords_tone_mask(3,27) = 1;
%F#dim
chords_tone_mask(7,28) = 1;
chords_tone_mask(10,28) = 1;
chords_tone_mask(1,28) = 1;

%G
%GM
chords_tone_mask(8,29) = 1;
chords_tone_mask(12,29) = 1;
chords_tone_mask(3,29) = 1;
%Gm
chords_tone_mask(8,30) = 1;
chords_tone_mask(11,30) = 1;
chords_tone_mask(3,30) = 1;
%Gaum
chords_tone_mask(8,31) = 1;
chords_tone_mask(12,31) = 1;
chords_tone_mask(4,31) = 1;
%Gdim
chords_tone_mask(8,32) = 1;
chords_tone_mask(11,32) = 1;
chords_tone_mask(2,32) = 1;

%G#
%G#M
chords_tone_mask(9,33) = 1;
chords_tone_mask(1,33) = 1;
chords_tone_mask(4,33) = 1;
%G#m
chords_tone_mask(9,34) = 1;
chords_tone_mask(12,34) = 1;
chords_tone_mask(4,34) = 1;
%G#aum
chords_tone_mask(9,35) = 1;
chords_tone_mask(1,35) = 1;
chords_tone_mask(5,35) = 1;
%G#dim
chords_tone_mask(9,36) = 1;
chords_tone_mask(12,36) = 1;
chords_tone_mask(3,36) = 1;

%A
%AM
chords_tone_mask(10,37) = 1;
chords_tone_mask(2,37) = 1;
chords_tone_mask(5,37) = 1;
%Am
chords_tone_mask(10,38) = 1;
chords_tone_mask(1,38) = 1;
chords_tone_mask(5,38) = 1;
%Aaum
chords_tone_mask(10,39) = 1;
chords_tone_mask(2,39) = 1;
chords_tone_mask(6,39) = 1;
%Adim
chords_tone_mask(10,40) = 1;
chords_tone_mask(1,40) = 1;
chords_tone_mask(4,40) = 1;

%A#
%A#M
chords_tone_mask(11,41) = 1;
chords_tone_mask(3,41) = 1;
chords_tone_mask(6,41) = 1;
%A#m
chords_tone_mask(11,42) = 1;
chords_tone_mask(2,42) = 1;
chords_tone_mask(6,42) = 1;
%A#aum
chords_tone_mask(11,43) = 1;
chords_tone_mask(3,43) = 1;
chords_tone_mask(7,43) = 1;
%A#dim
chords_tone_mask(11,44) = 1;
chords_tone_mask(2,44) = 1;
chords_tone_mask(5,44) = 1;

%B
%BM
chords_tone_mask(12,45) = 1;
chords_tone_mask(4,45) = 1;
chords_tone_mask(7,45) = 1;
%Bm
chords_tone_mask(12,46) = 1;
chords_tone_mask(3,46) = 1;
chords_tone_mask(7,46) = 1;
%Baum
chords_tone_mask(12,47) = 1;
chords_tone_mask(4,47) = 1;
chords_tone_mask(8,47) = 1;
%chords_toneim_mask
chords_tone_mask(12,48) = 1;
chords_tone_mask(3,48) = 1;
chords_tone_mask(6,48) = 1;
