%% Basic Image Data Augmentation (demo)
% Developed by Seyed Muhammad Hossein Mousavi - July 20237
% 7 changes of noise, rotation, resizing, shift, contrast, and flipping are
% applied in four possibilities (all random). You can expand it into a dataset. 
% Remember to test on the original dataset for the generated dataset.

clear;
clc;
close all;
warning('off')
% Load the original image
dataset=imread('tst.jpg');
dataset=rgb2gray(dataset);
% The desired number of augmented samples
NoAugSam = 42;
for i = 1:NoAugSam
% Select a random data sample from the original dataset
randomSample = dataset;
% Apply data augmentation operations to the selected sample
augmentedSample = ApplyDataAug(randomSample);
% Store the augmented sample in the augmented dataset
AugmentedDataset{i} = augmentedSample;
end
% Plot generated samples
montage(AugmentedDataset);

%%------------------------------------------------------------
% Flipping: Images can be horizontally or vertically flipped, which can help the model become invariant to certain orientations or perspectives.
% Rotation: Images can be rotated by a certain angle to introduce variability in the object's orientation.
% Scaling: Images can be scaled up or down, which can simulate variations in the object's size.
% Translation: Images can be shifted horizontally or vertically, which can simulate slight changes in the position of the object.
% Noise addition: Random noise can be added to the images, which can help the model become more robust to noise in real-world scenarios.
% Color Jittering: The color values of the images can be randomly modified to change brightness, contrast, saturation, or hue, creating variations in lighting conditions.
%-------------------------------------------------------------
% shearing and zooming are not applied, yet
% Shearing: Images can be distorted by shearing, which skews the object in a particular direction.
% Zooming: Images can be zoomed in or out, which simulates variations in the object's distance from the camera.


