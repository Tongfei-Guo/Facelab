
#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/opencv.hpp>

#include <iostream>
#include <string>

using namespace cv;

using namespace std;

extern "C" double* load_cpp(char imageName[])
{
    Mat img = imread(imageName,CV_LOAD_IMAGE_COLOR);
    unsigned char* input = (unsigned char*)(img.data);
    double* output = new double[2+3*img.rows*img.cols];
    output[0]=img.rows;//width
    output[1]=img.cols;//height
    double r,g,b;
    int k = 2;
    for(int i = 0;i < img.rows;i++){
        for(int j = 0;j < img.cols;j++){
            b = input[img.step * i + j*img.channels()] ;
            output[k++]=b;
            g = input[img.step * i + j*img.channels() + 1];
            output[k++]=g;
            r = input[img.step * i + j*img.channels() + 2];
            output[k++]=r;
        }
    }
    return output;
}
extern "C" void save_cpp(double* input, char fileName[]) 
{
    int height = input[0];
    int width = input[1];
    double* data = new double[3*width*height];
    for(int i = 0; i < 3*width*height; i++) data[i]=input[i+2];
    Mat image = cv::Mat(height, width, CV_64FC3, data);
    imwrite(fileName,image);
    return;
}
int main()
{
    //double d[] = {3,2,0,0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,255};
    //save_cpp(d, "test8.jpg");
    double *d = load_cpp("./our_test/compiler_phase/save_2.jpg");
    double d2[93902];
    d2[0] = 100; d2[1] = 313;
    for (int i = 2; i <= 93902; ++i)
    {
        d2[i] = d[i];
    }
    save_cpp(d2, "test9.jpg");
}
