
clear all;
close all
warning off;
load Classifier;
cao=webcam;
faceDetector=vision.CascadeObjectDetector;
while true
    e=cao.snapshot;
    bboxes =step(faceDetector,e);
    if(~isempty(bboxes))
    es=imcrop(e,bboxes);
    es=imresize(es,[128 128]);
    es=rgb2gray(es);
    [Features] = extractLBPFeatures(es);
    PredictedClass=predict(Classifier,Features);
    PredictedClass=char(PredictedClass);
    imshow(e),title(PredictedClass);
    ax=gca;
    ax.TitleFontSizeMultiplier=1.5;
    pause(0.1);
    else
      imshow(e);
      ax=gca;
      title('Face Not Detected');
       ax.TitleFontSizeMultiplier=2;
      pause(0.1);
    end
end