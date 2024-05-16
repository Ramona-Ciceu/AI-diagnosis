
Diabetes Diagnosis System in Prolog


Introduction:
The purpose of this report is to provide an overview of a diabetes diagnosis system implemented using Prolog, an expert system. This system aims to assist medical professionals in diagnosing diabetes based on a set of symptoms, risk factors and patient information.

Background:
Diabetes mellitus is a common metabolic disorder characterized by elevated blood sugar levels. Timely diagnosis and management are crucial for preventing complications such as cardiovascular disease, kidney failure, and blindness. Expert systems utilize knowledge representation and inference mechanisms to emulate human decision-making processes in specific domains.  This report outlines the implementation of a Prolog-based system for diabetes diagnosis, aiming to assist healthcare professionals in making accurate and efficient diagnostic decisions.

System Overview:
The diabetes diagnosis system in Prolog is built upon a knowledge base consisting of rules and facts derived from medical literature and expert consultations. It takes input in the form of symptoms exhibited by the patient and other relevant medical history.


System Components: The system consists of the following components:
1.	Symptoms Definition: Symptoms associated with diabetes are defined as Prolog facts. These include blurred vision, excessive thirst, feeling very tired, unexplained weight loss, genital itching or thrush, cuts and wounds taking longer to heal, increased hunger, loss of muscle bulk, and frequent urination.
2.	Risk Factors Definition: Risk factors contributing to diabetes are defined as Prolog facts. These include family history, obesity, inactive lifestyle, unhealthy diet, high blood pressure, high cholesterol, and having had gestational diabetes during pregnancy.
3.	Diagnosis Rules: The system contains a rule for diagnosing diabetes. It considers a patient to have diabetes if they exhibit a combination of symptoms or possess certain risk factors associated with the condition.
4.	Diagnosis Predicate: The diabetes_diagnosis predicate performs the diagnosis based on the presence of symptoms and risk factors. It returns a result indicating whether the patient is likely to have diabetes or not.
5.	Input Gathering: The system prompts the user to enter the patient's name, symptoms, and risk factors. It then checks the entered symptoms and risk factors against the defined facts.

Example Interaction:


?- diagnose.
Enter patient name: John
Enter patient symptoms (comma-separated): blurred_vision, excessive_thirst, frequent_urination
Enter patient risk factors (comma-separated): family_history, obesity
Patient John is likely to have diabetes.



Implementation of the System/Model:
The system employs Prolog predicates to perform the diagnosis process. The `diabetes_diagnosis` predicate serves as the core component, utilizing logical rules to evaluate the presence of symptoms and risk factors for a given patient and determining the likelihood of diabetes. The logical rules incorporate both symptom assessment and risk factor analysis, enabling a comprehensive diagnosis approach. By leveraging the inherent presumed capabilities of Prolog, the system can make informed diagnostic decisions based on the provided patient data.

The implementation also includes input validation mechanisms to ensure the accuracy and integrity of user-provided data. The `check_symptoms` and `check_risk_factors` predicates prompt the user to input symptoms and risk factors, respectively, and validate each entry against the predefined list. This ensures that only valid symptoms and risk factors are considered during the diagnosis process, minimizing the risk of false conclusions.

Results Related to Your Implementation:
Upon execution, the system prompts the user to enter the patient's name, symptoms, and risk factors. Subsequently, the diagnosis process is initiated, utilizing the logical rules defined in the `diabetes_diagnosis` predicate. The system then outputs the diagnosis result, indicating whether the patient is likely to have diabetes based on the provided data. The result is presented in a clear and concise format, facilitating easy interpretation by healthcare professionals.
The ’main’ predicate withing the Prolog program serves as the central component for user interaction and diagnosis. It prompts the user to input patient information including symptoms and risk factors, subsequently utilising this data to conduct diagnosis assessment for the specific patient. Prolog’s syntax requirement necessitates adherence to lowercase conventions for patient names. Hence, when entering a patient’s name, users should have employ lowercase characters or enclose the name within quotation marks. For instance, while “Anna” is not acceptable, ‘Anna’ conforms to Prolog’s standards. Through this process, the main predicate facilitates the comparison of user input with predefined symptoms and risk factors, there by enabling the formulation and display of a diagnostic outcome tailored to the individual patient. 
In the context of entering patient symptoms and risk factors within Prolog, its’s essentials to note that the language does not accept white spaces directly.
Consequently, to represent white spaces, users must utilise the underscore character (). This convention allows for the seamless integration of symptom and risk factor inputs, ensuring compatibility with Prolog’s syntax requirements. 
Therefore, when inputting symptoms or risk factors that consist of multiple words, users should replace the space between words with underscores(). This approach facilitates the accurate interpretation of patient data within the Prolog environment, enabling effective analysis and diagnosis based on the provided inputs. 



