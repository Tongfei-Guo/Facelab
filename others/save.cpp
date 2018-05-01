#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/opencv.hpp>

#include <iostream>
#include <string>

using namespace cv;

using namespace std;

extern "C" void save_cpp(double* input, char fileName[]) 
{
    int width = input[0];
    int height = input[1];
    double* data = new double[3*width*height];
    for(int i = 0; i < 3*width*height; i++) data[i]=input[i+2];
    Mat image = cv::Mat(height, width, CV_64FC3, data);
    imwrite(fileName,image);
    return;
}
