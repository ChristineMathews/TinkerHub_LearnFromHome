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
void main() {

  LearnerOrMentor person = new LearnerOrMentor();
  String n,stack;
  int i,time;
   void getMentor(var x,var y,var z,int m){
   if (m==0)
   { 
     print("No one is registerd");
   }
   else{

    for (i=1;i<=m;i++){
      if (y[i]==1){
        stack=x[i];
        time=z[i];
      }}}}
  while(true)
  {
    print(" Enter 1 for Add person 2 for checking available mentors:\n");
    n = stdin.readLineSync();
    if (n=='1')
    {
      person.address();
    }
    else if (n=='2'){
      getMentor(person.stackList,person.mOrL,person.atlist,person.limit);
    }
    else{
      print("Invalid Option");
    }}}