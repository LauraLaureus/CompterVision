I = imread('rosa.jpg');

%%
%%primer apartado

figure,subplot(1,4,1), imshow(I);
subplot(1,4,2), imshow(I(:,:,1));%canal rojo
subplot(1,4,3), imshow(I(:,:,2));%canal verde
subplot(1,4,4), imshow(I(:,:,3));%canal azul

%%
%%segundo apartado

Ic = I;
Ic(:,:,1) = 0; %se anula la capa roja
figure,subplot(1,4,1), imshow(Ic); %se vuelve a mostrar los distintos canales.
subplot(1,4,2), imshow(Ic(:,:,1));
subplot(1,4,3), imshow(Ic(:,:,2));
subplot(1,4,4), imshow(Ic(:,:,3));

%%
%%tercer apartado

Icc = I;
Icc(:,:,1) = Icc(:,:,3); % se intercambian los canales rojo y azul simulando ser BGR de openCV
Icc(:,:,3) = I(:,:,1);
figure,subplot(1,4,1), imshow(Icc);
subplot(1,4,2), imshow(Icc(:,:,1));
subplot(1,4,3), imshow(Icc(:,:,2));
subplot(1,4,4), imshow(Icc(:,:,3));

Icc = I;
Icc(:,:,1) = flip(I(:,:,1)); % se voltea la capa roja en la horizontal.
figure,subplot(1,4,1), imshow(Icc);
subplot(1,4,2), imshow(Icc(:,:,1));
subplot(1,4,3), imshow(Icc(:,:,2));
subplot(1,4,4), imshow(Icc(:,:,3));

