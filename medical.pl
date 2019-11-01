go:-
hypothesis(Disease),
write('It is suggested that the patient is suffering from '),
write(Disease),
nl,
undo;
write('Sorry, the system is unable to identify the disease'),nl,undo.


hypothesis(schizophrenia) :-
symptom(hallucinations),
symptom(delusions),
symptom(social_withdrawal),
symptom(aggression),
nl,
write('Medications  and Sugestions:'),
nl,
write('1:Amisulpride'),
nl,
write('2: Lorazepam'),
nl,
write('3: Chlorpromazine'),
nl,
write('4: Risperidone'),

nl,
write('Please follow up with the psychiatrist for counselling sessions to cure the diease  swiftly'),
nl,
write('Do your best to help your loved one feel better and enjoy life'),
nl, !.


hypothesis(psychosis) :-
symptom(suspiciousness),
symptom(suicidal_thoughts),
symptom(disorganized_speech),
symptom(anxiety),
symptom(repetition_of_actions),
nl,
write('Medications and Sugestions for Patients:'),
nl,
write('1: Haldol'),
nl,
write('2: Trilafon'),
nl,
write('3: Thorazine'),
nl,
write('4: Haloperidol'),
nl,
write('Please follow the ECT Therapy as advised by the psychiatrist'),
nl,
write('Maintain trust and involvement with the patient'),
nl,!.


hypothesis(manic_syndrome) :-
symptom(increased_talk_speed),
symptom(decreased_sleep),
symptom(inappropriate_irritability),
symptom(insomnia),
nl,
write('Medications and Sugestions for Patients:'),
nl,
write('1: Aripiprazole'),
nl,
write('2: Quetiapine'),
nl,
write('3: Risperidone'),
nl,
write('4: Lurasidone'),
nl,
write('If Patient gets too aggressive reach out to healhcare team immediately'),
nl,
write('Re-establish a schedule for daily activities'),

nl,!.

hypothesis(dementia) :-
symptom(tremor),
symptom(agitation),
symptom(memory_distortions),
symptom(delusions),
nl,
write('Medications and Sugestions for Patients:'),
nl,
write('1: Donepezil'),
nl,
write('2: Galantamine'),
nl,
write('3: Rivastigmine'),
nl,
write('4: Memantine'),
nl,
write('Set a positive mood for interaction'),
nl,
write('Get the attention of patient'),

nl,!.



hypothesis(obsessive_compulsive_disorder) :-
symptom(fear_of_contamination),
symptom(compulsions),
symptom(excessive_cleanliness),
symptom(intrusive_thoughts),
symptom(anxiety_arousal),
symptom(correcting_thoughts),
nl,
write('Medications and Sugestions for patients:'),
nl,
write('1: clomipramine'),
nl,
write('2: sertraline'),
nl,
write('3: fluvoxamine'),
nl,
write('4: paroxetine'),
nl,
write('Challenge obsessive thoughts'),
nl,
write('Make life-style changes'),
nl,!.

hypothesis(paranoid_schizophrenia) :-
symptom(social_isolation),
symptom(aggressiveness),
symptom(repetetive_talking),
symptom(uncontrlled_laughter),
symptom(anxiety),
nl,
write('Medications and Sugestions for patients:'),
nl,
write('1: Risperidone'),
nl,
write('2: Trihexiphenydl'),
nl,
write('3: Lorazepam'),
nl,
write('4: Cognitol'),
nl,
write('Consult a psychiatrist for counselling immediately'),
nl,
write('Involve with the patient in group-activites in the family and make the patient happy'),
nl,!.

hypothesis(adhd) :-
symptom(difficulty_in_attention),
symptom(easy_distraction),
symptom(forgetfulnes),
symptom(excessive_talking),
symptom(anxiety),
nl,
write('Medications and Sugestions for patients:'),
nl,
write('1: Dextroamphetamine'),
nl,
write('2: Dexmethylphenidate'),
nl,
write('3: Methylphenidate'),
nl,
write('4: Lisdexamfetamine'),
nl,
write(' Set clear expectations and rules'),
nl,
write('Encourage movement and sleep'),
nl,!.

hypothesis(depression) :-
symptom(fatigue),
symptom(insomnia),
symptom(reduced_interest),
symptom(inability_in_thinking),
symptom(unintentional-weight_loss),
nl,
write('Medications and Sugestions for patients:'),
nl,
write('1: Citalopram'),
nl,
write('2:Escitalopram  '),
nl,
write('3: Duloxetine '),
nl,
write('4: Levomilnacipran'),
nl,
write(' Encourage the Patient to live stress-free life and be happy'),
nl,
write('Follow a healthy-lifestyle and talk to your parents about the problem that is worrying you.'),
nl,!.


ask(Question) :-
write('Is the patient suffering  from:  '),
write(Question),
write('? : '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).
:- dynamic yes/1,no/1.

symptom(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
