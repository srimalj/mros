function [ im ] = readRawJPG( rawDataArray )
%READRAWJPG Reads raw compessed image data from ROS message as matlab array

fileID = fopen('tmp.jpg','w');
fwrite(fileID,rawDataArray);
fclose(fileID);
im=imread('tmp.jpg');

end

