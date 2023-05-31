
clear all;
close all;
warning off;
cao=webcam;
faaceDetector=vision.CascadeObjectDetector;
c=150;
temp=0;
while true
    en=cao.snapshot;
    aaboxes=step(faaceDetector,en)
    if(sum(sum(aaboxes))~=0)
    if(temp>=c)
        break;
    else
    tes=imcrop(en,aaboxes(1,:));
    tes=imresize(tes,[128 128]);
    filenamee=strcat(num2str(temp),'.bmp');
    imwrite(tes,filenamee);
    temp=temp+1;
    imshow(tes);
    drawnow;
    end
    else
        imshow(en);
        drawnow;
    end
end