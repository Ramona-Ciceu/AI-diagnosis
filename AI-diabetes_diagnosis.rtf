{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh13500\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
% Define symptoms\
symptom(blurred_vision).\
symptom(excessive_thirst).\
symptom(feeling_very_tired).\
symptom(unexplained_weight_loss).\
symptom(genital_itching_or_thrush).\
symptom(cuts_and_wounds_take_longer_to_heal).\
symptom(increased_hunger).\
symptom(loss_of_muscle_bulk).\
symptom(frequent_urination).\
\
% Define risk factors\
risk_factor(family_history).\
risk_factor(obesity).\
risk_factor(inactive_lifestyle).\
risk_factor(unhealty_diet).\
risk_factor(high_blood_presure).\
risk_factor(high_colesterol).\
risk_factors(had_gestional_diabetes_during_pregnacy).\
risk_factors(ethnicity).\
risk_factors(age).\
\
% Rules for diabetes diagnosis\
diabetes_diagnosis(Type, Patient) :-\
    % Rule for type 1 diabetes\
    (   risk_factor(family_history),\
       risk_factors(age),\
        Type = type_1\
    ;   % Rule for type 2 diabetes\
        risk_factor(obesity),\
        risk_factor(inactive_lifestyle),\
        risk_factor(family_history),\
        risk_factors(had_gestional_diabetes_during_pregnacy),\
        risk_factor(unhealty_diet),\
        risk_factor(high_blood_presure),\
        risk_factor(high_colesterol),\
        Type = type_2\
    ),\
    write('Patient '), write(Patient), write(' is likely to have '), write(Type), write(' diabetes.').\
\
% Rules to check patient symptoms\
check_symptoms(Patient) :-\
       write (\'91Enter patient symptoms (comma-separated): \'91), read(Symptoms),\
        member(Symptom, Symptoms),\
        symptom(Symptom),\
        fail. \
check_symptoms(_).\
\
% Rules to check patient risk factors\
check_risk_factors(Patient) :-\
         write(\'91Enter patient risk factors (comma-separated): \'91), read(RiskFactors) ,\
         member(RiskFactor, RiskFactors),\
         risk_factor(RiskFactor),\
         fail.\
check_risk_factors(_).\
\
% Recommendations to reduce the risk of type 2 diabetes\
reduce_risk_healthy_lifestyle(Patient) :-\
    risk_factor(obesity),\
    risk_factor(inactive_lifestyle),\
    write('It is recommended that '), write(Patient), write(' reduce the risk of type 2 diabetes through healthy eating, regular exercise, and achieving a healthy body weight.').\
\
% Main entry point\
main :-\
    write('Enter patient name: '), read(Patient),\
    write('Enter patient symptoms: '), read(Symptoms),\
    write('Enter patient risk factors (comma-separated): '), read(RiskFactors),\
    append(Symptoms, RiskFactors, AllFactors),\
    % Check symptoms and risk factors against rules and produce diagnosis\
    diabetes_diagnosis(Type, AllFactors),\
    (   Type = type_2 -> reduce_risk_healthy_lifestyle(Patient) ; true).\
\
\
\
\
\
  \
\
}