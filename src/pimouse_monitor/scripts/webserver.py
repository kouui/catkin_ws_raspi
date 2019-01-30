#!/usr/bin/env python
#encoding: utf8

import rospy, os, SimpleHTTPServer


def kill():
    os.system("kill -KILL " + str(os.getpid()))

if __name__ == "__main__":
    os.chdir(os.path.dirname(__file__) + "/../contents")
    rospy.init_node("webserver")
    rospy.on_shutdown(kill)
    SimpleHTTPServer.test()

