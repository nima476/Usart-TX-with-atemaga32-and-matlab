delete(instrfind);

s =serial('COM2');
fopen(s);
i=1;
data=12.1;

while(i<200)
    a = fscanf(s);
    data(i)= str2num(a(4:end-1));
    plot(data);
    pause(0.01);
    i = i+1;
end
fclose(s);