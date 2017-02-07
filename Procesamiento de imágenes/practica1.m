%%
%%Primer apartado
I = imread('disney.png');

figure, imshow(I); %muestra la imagen tal cual.
imtool(I); %proporciona herramientas adicionales para ver la imagen y obtener informaci�n de ellas.
figure, imagesc(I); %interpreta la imagen como una matriz de datos y la visualiza usando.


%%
%%Segundo apartado
Id = double(I);
figure, imshow(Id); %muestra la imagen en blanco, debido a que la informaci�n sigue estando en el intervalo [0,255] y imshow interpreta la imagen en el intervalo [0,1] por lo tanto todo lo que est� por encima de 1 ser� de color blanco.
imtool(Id); % al igual que en el caso de imshow, la imagen se interpreta en el intervalo [0,1] mientras que la informaci�n de la imagen est� en el intervalo [0,255]
figure, imagesc(Id); %la imagen se muestra usando el mapa de color como se mostr� en el apartado anterior.

%%
%%Tercer apartado
Idd = im2double(I);
figure, imshow(Idd); %muestra la imagen como tal cual, puesto que el m�todo im2double pasa el intervalo [0,255] original al intervalo [0,1]
imtool(Idd); %muestra la imagen original, por la misma raz�n. 
figure, imagesc(Idd); %sigue mostrando la imagen usando el mapa de color.