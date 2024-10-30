#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>

class VideoMaskingNode : public rclcpp::Node {
public:
    VideoMaskingNode(const std::string &video_path) : Node("video_masking_node") {

        raw_image_publisher_ = this->create_publisher<sensor_msgs::msg::Image>("/camera", 10);
        mask_publisher_ = this->create_publisher<sensor_msgs::msg::Image>("/mask", 10);


        cv::namedWindow("window");
        cv::createTrackbar("Hue min", "window", &hue_min_, 255);
        cv::createTrackbar("Hue max", "window", &hue_max_, 255);
        cv::createTrackbar("Sat min", "window", &sat_min_, 255);
        cv::createTrackbar("Sat max", "window", &sat_max_, 255);
        cv::createTrackbar("Val min", "window", &val_min_, 255);
        cv::createTrackbar("Val max", "window", &val_max_, 255);

        timer_ = this->create_wall_timer(std::chrono::milliseconds(30), std::bind(&VideoMaskingNode::processFrame, this));
    }

private:
    void processFrame() {
        cv::Mat frame;

        if (!cap_.read(frame)) {
            RCLCPP_INFO(this->get_logger(), "Video selesai.");
            rclcpp::shutdown();
            return;
        }

        cv::imshow("frame", frame);

        cv::Mat hsv;
        cv::cvtColor(frame, hsv, cv::COLOR_BGR2HSV);

        cv::Scalar minHSV = cv::Scalar(hue_min_, sat_min_, val_min_);
        cv::Scalar maxHSV = cv::Scalar(hue_max_, sat_max_, val_max_);

        cv::Mat mask;
        cv::inRange(hsv, minHSV, maxHSV, mask);

        cv::imshow("mask", mask);

        auto raw_msg = cv_bridge::CvImage(std_msgs::msg::Header(), "bgr8", frame).toImageMsg();
        auto mask_msg = cv_bridge::CvImage(std_msgs::msg::Header(), "mono8", mask).toImageMsg();

        raw_image_publisher_->publish(*raw_msg);
        mask_publisher_->publish(*mask_msg);

        if (cv::waitKey(30) == 'q') {
            rclcpp::shutdown();
        }
    }

    rclcpp::Publisher<sensor_msgs::msg::Image>::SharedPtr raw_image_publisher_;
    rclcpp::Publisher<sensor_msgs::msg::Image>::SharedPtr mask_publisher_;
    cv::VideoCapture cap_;
    rclcpp::TimerBase::SharedPtr timer_;
    int hue_min_ = 0, hue_max_ = 31, sat_min_ = 90, sat_max_ = 255, val_min_ = 50, val_max_ = 255;
};

int main(int argc, char *argv[]) {
    rclcpp::init(argc, argv);
    auto node = std::make_shared<VideoMaskingNode>("second.mp4");
    rclcpp::spin(node);
    rclcpp::shutdown();
    return 0;
}
