% Define symptoms for diabetes.
symptom(blurred_vision).
symptom(excessive_thirst).
symptom(feeling_very_tired).
symptom(unexplained_weight_loss).
symptom(genital_itching_or_thrush).
symptom(cuts_and_wounds_take_longer_to_heal).
symptom(increased_hunger).
symptom(loss_of_muscle_bulk).
symptom(frequent_urination).

% Define risk factors associated with diabetes.
risk_factor(family_history).
risk_factor(obesity).
risk_factor(inactive_lifestyle).
risk_factor(unhealthy_diet).
risk_factor(high_blood_pressure).
risk_factor(high_cholesterol).
risk_factor(had_gestational_diabetes_during_pregnancy).

% Rules for diabetes diagnosis.
% This predicate performs the diagnosis of diabetes for a given patient.
diabetes_diagnosis(Patient, Result) :-
    % Rule for diabetes diagnosis.
    (   (   symptom(blurred_vision),
              symptom(excessive_thirst),
              symptom(feeling_very_tired),
              symptom(unexplained_weight_loss),
              symptom(genital_itching_or_thrush),
              symptom(cuts_and_wounds_take_longer_to_heal),
              symptom(increased_hunger),
              symptom(loss_of_muscle_bulk),
              symptom(frequent_urination)
        ;   risk_factor(obesity),
            risk_factor(family_history),
            risk_factor(inactive_lifestyle),
            risk_factor(high_cholesterol),
            risk_factor(had_gestational_diabetes_during_pregnancy),
            risk_factor(unhealthy_diet),
            risk_factor(high_blood_pressure)
        ),
        Result = positive,
        !
    ;   Result = negative

    ).

% Rules to check patient symptoms.
% This predicate checks the symptoms of a patient.
check_symptoms(_) :-
    write('Enter patient symptoms (comma-separated): '), read(Symptoms),
    member(Symptom, Symptoms),
    symptom(Symptom),
    fail. 
check_symptoms(_).

% Rules to check patient risk factors.
% This predicate checks the risk factors of a patient.
check_risk_factors(_) :-
    write('Enter patient risk factors (comma-separated): '), read(RiskFactors),
    member(RiskFactor, RiskFactors),
    risk_factor(RiskFactor),
    fail.
check_risk_factors(_).

% Main entry point.
% This part of the code prompts the user to enter the patient's name and then proceeds to check the symptoms
% and risk factors associated with the patient. After gathering the necessary information, it performs
% a diabetes diagnosis for the patient using the 'diabetes_diagnosis' predicate. Finally, it prints the
% diagnosis result indicating whether the patient is likely to have diabetes or not.
diagnose :-
    write('Enter patient name: '), read(Patient),
    check_symptoms(Patient),
    check_risk_factors(Patient),
    diabetes_diagnosis(Patient, Result),
    write_diagnosis(Patient, Result).
    
write_diagnosis(Patient, positive) :-
    format('Patient ~w is likely to have diabetes.~n', [Patient]).
write_diagnosis(Patient, negative) :-
    format('Patient ~w does not have diabetes.~n', [Patient]).
