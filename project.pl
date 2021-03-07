%Programmer : hussein hijazi
%File Name : Project
%Description : Heart Disease Diagnos
%Input :{Bye,Goodbye,cancel,yes,Y,No,N,always,sometimes,one time,tow times,three times}
%Output : Screen
%Synopsys : compile the Project and press "play"
play :-
write_list(['What is youre ID? ']),                      %the starting method
    read(Id),idcheck(Id).


something_wrong :-
 write_list(['Something you have entered not correct!!! ']),nl,
 write_list(['check the ID number to be 9 Digits ']),nl,
 write_list(['or check the Input you have put ']),nl,                      %if the ID is wrong
 write_list(['To start again Press play ']),nl.

start :-
    write_list(['What is youre name? ']),
    read(Patent),                                       %the main method that get name and check witch rule is true
    case(Patent,Heartdisease),
    write_list([Patent,' probably has ',Heartdisease,'.']),nl.

start :-
    write_list(['Sorry, I don''t know to']),nl,
    write_list(['diagnose the Heartdisease.']),nl,              %if there no rule is true then this method prints to the user the sorry and to get check in Dr
    write_list(['Please go to the doctor to check out .']),nl.

status(Patent,angina_pectoris):-
 write_list(['Does ',Patent,' have a angina_pectoris ?(y/n)']),                     %rules had a complex relations and a logic connection between another facts and rules
 nl,read(Answer),not(abort(Answer)),response(Answer).                               

status(Patent,dyspnea):-
 write_list(['Does ',Patent,' have a dyspnea ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).


status(Patent,pain/cold/weak_in_legs):-
 write_list(['Does ',Patent,' have a pain or cold or weak in legs ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,tachycardia):-
 write_list(['Does ',Patent,' have a tachycardia ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,bradycardia):-
 write_list(['Does ',Patent,' have a bradycardia ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,dizziness):-
 write_list(['Does ',Patent,' have a dizziness ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,flutter_inthechest):-
 write_list(['Does ',Patent,' have a flutter in the chest ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,fainting/syncope):-
 write_list(['Does ',Patent,' have a fainting or syncope ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,cyanosis):-
 write_list(['Does ',Patent,' have a cyanosis ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

status(Patent,flatulence_in_the_abdomen_or_in_the_legs_or_around_the_eyes):-
 write_list(['Does ',Patent,' have a flatulence in the abdomen or in the legs or around the eyes ?(y/n)']),
 nl,read(Answer),not(abort(Answer)),response(Answer).

case(Patent,cardiovascular_disease):-
 status(Patent,angina_pectoris),
 status(Patent,dyspnea),
 status(Patent,pain/cold/weak_in_legs).
                                         %heart disease cases
case(Patent,arrhythmia_disease):-        %cases that if the facts under is true the case is true else no
 status(Patent,tachycardia),             
 status(Patent,angina_pectoris),
 status(Patent,dyspnea),
 status(Patent,bradycardia),
 status(Patent,dizziness),
 status(Patent,flutter_inthechest),
 status(Patent,fainting/syncope).

case(Patent,congenital_defect):-
 status(Patent,cyanosis),
 status(Patent,flatulence_in_the_abdomen_or_in_the_legs_or_around_the_eyes),
 status(Patent,dyspnea).

case(Patent,cardiomyopathy):-
 status(Patent,flatulence_in_the_abdomen_or_in_the_legs_or_around_the_eyes),
 status(Patent,dyspnea),
 status(Patent,dizziness),
 status(Patent,fainting/syncope).

case(Patent,cardiovascular_disease):-
 status(Patent,cyanosis),
 status(Patent,dyspnea),
 status(Patent,flatulence_in_the_abdomen_or_in_the_legs_or_around_the_eyes),
 status(Patent,fainting/syncope).

case(Patent,cardiovascular_disease):-
 status(Patent,angina_pectoris),
 status(Patent,dyspnea),
 status(Patent,flatulence_in_the_abdomen_or_in_the_legs_or_around_the_eyes),
 status(Patent,fainting/syncope).

response(Answer):-
 Answer='y';Answer='Y';Answer='Yes';Answer='yes';Answer='sometimes';Answer='always';
 Answer='i_think';Answer='one_time_happend';Answer='tow_times_happend';                      %check out the answers about diagnosis questions
 Answer='three_times_happend',not(wronginput(Answer)).                                                               %this answers are relevant and answers like no N are not relevant

abort(Answer):-                                                                                  %cancelled the program and abort it
 (Answer='Goodbye';Answer='goodbye';Answer='Cancel';Answer='cancel';Answer='Bye';Answer='bye'),not(wronginput(Answer)),halting.

halting:- halt.


write_list([]).
write_list([H|T]):-                                 %printing lists method its prints Heads of all sublists
    write(H),
    write_list(T).

idcheck(Id):-
 (Id>0,Id<1000000000,start);something_wrong.         %cheching the invalid id number



wronginput(Answer):-
 not(Answer='Goodbye'),not(Answer='goodbye'),not(Answer='Cancel'),not(Answer='cancel'),
 not(Answer='Bye'),not(Answer='bye'),not(Answer='y'),not(Answer='Y'),
 not(Answer='Yes'),not(Answer='yes'),not(Answer='sometimes'),not(Answer='always'),
 not(Answer='i_think'),not(Answer='one_time_happend'),not(Answer='tow_times_happend'),
 not(Answer='three_times_happend'),not(Answer='n'),not(Answer='N'),not(Answer='No'),not(Answer='no'),
 not(Answer='never'),not(Answer='Never'),not(Answer='i_dont_think'),not(Answer='i_dont_know'),somthing_wrong.




