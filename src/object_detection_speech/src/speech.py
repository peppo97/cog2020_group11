#!/usr/bin/python2.7
import rospy
from naoqi_driver.naoqi_node import NaoqiNode
from object_detection_speech.srv import Say, SayResponse
import sys
from argparse import ArgumentParser

'''
This class bridges between the obj_detected channel and the actual performing of the speech 
'''
class AnimatedSay(NaoqiNode):
    #Topic where retrieve the detected objects
    TOPIC_SUB = "obj_detected"
    #IP and port where to communicate with Pepper to perform the speech
    IP = "10.0.1.230"
    PORT = "9559"

    '''
    Builder of the class
    '''
    def __init__(self):
        #Create a Naoqui node called 'animated_speech' and connect it
        NaoqiNode.__init__(self, 'animated_speech')
        parser = ArgumentParser()
        parser.add_argument("--ip", dest="ip", default="10.0.1.230")
        args, unknown = parser.parse_known_args(args=rospy.myargv(argv=sys.argv)[1:])
        ip = args.ip
        self.pip = ip
        self.connectNaoQi()
        pass

    '''
    Say is called when the 'animatedSay' service is requested and make Pepper performs the speech 
    
    @param: data Message to say
    '''
    def say(self, data):
        rospy.loginfo("START: %s" %data.message)
        self.speech.say(str(data.message))
        #Return the outcome of the requested speech operation
        return SayResponse(True)

    '''
    Acquire the proxy where the speech requests will be forwarded
    '''
    def connectNaoQi(self):
        self.speech = self.get_proxy("ALAnimatedSpeech")
        #self.speech.setLanguage("English")
        #Create the service 'animatedSay' with callback say
        self.s = rospy.Service('animatedSay', Say, self.say)


if __name__ == '__main__':
    #rospy.init_node('speak')
    #rospy.set_param("~pip", "10.0.1.230")
    #rospy.set_param("~pport", 9559)
    #Create the object of type AnimatedSay that will connect to Pepper's NaoQI API 
    pub = AnimatedSay()
    rospy.spin()