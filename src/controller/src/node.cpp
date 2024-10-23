#include <chrono>
#include <functional>
#include <memory>
#include <string>

#include "rclcpp/rclcpp.hpp"
#include "sensor_msgs/msg/joy.hpp"
#include "interfaces/msg/command.hpp"

using namespace std::chrono_literals;
using namespace std::placeholders;

float batas(float value, float min_itv, float max_itv) {
    if (value < min_itv) {
        return min_itv;
    }
    if (value > max_itv) {
        return max_itv;
    }
    return value;
}

class Publisher : public rclcpp::Node {
    rclcpp::Subscription<sensor_msgs::msg::Joy>::SharedPtr sub;
    rclcpp::Publisher<interfaces::msg::Command>::SharedPtr pub;

    void fungsi_subscribe(const sensor_msgs::msg::Joy::SharedPtr msg)
    {
        auto cmd = interfaces::msg::Command();

        cmd.x_cmd = batas((msg->axes[0] + msg->axes[6]) * 250.0, -250.0, 250.0); //kaki
        cmd.y_cmd = batas((msg->axes[1] + msg->axes[7]) * 250.0, -250.0, 250.0); //maju-mundur
        
        cmd.yaw = batas(msg->axes[3] * 180.0, -180.0, 180.0); //perputaran
        cmd.depth = batas((msg->axes[5] + 1.0) * 5.0, 0.0, 10.0); //kedalaman

        pub->publish(cmd);
    }

public:
    Publisher() : Node("controller_node")
    {
        sub = this->create_subscription<sensor_msgs::msg::Joy>(
            "joy", 10, std::bind(&Publisher::fungsi_subscribe, this, _1)
        );

        pub = this->create_publisher<interfaces::msg::Command>("cmd_vel", 10);
    }
};

int main(int argc, char **argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<Publisher>());
    rclcpp::shutdown();
    return 0;
}
