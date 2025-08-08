% Real-Time Face Detection using Webcam and Viola-Jones Algorithm
% Make sure Computer Vision Toolbox is available

% Initialize webcam
cam = webcam;

% Load face detection model
faceDetector = vision.CascadeObjectDetector();

disp('Starting real-time face detection. Press Ctrl+C to stop.');

% Real-time loop
while true
    % Capture a frame
    frame = snapshot(cam);
    
    % Detect faces
    bboxes = step(faceDetector, frame);
    
    % Annotate detected faces
    if ~isempty(bboxes)
        frame = insertObjectAnnotation(frame, 'rectangle', bboxes, 'Face');
    end
    
    % Display the frame
    imshow(frame);
    title('Face Detection - Press Ctrl+C to Stop');
    drawnow;
end

% Release webcam
clear cam;
