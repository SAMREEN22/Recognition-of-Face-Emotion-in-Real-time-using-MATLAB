clc;
clear all;
close all;
warning off;
imds=imageDatastore('emotions','IncludeSubFolders',true,'LabelSource','foldernames');
trrainingFeatures=[];
trrainingLabels=imds.Labels;       
for i = 1:numel(imds.Files)         % Read images using a for loop
    img = readimage(imds,i);
    trrainingFeatures(i,:)=extractLBPFeatures(rgb2gray(img));
end
Classifier =fitcecoc(trrainingFeatures,trrainingLabels);
save Classifier