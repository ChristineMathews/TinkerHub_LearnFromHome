import 'dart:io';
class LearnerOrMentor{

  String interest,mentorOrLearner,name,availableTime;
  int id,type,limit=0,time;
  var stackList = new List(100),nameList=new List(100),atlist=new List(100),mOrL = new List(100);

  void address(){
    print("Enter the name of person:");
    name = stdin.readLineSync();
    limit++;
    this.nameList[limit]=name;
    this.addStacks();
    this.setMentorOrLearner();
    this.setAvailableTime();
  }

  void addStacks(){ 
    print("expertise:");
    interest = stdin.readLineSync();
    this.stackList[limit]=interest;
  }
  void setMentorOrLearner(){
  print("\n\n Mentor/Learner");
  print(" Enter M for Mentor \n Enter L Learner\n");
  print("Enter the input:");
  type = int.parse(stdin.readLineSync());
  this.mOrL[limit]=type;
 }
 void setAvailableTime(){
   if (type == 'M'){
     print("Enter the available time for this mentor (Hours):");
     time=int.parse(stdin.readLineSync());
     this.atlist[limit]=time;
   }
   else{
     atlist[limit]=0;
   }
 }
}
