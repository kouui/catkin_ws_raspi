#!/usr/bin/env python
#encoding: utf8

import rospy, rosnode, unittest, rostest
import time
from pimouse_ros.msg import MotorFreqs
from geometry_msgs.msg import Twist

class MotorTest(unittest.TestCase):

    def file_check(self, dev, value, message): # does't work for /dev/rt*
        with open("/dev/"+dev, 'r') as file:
            self.assertEqual(file.readline(), str(value)+'\n', message)

    def test_node_exist(self):
        nodes = rosnode.get_node_names()
        self.assertIn("/motors", nodes, "node does not exist")

    def test_put_freq(self):
        pub = rospy.Publisher("/motor_raw", MotorFreqs)
        m = MotorFreqs()
        m.left_hz = 123
        m.right_hz = 456
        pub.publish(m)
        time.sleep(2)

        # self.file_check("rtmotor_raw_l0", m.left_hz, "wrong left value from motor_raw")
        # self.file_check("rtmotor_raw_r0", m.right_hz, "wrong right value from motor_raw")

        m.left_hz = 0
        m.right_hz = 0
        pub.publish(m)

    def test_put_cmd_vel(self):
        pub = rospy.Publisher("/cmd_vel", Twist)

        m = Twist()
        m.linear.x = 0.1414
        m.angular.z = 1.57
        pub.publish(m)

        # self.file_check("rtmotor_raw_l0", 200, "wrong left value from cmd_vel")
        # self.file_check("rtmotor_raw_r0", 600, "wrong right value from cmd_vel")

        time.sleep(1.1)
        # self.file_check("rtmotor_raw_l0", 0, "don't stop after 1[s]")
        # self.file_check("rtmotor_raw_r0", 0, "don't stop after 1[s]")

if __name__ == "__main__":
    time.sleep(3)
    rospy.init_node("my_test_motors")
    rostest.rosrun("pimouse_ros", "my_test_motors", MotorTest)
