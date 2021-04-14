clear all
close all

webcamlist();
cam = webcam(1);


while true;
    
    frame = snapshot(cam);
    
    umbral = 0.50;
    frame_bn = im2bw(frame, umbral);
    
    ES = ones(10);
    frame_bn = imopen(frame_bn, ES);
    
    %[frame_label, n] = bwlabel(frame_bn);
   
    figure(1)
    imshow(frame_bn, 'border', 'Tight')
    
    fronteras = bwboundaries(frame_bn);
    figure(2)
    imshow(frame, 'border', 'Tight')
    hold on
    
    for k = 1:numel (fronteras)
     plot (fronteras {k} (:, 2), fronteras {k} (:, 1), 'g', 'linewidth', 2);
    end
    
    s = regionprops(frame_bn, 'Centroid');
    centroides = cat(1,s.Centroid);
    plot(centroides(:,1), centroides(:,2), 'r+', 'linewidth', 20)

    hold off
    
    
    
    
end



