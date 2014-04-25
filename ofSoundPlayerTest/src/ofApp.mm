#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(ofColor::black);
    
    mySound.loadLoopingSound(ofToDataPath("testSound.caf", false));
    mySound.setVolume(0.75);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
	if (!mySound.stopped) {
        ofSetColor(31, 255, 127);
        ofCircle(mouseX, mouseY, 40);
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    mySound.setPan(float(touch.x) / ofGetWidth());
    mySound.setPitch(float(touch.y) / ofGetHeight() * 2.0);
    mySound.play();
    cout << mySound.stopped << endl;
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    mySound.setPan(float(touch.x) / ofGetWidth());
    mySound.setPitch(float(touch.y) / ofGetHeight() * 2.0);
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    mySound.stop();
    cout << mySound.stopped << endl;
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

