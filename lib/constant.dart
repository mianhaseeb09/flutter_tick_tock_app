import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_tick_tock_app/controller/auth_user.dart';
import 'package:flutter_tick_tock_app/screen/add_video_screen.dart';
import 'package:flutter_tick_tock_app/screen/profile_screen.dart';
import 'package:flutter_tick_tock_app/screen/search_screen.dart';
import 'package:flutter_tick_tock_app/screen/video_screen.dart';

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid),
];


// Your web app's Firebase configuration

class Constants {
  static String appid = "1:2232889561:web:b440ca8b0c1bd959ef0ec8";
  static String apiKey = "AIzaSyDodRsJv181v8Z3jtLP4L_zxsSfHKTJ0vY";
  static String messagingSenderId = "2232889561";
  static String projectId = "tiktok-app-f78b2";

}