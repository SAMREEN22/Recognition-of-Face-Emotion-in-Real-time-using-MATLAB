
clear all
close all
warning off;
load Classifier;
cao=webcam;
faaceDetector=vision.CascadeObjectDetector;
while true
    en=cao.snapshot;
    aboxes =step(faaceDetector,en);
    if(~isempty(aboxes))
    tes=imcrop(en,aboxes);
    tes=imresize(tes,[128 128]);
    tes=rgb2gray(tes);
    [Features] = extractLBPFeatures(tes);
    PredicttedClass=predict(Classifier,Features);
    PredicttedClass=char(PredicttedClass);
    imshow(en),title(PredicttedClass);
    og=gca;
    og.TitleFontSizeMultiplier=1.5;
    pause(0.1);
    else
      imshow(en);
      og=gca;
      title('Face Not Detected');
       og.TitleFontSizeMultiplier=2;
      pause(0.1);
    end
end