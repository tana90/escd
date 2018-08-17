/*======================================================================================================*/
/*SECTIONS==============================================================================================*/
DELETE FROM Sections;

/* Day 1 - 17 may */
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('1', '2018-05-17T09:00', '2018-05-17T11:30');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('2', '2018-05-17T11:30', '2018-05-17T14:00');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('3', '2018-05-17T14:00', '2018-05-17T16:30');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('4', '2018-05-17T16:30', '2018-05-17T19:00');

/* Day 2 - 18 may */
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('5', '2018-05-18T09:00', '2018-05-18T11:30');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('6', '2018-05-18T11:30', '2018-05-18T14:00');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('7', '2018-05-18T14:00', '2018-05-18T16:30');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('8', '2018-05-18T16:30', '2018-05-18T19:00');

/* Day 3 - 19 may */
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('9', '2018-05-19T09:00', '2018-05-19T12:00');
INSERT INTO Sections (objectId, beginTime, endTime) VALUES ('10', '2018-05-19T12:00', '2018-05-19T15:00');
/*======================================================================================================*/



/*======================================================================================================*/
/*LOCATIONS==========================================================================================*/
DELETE FROM Locations;

INSERT INTO Locations (objectId, name) VALUES ('1', 'Hall 1 Conferences - Constanta Hall');
INSERT INTO Locations (objectId, name) VALUES ('2', 'Hall 2 Conferences - Salon D');
INSERT INTO Locations (objectId, name) VALUES ('3', 'Hall 3 Timisoara');
INSERT INTO Locations (objectId, name) VALUES ('4', 'Hall 4 Galati');
INSERT INTO Locations (objectId, name) VALUES ('5', 'Hall 5 Brasov');
INSERT INTO Locations (objectId, name) VALUES ('6', 'Hall 6 Oradea');
INSERT INTO Locations (objectId, name) VALUES ('7', 'Hall 7 Craiova');
INSERT INTO Locations (objectId, name) VALUES ('8', 'Hall 8 Ploiesti');
INSERT INTO Locations (objectId, name) VALUES ('9', 'Foyer');
/*======================================================================================================*/



/*======================================================================================================*/
/*SPEAKERTYPES==========================================================================================*/
DELETE FROM SpeakerTypes;

INSERT INTO SpeakerTypes (objectId, name) VALUES ('1', 'Lecture');
INSERT INTO SpeakerTypes (objectId, name) VALUES ('2', 'Hands-On');
INSERT INTO SpeakerTypes (objectId, name) VALUES ('3', 'Oral');
/*======================================================================================================*/


/*======================================================================================================*/
/*SPEAKERTYPES==========================================================================================*/
DELETE FROM AbstractsTypes;

INSERT INTO AbstractsTypes (objectId, name) VALUES ('1', 'Lecture');
INSERT INTO AbstractsTypes (objectId, name) VALUES ('2', 'Hands-On');
INSERT INTO AbstractsTypes (objectId, name) VALUES ('3', 'Oral');
/*======================================================================================================*/





/*======================================================================================================*/
/*======================================================================================================*/
DELETE FROM Speakers;
DELETE FROM SpeakerTypeMap;
DELETE FROM AbstractsSpeakersMap;
DELETE FROM Abstracts;

/*======================================================================================================*/
/* 1 - Arnone Alessandro */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('1', 'DIGITAL & AESTHETIC
From Traditional to Digital for achieve Aesthetic success', 'We are experiencing a period of total change in the workflow between Clinic and Laboratory.
The main focus are the new technologies that can help us concretely only if our background is solid and built on workflows and results that came from the traditional full hand made prosthesis.
It is important to keep clear the final goal that will always be a work of author and the satisfaction of our patient.', '1', '1');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('1', '1', '1');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('1', '1', '1');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('1', 'Odt. Arnone Alessandro', 'Arnone', 'arnone.jpg', 'Odt. Arnone Alessandro nato a Milano il 06 Aprile 1981. Diplomato nel 2000 all’Istituto Ipsia Vasco Mainardi di Milano come odontotecnico.
Collabora con Laboratorio Chiodini Mario di Legnano dal 2000-2004, con il quale ha approfondito, attraverso corsi teorico pratici, la conoscenza di Funzione Estetica e Morfologia secondo la scuola del professore Anibal A. Alonso.
Dal 2003 collabora con il padre Arnone Ferruccio nel Laboratorio Arnone s.n.c. di Milano.
Nel 2011 partecipa al concorso Europeo “Parallelometro d’oro”, dove si classifica al 3° posto, vince il 1° premio per il concorso “ESTETICA PERFETTA” di Willi Geller che per l’occasione gli conferisce il premio, riceve inoltre il riconoscimento per la miglior documentazione del caso. Frequenta diversi corsi con Professionisti di livello Internazionale.
Pubblica articoli su Teamwork media, Delntal Dialogue , Quintessenza Odon- totecnica e Labline.
Nel 2014 diventa socio effettivo della European Society of Cosmetic Dentistry ESCD.
Nel 2016 diventa socio effettivo Amici di Brugg
Nel 2017 diventa ESCD Country Coordinator for DT
Effettua come relatore Demo, Corsi pratici e Conferenze a livello Nazionale ed Internazionale.', '1', 'Italy');





/*======================================================================================================*/
/* 2 - Alex Burcea */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('2', 'Simplicity and Accuracy in Oral Implantology
Using Advanced Surgical Techniques and Advanced Imaging Solutions', 'Dental implants, modern materials and bone augmentation techniques have led to a radical change in the way we approach edentulous cases.

The most common surgical complications arise from incomplete diagnosis, planning or from faulty surgical approaches. Even in cases where surgery and osteointegration have gone smoothly, it often happens that the position of the implants in the bone is not beneficial for prosthesis and the final results are unsatisfactory.
It is clear that a correct diagnosis and very high precision of "planning" and of the surgical procedure are absolutely necessary in order to increase considerably the success rate and to uphold the principle: "primum non nocere".

In order to achieve these goals, advanced dental imaging technologies, such as CBCT or intra-oral scanning, as well as new technologies in 3D printing of surgical guides, become practically indispensable.', '1', '2');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('2', '1', '2');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('2', '2', '2');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('2', 'Dr. Alex Burcea', 'Burcea', 'burcea.jpg', 'Oral surgeon
Senior Lecturer at the Faculty of Dental Medicine of Titu Maiorescu University of Bucharest for Oral Surgery and Implantology Department
Secretary of the "Romanian society for oral and oral maxillofacial specialists"


CV Speaker:
Alex Burcea DDS, MSc, PhD is an international trainer and lecturer for Oral Surgery and Implantology field with over 14 years of experience. After he graduated the Faculty of Dental Medicine of Titu Maiorescu University of Bucharest he attended the residency program in oral surgery at the Carol Davila University of Bucharest and he obtained the title of oral surgery specialist. Begining with 2004 he attended specialization courses in clinics and research centers in Italy, France, Germany, Switzerland and Israel.In 2005 he started the training in oral surgery at San Camillo Forlanini Hospital in Rome, Italy.In 2007 and 2008 he got his certificate of complementary studies in Oral Implantology and Periodontology at the Carol Davila University of Bucharest. He obtained the “Phd Degree” in Medical Sciences in 2011, with his study on the subject of "The efficiency of allografts used in guided bone regeneration". Also in 2013 he obtained his master’s degree in Oral Implantology at the Titu Maiorescu University of Bucharest. His scientific activity has resulted in 3 books in the oral implantology field, more than 40 scientific articles regarding guided bone regeneration, sinus floor elevation, nasal floor elevation, bone blocks, split crest, nerve repositioning, prf and guided surgery and 3 scientifical studies with well known universities from North America and Europe. Over the years he participated in numerous national and international congresses and scientific meetings, where he gave lectures, workshops and oral presentations related to guided bone regeneration, sinus floor elevation, nasal floor elevation, bone blocks, split crest, nerve repositioning, prf and guided surgery.Today he is also a Zimmer Biomet Global instructor, Mectron opinion leader, Paltop, Adin, iRaise and Ditron trainer and opinion leader.', '2', 'Romania');


/*======================================================================================================*/
/* 3 - Anca Vereanu */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('3', 'Maxillary sinus pathology related to failed implants in the posterior maxilla. Interdisciplinary aproach between oral surgery and ENT (ORL) in diagnostic and treatment of infected sinuses.', 'Nowadays we are talking more and more about interdisciplinarity in medicine. A patient is no longer treated by a single specialist. For an accurate diagnostic and treatment planning, we need to collaborate with our colleagues from other medical specialities: Radiology, Oral Pathology, Anesthesiology, Cardiology, Nutrition and so on.
The main problem of rejected implants in the sinus region was linked to undiagnosed sinus infections.A good diagnostic will help lead to a successful treatment.If the sinus is infected, the procedure of sinus elevation and implant insertion is almost certain to fail.
Grafting and insertion of implants in an infected sinus may cause severe problems which you can avoid by having an interdisciplinary approach and sending these kind of patients to an ENT specialist to clean their infected sinuses before any grafting procedure or implant insertion.
Endoscopic assessment of the maxilary sinus is mandatory in patiens with changes of the CT scan.This allows a proper examination of the sinus mucosa and can predict the outcomes of the sinus lift procedures.It is mandatory to cure the inflamation or infection of the maxillary sinus prior to implant procedure in order to be able to increase the success rate , as it can lead to failures of the implant procedure.', '1', '3');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('3', '1', '3');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('3', '3', '3');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('3', 'Dr. Anca Vereanu', 'Vereanu', 'vereanu.jpg', '', '3', 'Romania');


/*======================================================================================================*/
/* 4 - Andi Dragus */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('4', '', '', '1', '4');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('4', '1', '4');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('4', '4', '4');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('4', 'Dr. Andi Dragus', 'Dragus', 'dragus.jpg', '2011- 2013 – Master of Implantology at Carol Davila University of Medicine and Pharmacy with Prof. Univ. Dr. Mihai Augustin
2012- present (will graduate this year) – Phd of Implantology at Carol Davila University of Medicine
and Pharmacy with Prof. Univ. Dr. Mihai Augustin,  Disertation Thesis: “Realising a Surgical Guideline
on positioning dental implants starting with the Cranio-Mandibular System and bone offer”.', '4', 'Romania');


/*======================================================================================================*/
/* 5 - Andrea D. Di Domenico */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('5', 'PRAMA implant, traveling to the borders of reality.', 'A cognitive journey, an emotional trip, a clinical experience in which "form", "technique" and "biology" communicate and combine to obtain results beyond all expectations.
An exciting tour through the world of surgery, of periodontics, of prosthesis.
A new "trans-gingival geometry", the new concept of "prosthetic closure area", the “new UTM anatomical surface” (Ultrathin Threaded Microsurface).
Research and border crossing, this is PRAMA.', '1', '5');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('5', '1', '5');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('5', '5', '5');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('5', 'Dr. Andrea D. Di Domenico', 'Domenico', 'domenico.jpg', 'Graduated in 2007 in "Dentistry and dental prosthesis" at the University of Tor Vergata in Rome, and was confirmed at the Dentistry Department of the "Policlinico of Tor Vergata". In 2008 he obtained a Master''s Degree in "Implant and Rehabilitation Oral Surgery" at the Hospital of the Japanese University in Santa Cruz, Bolivia, and in the following years worked as a clinical figure at NY University. Active member for various academies and associations in the sector, he contributes to the publication of articles and national and international editorial. He participates as a speaker in Italy and abroad and is Tutor and responsible for training and in-depth training courses in implantoprosthesis. In 2012 he obtained a Master''s Degree in "Advanced Techniques for the Regeneration of Oral Fabrics Molli and Duri" at the University of Modena and Reggio Emilia. In 2017 he became a member of "SYRA TEAM", coordinated by Prof. G. Cannizaro. Teacher at the Post Graduate "Regenerative surgical techniques and complex rehabilitation with immediate care" and in constant professional updating, he collaborates with various private studies as consultant in implantoprosthesis and with associations of the sector as a health worker for humanitarian missions.
He practises his profession in Cava de'' Tirreni (SA).', '5', 'Italy');


/*======================================================================================================*/
/* 6 - Antonio Cerutti */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('6', 'Excellence in anterior and cervical composite restorations for daily practice', 'At present day tooth preparation, using correctly the new adhesive materials and techniques, and performing tooth-colored restorations are the major objectives of modern restorative dentistry.
Anterior restorations are among the most common operative procedures. They range from simply approaches to more difficult class IV restorations. These large dental defects pose a formidable challenge. 
The restorations, in vital and endodontically treated tooth, must be strong enough to resist the occlusion forces while being greatly esthetic at the same time. The technique is demanding and requires proper time as well as a good clinical approach.	
This session is designed by Professor Antonio Cerutti to inform the dental professional how best to overcome these challenges. Working with a strategic approach that will lend itself to highly consistent outcomes, each delegate will raise their skill level, giving them more confidence when approaching these situations in everyday practice.

Topics							
High esthetic composite material and color perception: how to achieve an high esthetic restoration									
Class IV classes & Diastemas and dental crown defects
Direct cervical restoration (layering, finishing and polishing technique)', '1', '6');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('6', '1', '6');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('6', '6', '6');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('6', 'Prof. Antonio Cerutti M.D., D.D.S.', 'Cerutti', 'cerutti.jpg', 'Professor of Restorative Dentistry at Dental School and Dental Hygiene School - University of Brescia
Chair and Director of Restorative Department at University of Brescia Dental School
Active Member and Committee Evaluation Former Member of Endodontics Italian Society (SIE), Active Member of  Restorative Dentistry Italian Society and Council Member in charge (SIDOC) and International Association for Dental Research (IADR) 
President of Italian Academy of Esthetic Dentistry (IAED) i2017-2018
Founder Member of Italian Academy of Esthetic Dentistry (IAED) and Council Member since 2008
Editor in chief of Italian Journal of Endodontics 2008-2011
Awarded the “Garberoglio” Research Award of the Endodontic Italian Society (SIE) Research Group in 1996, 2000 and 2007 and in 2007 and 2015 the “Pietro De Fazio” Research Prize of Restorative Dentistry Italian Society (SIDOC)  
Author of more 200 scientific paper and extensive publications in Restorative Dentistry and Endodontics
Co-author multimedia textbook “Guidelines in Adhesive Dentistry: the key to success” Quintessenz Verlags-GmbH, Berlin 2007 ( Italian, English, Germany, Russian editions) and textbook “Restauri estetico-adesivi indiretti parziali nei settori posteriori” Utet Scienze Mediche 2007 ( Italian, Spanish editions)
Board Editoriali Member of International e Italian Journal (European J. Of Esthetic Dentistry, Giornale Italiano di Endodonzia, Cosmetic Dentistry)
Reviewer of International and Italian Journals (J. of Adhesive Dentistry, Quintessence International, Minerva Stomatologica, International J. of Esthetic Dentistry, Giornale Italiano di Endodonzia, Cosmetic Dentistry)
Lecturer in International Congress and Hands-on and Master-class courses in Restorative Dentistry and Endodontics 
Private practice limited to Restorative Dentistry and Endodontics', '6', 'Italy');



/*======================================================================================================*/
/* 7 - Antonis Chaniotis */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('7', 'Management of Severe Curvatures and Complex Anatomy with controlled memory files:  A New Approach for minimal intervention', 'The root canal system is often a highly complicated canal network of multi-planar curvatures and anastomoses. Reaching the biological and design objectives of instrumentation in severely curved canals, deep apical splits and complicated canal systems can be an extremely challenging aspect of root canal treatment. The aim of this lecture is to introduce a novel instrumentation concept with   Controlled memory and EDM files for the predictable and safe enlargement of extremely challenging root canal systems
Learning objectives
Upon completion of this course the participant should be able to:

1.     Understand the design and biological objectives of canal instrumentation
2.     Understand the anatomical complexity of the root canal systems
3.     Investigate the minimum instrumentation requirements for effective disinfection
4.     Implement a new instrumentation method for the predictable management of challenging anatomies ', '1', '7');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('7', '1', '7');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('7', '7', '7');
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('8', 'The Hyflex CM & EDM concept for anatomy driven preparations of the highly curved and double curved canal systems', 'Lecturer: Chaniotis Antonis DDS, MDSc


Description:

The use of nickel-titanium engine driven endodontic instruments has expanded dramatically since the first attempts at manufacturing endodontic files from super elastic alloy. 
Over the years, engine driven shaping of the root canal system became synonymous to  modern  root canal instrumentation.  New cross sectional instrument designs, variable tapers and crown down techniques were introduced and adopted very quickly. Recently reciprocation movement was introduced and challenged rotation in terms of efficiency, simplicity and safety. 
In this era of  NiTi instrumentation blast, heat treated NiTi martensitic controlled memory files were introduced and became rapidly very popular.  Their flexibility,  fracture resistance and lack of  super elasticity  allowed for  adequate anatomically driven preparations even for the most challenging canal systems.  
Now that everybody is moving towards martensitic flexible files with controlled  memory characteristics, a new generation of files has come to revolutionize instrumentation efficiency and safety.  The new electrical discharge machined (EDM) Hyflex  files  arrived to supplement the successful controlled memory series and reduce the number of files needed to prepare challenging root canal systems. 
The aim of this workshop is to introduce you to the new EDM era of rotary instrumentation for the highly curved and the double curved canal systems




Workshop objectives

At the end of this workshop the participant will manage to
Understand the biological objectives of root canal treatment manipulation in relation to each anatomical challenge
Understand and appreciate the controlled memory thermomechanical processing and electrical discharge machining for the manufacturing of rotary files
Establish a roadmap for customized instrumentation protocols with the Hyflex CM  & EDM rotary files even for the most challenging cases
Practice  the suggested shaping protocol in highly curved and doubled curved training blocks with 3 rotating instruments
Achieve a three dimensional obturation of the prepared root canal system by using greater taper gutta-percha points in combination with Gutta-flow 2
Take away tips and hints to use them in the every day practice



Workshop duration: 2-4 hours
Number of participants: 20', '2', '7');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('8', '2', '7');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('8', '8', '7');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('7', 'Dr. Antonis Chaniotis DDS, MDSC', 'Chaniotis', 'chaniotis.jpg', 'Chaniotis Antonis is a graduate of the University of Athens Dental School, Greece (1998). In 2003 he completed the three-year postgraduate program in Endodontics at the University of Athens Dental School. 
Since 2003, he owns a limited to microscopic Endodontics private practice in Athens, Greece. 
For the last ten years, he served as a clinical instructor affiliated with the undergraduate and postgraduate programs at the University of Athens, Athens Dental School, Endodontic department, Greece.
In 2012 he was awarded the title of  Clinical fellow teacher at the University of Warwick, Warwick dentistry UK.
He lectures extensively nationally and internationally and he has published articles in local and international Journals. 
He serves as an expert lecturer for various websites of on line dental education. 
Dr. Chaniotis is passionate about video documentation in microscope enhanced Endodontics and believes in the educational power of video presentations.
He currently serves as an active member of the Hellenic Society of Endodontology ( ESE full member society), an active member of the Academy of Microscope Enhanced Dentistry (AMED)  and a certified member of the European Society of Endodontology (ESE)', '7', 'Italy');



/*======================================================================================================*/
/* 9 - Arnaldo Castellucci */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('9', '', '', '1', '9');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('9', '1', '9');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('9', '9', '9');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('9', 'Dr. Arnaldo Castellucci', 'Castellucci', 'castelluci.jpg', 'Dr. Castellucci graduated in Medicine at the University of Florence in 1973 and he specialized in Dentistry at the same University in 1977. From 1978 to 1980 he attended continuing education courses on Endodontics at Boston University School of Graduate Dentistry with Prof. Herbert Schilder. As well as running a practice limited to Endodontics, Dr. Castellucci is Past President of the Italian Endodontic Society S.I.E., Past President of the International Federation of Endodontic Associations I.F.E.A., Active Member of the European Society of Endodontology E.S.E., Active Member of the American Association of Endodontists A.A.E..
He is Assistant Professor of Endodontics at the University of Cagliari Dental School and Professor of Micro-Surgical Endodontics at the Specialty of Oral Surgery of the University Federico II of Naples.
He is a very well known international lecturer and gave lectures all around the world.
He has been Editor of “The Italian Journal of Endodontics” and of “The Endodontic Informer”, is now the Editor in Chief of Endo Tribune, Founder and President of the “Warm Gutta-Percha Study Club” and of the Micro-Endodontic Training Center, where he teaches and gives hands-on courses.
He published articles on Endodontics in the most prestigious Endodontic Journals.
He is the author of the textbook (3 volumes) “Endodontics”, which is now available in English. 
He lives and practices in Florence where he has his private practice and his Micro-Endodontics Training Center.', '9', 'Italy');



/*======================================================================================================*/
/* 10 - Bogdan Crisan */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('10', 'MINIMALLY INVASIVE PROCEDURES FOR THE DENTO-FACIAL ESTHETICS', 'Minimally invasive approach to therapeutic procedures is one of the goals of modern dentistry. The present tendency is to minimise the impact on the tissues of the oral cavity through various procedures performed in dental office. In the field of dento-facial aesthetics, this trend is increasingly, being addressed through the use of techniques and equipments to reduce unwanted effects and lead to predictable results. The Conference will be presented the minimally invasive procedures performed in different clinical situations. Clinical cases that will be illustrated in the presentation, were chosen to exemplify the role of these procedures both in terms of the dental and facial aesthetics. The use of new laser equipments and laser-assisted therapeutic protocols which are at the disposal of the dental practitioner represents a real benefit in dento-facial aesthetics.', '1', '10');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('10', '1', '10');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('10', '10', '10');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('10', 'Dr. Crisan Bogdan', 'Crisan', 'crisan.jpg', 'Dr. CRISAN BOGDAN – is an international trainer and lecturer for „Laser a& Health ACADEMY” on domain of laser application in surgery and dentistry, with over 15 years experience in the use of lasers diodes on soft tissues and with over 10 years of experience in the use of lasers on hard tissues. He graduated the Faculty of Dentistry at "Iuliu Haţieganu" University of Medicine and Pharmacy Cluj-Napoca, in 2002. He is specialist in dento-alveolar surgery since 2011. He obtained his master''s degree in Oral Rehabilitation and Oral Health, in 2007. He attended specialization courses in clinics and research centers in Sweden (Karolinska Institutet), Switzerland (Universitat Basel) and South Korea (Hallym University). In 2011 he got his certificate of complementary studies in "Therapeutic and surgical use of laser in dentistry". He got the “Phd” in Medical Sciences in 2013, with his doctorate on the subject of the use of laser in treatment of vascular malformations and oral soft tissues benign tumors. His scientific activity has resulted in the participation in numerous national and international scientific meetings, where he gave lectures and oral presentations related to the use of laser in oral surgery, periodontal disease, peri-implantar complications and dental aesthetics. He published as first author and co-author a numerous scientific papers in national and international journals. Is an active member of the Romanian society of Lasers in Dentistry (SRLS) affiliated to WFLD (World Federation for Lasers in Dentistry). He is currently Lecturer at the " Iuliu Haţieganu" University of Medicine and Pharmacy Cluj- Napoca and associate laser practitioner at two private clinics in Cluj.', '10', 'Romania');



/*======================================================================================================*/
/* 11 - Bogdan Dimitriu */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('11', 'Endodontics & Esthetics Connections', 'Contemporary endodontics is currently responsible and involved in the esthetic approach from many perspectives. Clinical management of situations characterized by significant loss of dental hard tissues often requires the selection and application of endodontic posts. This, as well as the restoration of the nonvital tooth, are correlated with both the instrumentation method and the type and materials from which the root canal filling is made, thus creating the premises allowing the application of the endodontic monoblock concept. Tooth whitening, on the other hand, address either vital teeth, with the need to test and monitor pre- and post-operative pulp vitality, or nonvital teeth, for which the treatment approach is obviously an endodontic one. The direct involvement of the endodontist can be thus ascertained, his beeing considered to be the decision and even the necessity of applying the integrated treatment, from strict endodontic approach to aesthetically predicted outcome.', '1', '11');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('11', '1', '11');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('11', '11', '11');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('11', 'Prof. Dr. Bogdan Dimitriu', 'Dimitriu', 'dimitriu.jpg', 'Prof. Dr. Bogdan Dimitriu
-  Faculty of Dental Medicine, Carol Davila University of Medicine and Pharmacy, Bucharest
-  vicedean for undergraduate and Master’s studies
-  head of the Department of Endodontics 
-  coordinator of the residency program in Endodontics
-  senior consultant in endodontics, senior consultant in general dentistry  
-  certificate of competence in Maxillofacial and Dental Radiology Diagnosis
-  secretary general of the Society of Esthetic Dentistry in Romania', '11', 'Romania');



/*======================================================================================================*/
/* 12 - Bogdan Oprea */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('12', 'Implementation of 3D technologies in everyday practice', 'The evolution of digital technology (3D) in the field of dentistry made possible a real change in the way we practice dentistry. In recent years, more and more dental treatments are done either through a complete digital stream or through a combination of 3D technology and classical (analogous) techniques. We can say that we live a similar time to the one during the industrial revolution. The changes that are already existing in dentistry are amazing. Dental medicine will show you less and less what is currently being learned in universities and will evolve into a new stage where artificial intelligence will probably be a dominant element. For this reason, we believe that the integration of digital technologies in both private dental practices and in the educational system will allow to those who choose this path not to be "the victims of change" but to be active participants to change. During this conference, the lecturers will illustrate, through various clinical cases, how dental medicine can be put into practice through a fully digital workflow. 3D images (CBCT), CAD CAM technology, 3D printers, computerized occlusion analysis systems are just a few of the technologies that ultimately change the way we do dental practice for the benefit of the patient and offices / clinics where we practice.', '1', '12');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('12', '1', '12');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('12', '12', '12');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('12', 'Dr. Bogdan Oprea', 'Oprea', 'oprea.jpg', 'Dr. Bogdan Oprea was born in 1969 in Sibiu He graduate the Faculty of Dentistry Targu Mures in 1994.
2003 - master degree 
2008 - PhD in Health Sciences of the University of Medicine and Pharmacy "Iuliu Hatieganu" from Cluj Napoca.
2015 - ISCD certified CEREC trainer
His a founding member and president of the Association of Dental Learning.
He taught over 90 postgraduate training courses, in collaboration with various professional associations nationwide and over 50 conferences in congresses or other scientific meetings.
He has published two books as first author and is coauthor of six books in the field of prosthodontics.', '12', 'Romania');




/*======================================================================================================*/
/* 13 - Cleopatra Nacopoulos */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('13', 'Facial aesthetics with smart blood derivatives and stem cells 
New trends in facial aesthetics with smart blood derivatives.
Cleopatra Technique TM', '"Mesotherapy" is a non-surgical, minimally invasive method of blood derivatives that consists of multiple intradermal or subcutaneous injections, stimulating the body''s natural healing cascade, yielding visible results within a short period of time. 
Using blood derivatives in liquid form is able to enhance healing after facial procedures, as well as to rejuvenate the face without tissue manipulation. i-PRF utilizes activated platelets, inflammatory cells and stem cells found in our blood for regeneration of skin and ultimately alleviate wrinkles. The release of cytokines associated to the niche of mesenchymal stem activate as well the regenerative process and angiogenesis for better oxygenation of the skin, in order to convert the stem cells in mature cells. This procedure begins the production of collagen and elastin fibers which is helped by the fibrin matrix produced naturally from the soluble fibrinogen. Moreover, the plasma contains proteins, minerals, vitamins and other nutritional substances, which lead to skin rejuvenation. 
Cleopatra Technique TM using smart blood concentrates will induce a dramatic improvement in facial texture, firmness, and fine lines with long term results, up to two years.', '1', '13');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('13', '1', '13');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('13', '13', '13');
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('14', 'New trends in facial aesthetics with smart blood derivatives.
Cleopatra Technique TM', '"Mesotherapy" is a non-surgical, minimally invasive method of blood derivatives that consists of multiple intradermal or subcutaneous injections, stimulating the body''s natural healing cascade, yielding visible results within a short period of time. 
Using blood derivatives in liquid form is able to enhance healing after facial procedures, as well as to rejuvenate the face without tissue manipulation. i-PRF utilizes activated platelets, inflammatory cells and stem cells found in our blood for regeneration of skin and ultimately alleviate wrinkles. The release of cytokines associated to the niche of mesenchymal stem activate as well the regenerative process and angiogenesis for better oxygenation of the skin, in order to convert the stem cells in mature cells. This procedure begins the production of collagen and elastin fibers which is helped by the fibrin matrix produced naturally from the soluble fibrinogen. Moreover, the plasma contains proteins, minerals, vitamins and other nutritional substances, which lead to skin rejuvenation. 
Cleopatra Technique TM using smart blood concentrates will induce a dramatic improvement in facial texture, firmness, and fine lines with long term results, up to two years.', '2', '13');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('14', '2', '13');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('14', '14', '13');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('13', 'Dr. Cleopatra Nacopoulos', 'Nacopoulos', 'nacopoulos.jpg', 'Bachelor of Science in Biology, in GANNON University of USA, 1985
Graduated from Dental school of Athens University in 1991
Master degree in Oral Biology 1998
Master degree in Periodontology 1998
Associate faculty member of Athens University until 1998
Certificate Master Degree of SOLA Academy, in Vienna University 2005
Trained on facial aesthetics with the use of fillers and growth factors, in Beverly Hills California, 2007
Diplomate Certificate Degree of ICOI, 2013
PhD from Laboratory for Research of the Musculoskeletal System, School of Medicine, University of Athens, Greece, 2015
PostDoc research, Laboratory for Research of the Musculoskeletal System, School of Medicine, University of Athens, Greece, 2015
Medical Aesthetics MSc Queen Mary University London, 2015
Scientific collaborator for the Research of the Musculoskeletal System, School of Medicine, University of Athens
Published many scientific papers and her field of interest is GBR with the use of P.R.P., P.R.F. implants and laser
Lectures in many conferences and participates in many hands on courses for implants, growth factors, facial aesthetics and laser
President of HELSOLA, WAUPS Greece and WAUPS Aesthetica 
Representative of Hellenic Dental Association
Private clinics in Athens and Tripolis Greece limited to Periodontics, Microsurgery, Oral Implantology, Laser and Facial aesthetics.', '13', 'Greece');




/*======================================================================================================*/
/* 15 - Dan Lazar */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('15', 'SHAPE - predictable steps with composite in 4 anterior clinical situations', 'The increased use of direct composite restorations can be mainly attributed to patient demand for aesthetic restorations in a very short time and the availability of composites with high strength and excellent aesthetics offered by the dental companies. 
When the dentist chooses the direct composite restoration as a treatment plan option, this should meet several criteria such as: minimally invasive approach, good match of the colour, good finishing and polishing, functional and aesthetic biomimetic. 
In all composite restorations is always preferred a smooth and highly glossy surface. The aesthetic considerations and the oral health are the reasons why a properly finished composite restoration is desirable. Shaping, contouring, finishing and polishing are the most important steps in successfully creating bonded and long term restorations. 
In order to simplify the clinical procedures when the dentist should reconstruct the anterior region with composite, an easy classification of clinical situations might be useful. A small incisal margin, an extended incisal margin, a proximal cavity reconstruction and a veneer reconstruction are the most frequent clinical situations. 
For each situation, a step by step procedure helps the dentist to have better aesthetic results and to spend less chair time.
The achievement of an anatomical SHAPE of the composite resin has always been a clinical challenge and new methods and materials have been appearing on the market, day by day, to accomplish this important step.', '1', '15');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('15', '1', '15');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('15', '15', '15');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('15', 'Dr. Dan Lazar', 'Lazar', 'lazar.jpg', 'Dan Lazar, graduated from the Faculty of Dentistry in 2005 in Cluj-Napoca, Romania, followed by many post-graduate trainings in prosthetic and restorative dentistry in Romania and Europe. From 2007-2009 he was teaching at the Faculty of Dentistry, Iuliu Hatieganu Cluj-Napoca,at the Restorative department. Since 2005-2016 is working in a private practice in Oradea, Romania. From 2016 he work in his private dental clinic- Clinica LAZAR. 
The passion of beauty push him to study more about dental photography from technical to art and the aesthetic perception of smile and balance design of anterior region. As a lecturer the main topics of interest are - dental photography, composite restorations in anterior and posterior region and prosthodontics. 
Since 2015 he is an Style Italiano member 
Dan Lazar is lecturing in Romania and abroad since 2009 on different topics: direct composite restorations, anterior prosthodontics and dental photography.', '15', 'Romania');



/*======================================================================================================*/
/* 16 - Daniele Rondoni */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('16', 'When Art meets Technology: 
logical evolution of design and techniques', 'Aesthetics is nowadays the most important request from patients side. To obtain the ideal prosthetic solution the white aesthetics is fundamental, but to reach the perfect harmony, the individual and natural reproduction of the gingival texture is important, as far as is considered the “aesthetic frame” of dental restoration. 
Materials evolution and new technologies like cad-cam, linked to the traditional know-how of the technician, allows to achieve a proper solutions also for complex cases through planning of the ideal procedures. Such combinations make it vital to perfectly know work protocols that allow to fully exploit the technological potential available in lab as well as the aesthetic versatility of such new generation materials. Working protocols become fundamental to make the best out of both materials and technology, while confirming the well- established dental technician’s artistry. 
Target: 
	-  New generation materials
	-  Design and selections
	-  Ideal protocol to work
	-  Clinical cases experience', '1', '16');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('16', '1', '16');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('16', '16', '16');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('16', 'Dr. Daniele Rondoni', 'Rondoni', 'rondoni.jpg', 'Opened his laboratory in 1982, where he has also based the AAT Community College he founded. He''s a counsellor for the University of Milan, University of Chieti, University of Sienna and University of Rome Tor Vergata. EAED and IAED Active Member. 
International Instructor for KURARAY NORITAKE Dental Materials. He''s particularly devoted to the study of morphology and dental aesthetics, he actively collaborates to the development of materials used for aesthetic dental restoration. Author of the text "Tecnica della Multistratificazione in ceramica" (Ceramic Multilayering Technique) and of a lab manual about the use of composite materials, introducing his own method, named "Inverted Hardness Layering System". He''s among the contributors to “LAYERS, an atlas of composite resin stratification” by Manauta – Salat, Quintessence Publishing. ', '16', 'Italy');



/*======================================================================================================*/
/* 17 - Diana Boangar */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('17', 'Ortho-prosthetics interdisciplinarity; from planning to execution', 'Published in 2010, a study conducted between MIT and Union College demonstarted that collective intelligence exceeds cognitive abilities of individual group members. The principle also applies to medicine. The process of decision making is nowadays influenced by the continous flux of information, the evolution of the technology, and the development of new protocols and evidence-based procedures. But the most powerful tool that we have available is communication with other specialists.
          Those cases that fall into the “gray zone” and for which no individual approach offers optimal esthetic and functional results, compel us to integrate other specialists in our treatment planning. Among them, ortho- prosthetics collaboration plays a special role, due both to the complex facetes it carries and to the time factor. A well conducted, individualized orthodontic treatment may turn a difficult- in a medium difficulty-grade case, and one that requires great sacrifice of dental or periodontal tissues into a minimally invasive approach.
	That is why it’s important for us to recognize the complex problems our patients may have, our own limits in adressing those issues, to individualize protocols and find the common ground to efficiently communicate with the orthodontist.
	The objectives of the presentation are:
 Recognize clinical situations when interdisciplinary collaboration is indicated
 Recognize clinical situations in which orthodontic correction may make the difference between an ordinary and an excellent outcome
 Present a clinical time-proven protocol of interdisciplinary collaboration
 Illustrate it through clinical examples.', '1', '17');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('17', '1', '17');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('17', '17', '17');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('17', 'Dr. Elia Diana Boangar', 'Boangar', 'boangar.jpg', 'Dr. Elia Diana Boangar graduated the “I. Hatieganu” University of Medicine and Pharmacy Cluj-Napoca in 2006, and in 2010 she finished her MSD in Orhodontics program in Cluj-Napoca and Bordeaux, France. Ever since, she has been exclusively practicing orthodontics in Cluj-Napoca and Zalau. She lectures on the subject of interdisciplinary treatment of adult patients, emphasizing the importance of properly sequencing orthodontic, periodontal and restorative treatment. She is an active member of World Federation of Orthodontists, American Association of Orthodontists and European Orthodontic Society.', '17', 'Romania');




/*======================================================================================================*/
/* 18 - Djemal Ibraimi */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('18', 'Emulating nature: going the distance from observation to daily application', 'Let nature be your guide !

Based on the Bio Emulation model clinicians and technicians should strive to restitute to the full Histo-Anatomic sickness of the given tissue with proper spatial ordering, simultaneously optimising both functional and optical integration. Yet the lack of standardisation amongst dental restorative materials has led to a paradox of choice, which in turn has created several dichotomies with regards to restorative strategies. An exploration of the fundamentals of visual_synthesys will serve as the foundation in our quest for restorative emulation and seamless integration in daily technical application.', '1', '18');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('18', '1', '18');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('18', '18', '18');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('18', 'Dr. Djemal Ibraimi', 'Ibraimi', 'ibraimi.jpg', 'Born in 1981 in Zhitoshe, in the Albanian part of FYROM. At 2 years old , he emigre in Switzerland where he does all of his school. He obtained Certificate of Dental Technician in 2002. 7 months later recovers a dental laboratory specialised in metallurgy. After 8 years of removable prosthesis, decided to specialise in fixed prosthesis. In the last 6 years he focused only in cosmetic dentistry. In 2012 he became the first dog member out of the United States. In 2014, becomes key opinion leader for GC. He made the calendar for GC in 2015 and 2016. In 2016 he becomes a member of Bio-Emulation International group. He tests different products for GC : LiSi ceramics, Lisi press and Gradia Plus. Participates in the first test of the polar _eyes, visual_eyes, white_balance and eLABor_aid system form Bio Emulation.', '18', 'Albania');




/*======================================================================================================*/
/* 19 - Emanuel Bratu */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('19', 'Hardware in Bone preservation', 'Bone remodelling is a key factor in long term implant success and is influenced by many mechanisms.This presentation emphasise on the components of implant systems and the way to use them in such a way that bone remodelling is minimized assuring also soft tissue stability and passive fit of implant supported restaurations.', '1', '19');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('19', '1', '19');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('19', '19', '19');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('19', 'Prof. Dr. Emanuel Bratu', 'Bratu', 'bratu.jpg', 'Graduate 1994, School of Dentistry, UMF Victor Babes Timisoara
Scholarship Department of Oral and Maxillofacial surgery University of Vienna, AKH 1994-1995
Specialist in Prosthodontics and Oral Surgery
President of RSDS Romanian society of Dental Sciences
Vice President of The Romanian Society of Implantology and Biomaterials
University professor, Head of Department of Implant supported Restaurations, UMF Victor Babes Timisoara
International lecturer,Zimmer Biomet Global Instructor, Xive Opinion Leader
ICOI Fellow, Member of the Prosthetic section of the ICOI
Over 50 publications
More than 100 lectures', '19', 'Romania');



/*======================================================================================================*/
/* 20 - Eric Van Dooren */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('20', 'The Geometry of beauty', 'The lecture explores the digital workflow, toolset and possibilities today, approaches the Smile Design Basics from a clinical standpoint and looks at the SKIN concept of design that uses natural morphology and enhances the CAD- CAM ability to copy.
 
We will discuss the 3D printing possibilities, library printed designs and staining techniques for monolithic restorations, orthodontic and surgical integration, advancing to an overview of the clinical workflow.', '1', '20');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('20', '1', '20');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('20', '20', '20');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('20', 'Dr. Eric Van Dooren', 'Dooren', 'dooren.jpg', 'Dr. Eric Van Dooren attended the Katholieke Universiteit Leuven, Belgium, where he received his degree in dentistry in 1982. After graduating, he opened a private practice in Antwerp, Belgium, specializing in periodontics, fixed prosthodontics and implantology. Currently, he is a Visiting Professor at the University of Liege, Belgium, and at the University of Marseille, France, and an active member of the European Academy of Esthetic Dentistry. In addition, he is a member of the editorial staff of Teamwork (Germany) and a member of the Belgian Dental Society. 

Dr Van Dooren lectures nationally and internationally, mainly on esthetics, implants and esthetic periodontal surgery. He has published several papers in national and international journals.', '20', 'Belgium');


/*======================================================================================================*/
/* 21 - Fechmi  Housein */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('21', 'How to make the Patient understand our working Process and our way of thinking', 'It´s all about making the patients, who are in touch with us, feel comfortable and well understood.
We have to lign out and explain possibilities and limits of our work. Furthermore We need to show the structure of our costs open and effeciently.

My area of expertise is „fixed restrations , non or minimal invasive “. 

On the basis of several case studies (solved cases, cases under progress and probably unsolved cases). I would like to show you my daily routine and work flow.

The collaboration of patient, dentist and technician is a very sensible field and often key point of success or failure of a case.', '1', '21');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('21', '1', '21');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('21', '21', '21');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('21', 'Dt. Fechmi  Housein', 'Fechmi', 'fechmi.jpg', 'DT  Fechmi  Housein  completed  apprenticeship  training  in  Dental  Technology  in  1996.  Worked  inseveral  dental  laboratories.  He  graduated  top  of  class  in  2005  from  the  Master  School  of  Dental  Technology  Düsseldorf,  Germany.  He  completed  various  hands-on  courses  by  internationally  re-  nown  ceramists  including  Thilo  Vock,  Ulrich  Werder,  Willi  Geller,  Sa-  scha  Hein,  Hitoshi  Aoishima,Gerald  Ubassy,Walter  Gebhard  and  Jürg  Stuck.  In  2005  Fechmi  Housein  was  invited  by  Shigeo  Kataoka  to  visit  his  renown  Osaka  Ceramic  Training  Center  where  he  spend  one  month.  Since  2010  he  operates  his  own  dental  laboratory  ,Fechmi  Housein  Zahntechnik  Ästhetik  und  Funktion,  in  Mönchengladbach  ,Germany.  Since  2015  he  operates  his  laboratory  and  education  cen-  ter  in  Viersen,  Germany. ', '21', 'Germany');



/*======================================================================================================*/
/* 22 - Florin Cofar */
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('22', '1', '22');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('22', '20', '22');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('22', 'Dr. Florin Cofar', 'Cofar', 'cofar.jpg', 'Dr. Florin Cofar attended University of Victor Babes, Timisoara, where he received his degree in dentistry in 2007. He is a post-graduate of NYU College of Dentistry, and a Harvard Business school attendee. 

Specialized in esthetic interdisciplinary dentistry, working closely with other respected dentists in the field such as Christian Coachman, Eric van Dooren and Paulo Kano. 

Is an international speaker on Dental Aesthetics, Digital Dentistry, Smile Design, having lectured in more than 30 countries, including respected Academies like The American Academy of Cosmetic Dentistry, and Brazilian Academy of Cosmetic Dentistry. 

Opinion leader for some of the most respected companies in the field: Ivoclar, 
MIS, DSD, Planmeca. 

Known for his videography work in dentistry, he is author of some of the most popular videos in the dental field.

In the present, is lecturing all around the world and practicing dentistry in his own practice in Timisoara, Romania.', '22', 'Romania');




/*======================================================================================================*/
/* 23 - Galip Gurel */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('23', 'Digital Communication / The Implant- Prostho Connection', 'Modern techniques and materials can be useless if the final outcome does not live up to the patient esthetic expectations.
It has always been a challange to create a smile design that the final result would be precisely predicted from day one.. in some cases the dentists do built this design by themselves directly in the patients mouth, however some leave it to the ceramist that they work with.. however more importantly this smile design should also match with the patient’s functional, biological and emotional needs... 

To obtain such results we need an interdisciplinary team work. Every member of the team (including the specialists, lab technicians and the patient) should be aware of the treatment planning and the end result from the beginning . Having all the above done correctly, major component for the success remains “communication”. The key to the aesthetic excellence requires patient communication as well as the communication with the laboratory and the specialists from the beginning of the case till the end.

This becomes even more challenging if the team ( dentist, specialists and the ceramist) do not physicaly work together in the same place.
The protocol that is presented will improve the esthetic diagnosis, the interdisciplinary communication and the predictability of anterior aesthetic implant restorations.
Today, it souldn’t be a problem wether the lab, the specialist ect. that you work with is close to your clinic or it is in another country, the digital communication makes everyone work as a synergistic team .', '1', '23');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('23', '1', '23');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('23', '23', '23');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('23', 'Dr. Galip Gurel', 'Gurel', 'gurel.jpg', 'Dr. Galip Gurel graduated from the University of Istanbul, Dental School in 1981. He continued his education at the University of Kentucky, Department of Prosthodontics. He received his MSc degree from Yeditepe University, in Istanbul. Dr. Gurel is the founder and the honorary president of EDAD (Turkish Academy of Aesthetic Dentistry). He was the President of the European Academy of Esthetic Dentistry (EAED) in 2011 & 2012. 

He received “The Smigel” award in October 2014 which is granted biennially by New York University College of Dentistry to honor the best esthetic dentists in the world for their social contribution, their support for the improvement of esthetic dentistry, their vision and determination and their ability to present innovative ideas around dentistry globally and the education they provide to dental health professionals about advanced esthetics, technology and the new techniques in general dentistry. He is also a member of the American Society for Dental Aesthetics (ASDA) and American Academy of Restorative Dentistry (AARD) and the honorary diplomate of the American Board of Aesthetic Dentistry (ABAD). 

He is also the editor-in-chief of Quintessence Magazine in Turkey and on the editorial board of the AACD journal, PPAD (Practical Procedure & Aesthetic Dentistry), EJED (European Journal of Esthetic Dentistry). He has been lecturing on dental aesthetics all over the world and giving post graduate lectures on aesthetic dentistry. He is a visiting professor at New York University (USA), Marseille Dental University (France) and Istanbul Yeditepe University (Turkey). He is the author of “The Science and Art of Porcelain Laminate Veneers” published by Quintessence publications in 2003 and translated into 12 different languages. 

He has been practicing in his own clinic in Istanbul, specializing in Aesthetic Dentistry, since 1984. A renowned sportsman, Dr. Gurel has been the Captain of the Turkish National Team of Water Polo for 110 times, a World Champion of the Camel Trophy and a participant of the Paris-Dakar Rally.', '23', 'USA');




/*======================================================================================================*/
/* 24 - Georgia Trimpou */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('24', 'Immediate prosthetic management  of the periimplant soft tissue: current conventional and digital protocols for standard and complex cases', 'The soft tissue appereance is a key factor for success in implantology, however a harmonious integration of the implant retained crowns is not always predictable. The „immediate prosthetic management“ enables a direct formation of the peri-implant soft tissue for optimization of the esthetic outcome. Conventional and digital workflows are presented on standard and complex cases (e.g. long-term effects of anterior tooth trauma)  demonstrating different clinical ways to ideally support and stabilize the tissues before, during and directly after implant insertion.', '1', '24');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('24', '1', '24');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('24', '24', '24');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('24', 'Dr. Georgia Trimpou', 'Trimpou', 'trimpou.jpg', 'Scientific assistant in J.W. Goethe-University of Frankfurt. She is lecturer postgraduate program of implant prosthodontics at the J.W.Goethe-University of Frankfurt / Main (Germany). Since 2008 she is Assistant Professor, Department of Oral Surgery and Implantology, Dental School, J.-W. University of Frankfurt and starting 2014 Qualified Specialist in Prosthetics with Further Education of DGPro.', '24', 'Germany');




/*======================================================================================================*/
/* 25 - Giovanni Ghirlanda */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('25', 'The Prosthetic guided bone regeneration. Key factor in the aesthetic implants outcomes', 'An aesthetic area can be defined as any area to be restored that in visible in a patient’s smile. An aesthetic implant restoration should resemble a natural tooth in every aspect; reaching the goal of a perfect aesthetical outcome of an implant restoration may represent a very hard challenge to any dentist.
Along the years the paradigms of the treatment have shifted from the bone guided implantology to the more correct prostetic driven implantology. In the same way, also the guided bone regenation should choose the best approach in order to maximize the aesthetical outcome of the therapy.
For this reasons, nowadays, approaching a treatment in an aesthetic site, it is more correct to speak about Prosthetic guided regeneration, including soft tissue management, instead of Guided Bone Regeneration (GBR). The lecture will illustrate different strategies of treatment, from surgical to the prosthetic phase, of several clinical cases in aesthetic areas where complex anatomical situations were found as well as the solutions adopted in the effort of maximizing the aesthetical outcome.
   
Each different approach  will be presented and briefly discussed.', '1', '25');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('25', '1', '25');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('25', '25', '25');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('25', 'Dr. Giovanni Ghirlanda', 'Ghirlanda', 'ghirlanda.jpg', 'Graduated at the University of Rome, he worked in the Periondontology Dept and the he was Adjunct Professor in the Histology Dept. of the same University.He focused his topics on immediate loadind,aesthetic implantology and soft tissue management.Visiting Doctor in the beginning of 1990 near Dental School of Harvard University. Since 2006 he cooperates with Bredent developing the immediate loading treatment approach. Active member of the Italian Academy of Osteointegration (IAO). Master in Implantology Universidad de La Murcia, Spain. Visiting Professor near Universitad Catolica San Antonio de La Murcia, Spain. Lecturer in Italian and Iinternational Congress and author of articles in international literature. He works in Rome with practice limited to Implantology AND Periodontology.', '25', 'Italy');




/*======================================================================================================*/
/* 26 - Giuliano Malaguti */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('26', 'A modern approach to combined fixed-removable restoration', 'New treatment modalities have expanded the choices available to prosthodontists and their patients. In the era of implantology and digital dentistry, traditional restorations such as combined fixed-removable restorations could seem anachronistic. At the same time, an explosion of data has called into question the validity and efficacy of any form of prosthodontic treatment, and older treatment planning strategies have been reconsidered when restoring a partial edentulism. Furthermore, the new technologies are expanding clinical and technical solutions and changing the workflows.
The understanding of the theories and applications of a modern approach to fixed prosthodontics utilized in conjunction with removable partial dentures is vital to the success of full-mouth combined reconstructions. A long term follow-up protocol is also vital to avoid or reduce complications and failures.
How to select the proper attachment type, the restoration design and material, and many other choices are crucial when approaching fixed-removable restorations.
Indications, purposes and principles are extensively discussed in terms of principles of design, hard and soft tissue management, technical procedures and future perspectives, through images and videos of clinical and technical procedures.', '1', '26');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('26', '1', '26');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('26', '26', '26');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('26', 'Dr. Giuliano Malaguti, DDS', 'Malaguti', 'malaguti.jpg', 'Born in October 9th 1979, in Reggio Emilia (Italy), he obtained the Dentistry (DDS) degree with full marks and honour at the University of Modena and Reggio Emila in 2004. Since his degree he attended the Dental Clinic at the University of Modena and Reggio Emilia, directed by Prof. Ugo Consolo, in the Prosthodontics department as clinical tutor of Removable Prosthodontics, and since 2005 he is also Tutor of Gnatology at the same University. Between 2007 and 2012 he has been Research Assistant at the University of Modena and Reggio Emilia. Since 2010 he is Adjunct Professor of Fixed and Implant-Prosthodontics, and since 2013 he is Adjunct Professor of Removable Prosthodontics at the University of Modena and Reggio Emilia. He is author of more than 60 national and international articles, and more than 100 posters. He has also been speaker at national and international congresses. Private practice in Bagnolo in Piano (RE, Italy).', '26', 'Italy');




/*======================================================================================================*/
/* 27 - Giulio Rasperini */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('27', 'Details in periodontal surgical techniques for periodontal regeneration and soft tissue handling to promote stable outcome and aesthetics.', 'In the last years the aesthetic demand from the patients has become the biggest challenge in Periodontology as well as in implant dentistry. Besides functional results is now important to achieve aesthetic success, particularly in the anterior areas, where the expectations of the patients are even higher.
The introduction of new biological concepts, biomaterials and new surgical techniques during the last years, such as Growth Factors, new Scaffolds, different minimally invasive approach and Papilla Preservation, makes possible to answer to the patient’s demands and change the prognosis of compromised teeth with predictable long-term results.
The Sequence of treatment, when other dental field are involved, such as Orthodontics, Prosthodontics, is a key factor to success. 
A decision making of different clinical situation, based on the evidence will be analyzed during the presentation and the procedures will be shown in details.

Objective
To learn procedures that allow to maintain the natural dentition long term with aesthetic and functional satisfaction by the patients.', '1', '27');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('27', '1', '27');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('27', '27', '27');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('27', 'Prof. Dr. Giulio Rasperini', 'Rasperini', 'rasperini.jpg', 'Graduated in dentistry. Specialized in Orthodontics. Active Member of the Italian Society of Periodontology (SIdP). Active member of the European Academy of Esthetic Dentistry (EAED), Full member of the British Academy of Aesthetic Dentistry (BAAD).

Member of the Editorial Board of the Int J Perio Res Dent; ad hoc reviewer: J Dent Res, J Periodontol, J Clin Periodontol, Clin Oral Impl Res, Int Dent J, Quintessence Interational.
Author of several publications focused on Periodontology and Implantology

Winner of few Awards for research focused on Periodontology and Implantology, among them: International Quintessence Publishing Award (Boston 2000 - 2004), Goldman (SIdP 1996 - 2010 - 2017), Clinical Research Award EAO (Glasgow 2010) e Earl Robinson Periodontal Regeneration Award (AAP Los Angeles 2012), Align Research Award (California 2013). 

Associate Professor in Periodontology, Dep. of Biomedical, Surgical and Dental Sciences, University of Milan, Milan, Italy. 
Foundation IRCCS Ca’ Granda Polyclinic Milan, Italy

Adjunct Clinical Associate Professor University of Michigan MI USA', '27', 'Italy / USA');




/*======================================================================================================*/
/* 28 - Giuseppe Marchetti */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('28', '', '', '1', '28');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('28', '1', '28');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('28', '28', '28');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('28', 'Dr. Giuseppe Marchetti', 'Marchetti', 'marchetti.jpg', 'Graduated in Dentistry in University of Parma in July 1996 ( 110/110 )
Private Practice, Parma, Studio Dentistico Marchetti, Strada Nino Bixio, 39
Lecturer, Degree Course in Dentistry, University of Siena, Italy, since 2012. 
Lecturer, Master in Endodontics and Restorative Dentistry, University of Siena, Italy, since 2012.
Lecturer, Faculté d''Odontologie de l''Université de la Méditerranée Marseille, France, since 2012.
Author  of  publications in national and international scientific journals
Author  of  sixteen scientific web publications 
Coauthor of a book of restorative dentistry for ANDI ( Italy )
Lecturer in national and international courses and conferences', '28', 'Italy');



/*======================================================================================================*/
/* 29 - Helene & Didier Crescenzo */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('29', 'The virtual esthetic project VEP. To increase the precision in communication with the laboratory. For a better esthetic analysis.', 'The virtual project is a tool inescapable in the modern dentistry. The topic will be how to avoid the traps of an erroneous virtual project presented to the patient and received in the laboratory. On this occasion they will present you the study of the VEP under miscellaneous esthetic clinical situations and conservative dentistry all realized by a teamwork with the cooperation of various disciplines dentist, orthodontic, parodontologie to optimize the last stage, the prosthodontics.', '1', '29');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('29', '1', '29');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('29', '29', '29');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('29', 'Dr. Hélène & Didier Crescenzo', 'Crescenzo', 'crescenzo.jpg', 'Hélène and Didier Crescenzo, managers of two laboratories of prostheses joined in 2004 to develop the laboratory Esthetic Oral, in the Gulf of Saint Tropez, specialized in dental esthetics. They are authors of very numerous conferences and clinical publications and laboratory (BMC, RC, QRIPD, LABLINE etc). 
Both persons in charge of the section laboratory of prosthesis of the magazine BioMateriaux Cliniques, Information Dentaire, then in the selection panel of the magazine QDRP. 
They are for 7 years the designers and the trainers of a system of esthetic digitized, the VEP (Virtual Esthetic Project). Their understanding of our two occupations place them unmistakably at the top of the art. ', '29', 'France');




/*======================================================================================================*/
/* 30 - Hilal  Kuday */
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('30', '1', '30');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('30', '29', '30');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('30', 'Dr. Hilal  Kuday', 'Kuday', 'kuday.jpg', '1998-1999 Graduated as a dental technician from Istanbul University. 
 He worked in his own laboratory in Istanbul 2003- 2008 Started to work with Ivoclar Training Team 2008 – Working in his own training center and laboratory 2008. 
He is a speaker for Ivoclar Vivadent and helps numerous international courses.', '30', 'Turkey');




/*======================================================================================================*/
/* 31 - Iulian Filipov */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('31', 'Restoring bone foundation : strategies and limitations', 'Osseous defects are very common in dental treatment and bone grafting is an essential procedure in many clinical cases. The architecture of bone defects plays an extremely important role in predictability. In order to restore the bone conditions for optimal im- plant placement some biological principles need to be adhered to. 
This presentation is a comprehensive overview of the princi- ples and clinical technique of bone augmentation, prior to or at the time of implant placement. Ideal treatment planning should be per- formed, according to patient’s limitations. A great challenge in clini- cal practice are elder patients with multi systemic disorders exhibit- ing maxillary extreme atrophy and younger patients with maxillary discrepancies who are candidates for orthognathic surgery.', '1', '31');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('31', '1', '31');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('31', '31', '31');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('31', 'Dr. Iulian Filipov', 'Filipov', 'filipov.jpg', 'Maxillofacial surgeon, DDS, MD 
Active member of MINEC (MegaGen International Network for Education and Clini- cal 
research) 
Associate member of AO Foundation (Arbeitsgruppe für Osteosynthesefragen) / AO CMF 
(Association for Study of Internal Fixation in Cranio-maxillofacial surgery) Active member of IBRA (International Bone Research Association) 
Associate member of EACMFS (European Association for Cranio-maxillofacial Surgery) 
He has a Fellowship in Orthognathic Surgery ( Brugge, Belgium) in 2016. His clini- cal activity is focused on orthognathic surgery, preprosthetic surgery and dental im- plantology. ', '31', 'Moldova');




/*======================================================================================================*/
/* 32 - Ivan Raychev */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('32', 'A minimally invasive approach in the treatment of attrition, erosion and abrasion with direct composite”', 'This presentation is an essence of the current clinical concepts of the author and is a result of his accumulated and considered experience. The ideas are established on real clinical practice and systematic evaluation of the passed and current restorative  alternatives.
Different techniques of the restoration of the frontal teeth are discussed. The shade and opacities selection, the layering technique and the thickness of the layers are considered. The main aim is to present highly aesthetic solutions solved in easy, reproducible and minimally invasive way.
At the distal segments simple and reliable manners of applying the direct composite are demonstrated. Attention is paid to the stamp technique and the transfer of a laboratory wax up with direct composite to the natural teeth.
The adoption of a minimally invasive approach with direct composite in the treatment of cases that need VDO changing is explored. This specific approach is demonstrated in several cases with different level of abrasion and attrition.
The presentation is well illustrated with plenty of real, everyday cases, documented during routine clinical appointments.
 Dr Giuseppe Marchetti:', '1', '32');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('32', '1', '32');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('32', '32', '32');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('32', 'Dr. Ivan Raychev', 'Raychev', 'raychev.jpg', '', '32', '?');




/*======================================================================================================*/
/* 33 - Josef Kunkela */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('33', 'Power of BIOCOPY', 'Until very recently the esthetic result of the frontal region lay solely on the lab technician. To give a restoration its natural shape is a feat not easily achieved even by even the most skilled of technicians, due to the limitations set by the creative part of the human brain. This part of the brain allows us to create one (99% of people), maximum two (remaining 1%) natural algorithm of teeth which each dentist and technician uses on all of his patients.

Through the advancements in digital dentistry we no longer rely on the manual imitation of nature, but we can now directly copy it.

The focus of the authors lecture will be on three different techniques used to copy the natural shapes of teeth.

1. THE RECYCLE technique allows us to record the original shape and surface of of the teeth even before the patient may need any restorations. Aquisition - Scan the patient upon registration together with with OPG or an intra-oral RTG.

2. THE STRETCH technique uses patient’s present situation in cases of diastema or tremas in the frontal region by simply symmetrically enlarging their natural teeth and thus also maintaining their natural surface structure.

3. THE DATABASE of many different natural algorithms of teeth (oval, square, triangular,…..) are ready to use, with the help of the golden rules of digital smile designs in the cases when you do not have the patient’s initial scan or you require major changes.', '1', '33');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('33', '1', '33');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('33', '33', '33');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('33', 'Dr. Josef Kunkela', 'Kunkela', 'kunkela.jpg', '', '33', '?');



/*======================================================================================================*/
/* 34 - Kosmas Tolidis */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('34', 'Esthetic Restorative Dentistry – “Mission Accomplished”', 'The practice of restorative dentistry and more in particular esthetic dentistry, requires knowledge and clinical skills, focusing on a broad spectrum of available materials, methods and approaches.  Excellence in results requires effective treatment planning (examination, documentation etc.), employment of modern techniques for tissues’ preparation and correct choice and usage of a vast number of available materials.  In this lecture, emphasis will be placed upon, how to choose and apply innovative devices, materials and technique.  Will discuss and review, substrate preparation, factors affecting shade and shade selection, bonding and cementation, placement of restorative materials.  At the end participants should have the theoretical knowledge required in order to successfully accomplish their mission, to provide excellence in restorative dentistry.', '1', '34');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('34', '1', '34');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('34', '34', '34');

INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('35', 'Practical seminar on contemporary adhesive dentistry', 'In this seminar, participants will be informed and work on different methods, using different materials, instruments and techniques in order to successfully manage everyday clinical problems in modern adhesive dentistry.  Participants will be trained on shade taking, preparations, use of posts for crown build-ups, endo crowns, and use of fibers.  Also cad/cam issues will be discussed and demonstrated.  When finished participant should be able to successfully accomplish simple and more complex esthetic restorations in both anterior and posterior teeth.', '2', '35');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('35', '2', '34');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('35', '35', '34');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('34', 'Dr. Elia Diana Boangar', 'Boangar', 'boangar.jpg', 'A absolvit Facultatea de Medicină Dentară din Salonic în 1989, unde și-a început activitatea de asociat în cadrul departamentului de terapie restauratoare.
Între anii 1991–1993 a fost masterand la Universitatea din Bristol obținându-și în stomatologie pediatrică.
În 1996 și-a luat doctoratul la Universitatea din Salonic cu tema: Excelența materialelor dentare.
Este Conferențiar universitar la departamentul de Odontoterapie Re- stauratoare a Universității din Salonic.
Este autorul a peste 50 de article in limba engleză și greacă, dar și a două manuale în limba greacă “Restaurările estetice imediate” în 2004 și “Rezolvarea problemelor cli- nice în pediatrie” în 2006.
Dr. Tolidis a fost: Secretar general al academiei grecești de estetică dentară; Președintele societății dentare din Salonic; Vicepreședintele Spitalului “Aghios Pavlos” din Salonic
Membru în consiliul asociației de medicină dentară din Grecia.', '34', '?');




/*======================================================================================================*/
/* 36 - Laur Iacob */
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('36', '1', '36');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('36', '2', '36');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('36', 'Dr. Iacob Laur Alexandru', 'Iacob', 'iacob.jpg', 'Member of the College of Dentists in Bucharest, Dr. Iacob Laur Alexandru has been the Medical Director of YTS Dental View clinics since 2011.
He graduated from the Faculty of Dentistry at "UMF Carol Davila" in 2008, and soon began his training in the field of dental implantology. He then attended several courses, both in the country and abroad, and in 2010 he obtained the Competence in Oral Implantology within the Bucharest Military Hospital.
As a professional, beginning with 2010, he started to observe in his private practice the absence of certain imaging services and technologies, which would have helped not only the implantologists, but also the endodontists, orthodontists and surgeons, and becomes determined to further analyze this domain. During this period he also obtained the second degree specialization in radiology, being now authorized by CNCAN (National Commission for the Control of Nuclear Activities).
Observing the orientation of the Medical Market in Romania, as well as the public perception and controversy over some medical cases, he decided to continue his post-graduate studies, finalizing in 2016 Master''s Degree in Medical Law and Malpraxis at Titu Maiorescu University.
Throughout the years spent leading the YTS Dental View Medical Department, he has been constantly trying to bring the latest imaging technologies, implement new procedures and offer products and services that did not exist up to this moment in Romania, which would help both doctors and patients.
Dr. Iacob Laur Alexandru is also a lecturer, holding numerous dental imaging courses and workshops for both students and doctors in order to support their experience in this field and also trying to change certain perceptions and habits related to this medical field.', '36', 'Romania');


/*======================================================================================================*/
/* 37 - Marco Martignoni */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('37', 'FROM ENDO TO FINAL RESTORATION WITH DIGITAL SUPPORT', 'Modern endo-restorative offers great opportunities in term of simplicity and predictability of results.
The complete workflow can be followed by digital support starting with the diagnosis to end with the final restoration. 
New era of endodontics is more simple, fast and reliable but most importantly gives the chance of leaving more residual structure.
Endodontic instruments are constantly monitored for stress and therefore reducing chances for failure.
Obturation devices are simple and rapid and the restoration will follow after.
Once the tooth is then properly restored digital development of final restoration can take place, when needed, using a wide range of materials: composites, hybrids, ceramics and zirconia and that procedure can also be done sometimes chairside. 
Final objective of the endodontic treatment is to create a new system that may  be able to work properly for the designed function as long as possible after the treatment is completed.', '1', '37');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('37', '1', '37');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('37', '37', '37');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('37', 'Dr. Marco Martignoni', 'Martignoni', 'martignoni.jpg', 'Marco Martignoni is graduated con lode at University of Chieti in 1988.
He leads a private clinic in Rome Italy and dedicates his practice mainly at endodontics, restorative dentistry  and prosthodontics.
He has done and published research on post endodontic core build up and posts.
Known speaker, gave numerous lectures and practical workshops in Italy and worldwide on endodontics ,  on core build up and  on the use of operatory microscope in dentistry.    
Founder of the Italian Accademy of Mycroscopic Dentistry and honorary member of the French Society of Endodontics.
President of the congress of the European Society of Endodontology for  ESE-Rome 2011.
Past-president of the Italian Society of Endodontics.
Part-time Professor at Steinbeis Transfer Institute Hochschule Berlin Master of Science in Interdisciplinary Dentistry.
Visiting Professor at the International Master in Endodontics and Restorative Dentistry, University of Siena.', '37', 'Italy');




/*======================================================================================================*/
/* 38 - Marius Steigmann */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('38', 'Treatment Options for the aesthetic zone', 'Soft tissue management means understanding the anatomy of the soft tissue from the outer to the inner layer 
They are different layers of tissue epithelium , connective tissue Mucosa muscles ,periosteum .
Knowing how to learn with this different layers is important for different treatment options like bone augmentation in thick and thin tissue
Aesthetic maintenance and correction and also for different closure after removal of impacted teeth tumors And resection', '1', '38');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('38', '1', '38');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('38', '38', '38');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('38', 'Dr. Marius Steigmann', 'Steigmann', 'steigmann.jpg', 'Dr. Marius Steigmann graduated in Dental Medicine in Neumarkt in 1987. In 2005 Dr. Steigmann received his PHD Summa cum laude from university of Neumarkt.
He is a Diplomate of the ICOI and a member of the board of the DGOI. He has also received the medal of "Semmelweiss" Budapest University dental school dept. of oral and maxillofacial surgery. He is the founder and Scientific chairman of "Update Implantologie Heidelberg" 2002-2011 and the founder and director of the "Steigmann Institute".

•	Adjunct Clinical Associate Professor University of Michigan Dpt. of Periodontics
•	Adjunct Assistant Professor of oral and maxillofacial surgery Boston University
•	Adjunct Assistant Professor University of Pennsylvania Dpt. of Endodontics
•	Honorary Professor of the “Carol Davila “university Bucharest, Invited Senior Guest
•	Visiting Professor university of Szeged faculty of dentistry
•	Visiting professor department of Implantology in Temeschburg
•	Dr. Steigmann lectures and publishes extensively
•	Member of several associations (such as DGOI, FIZ,BDIZ and ICOI)
•	He is a Diplomate of the ICOI and other European societies
•	Member of the board of the DGOI.
•	Dr. Steigmann also received the medal of “Semmelweiss“ Budapest University dental school, dept. of oral and maxillofacial surgery.
•	Dr. Steigmann received his PhD from university of Neumarkt 2005.
•	Founder and Scientific chairman of “Update Implantology Heidelberg” 2002-2012.
•	Dr. Steigmann served as ICOI Vice President of Germany 2005-2011.
•	Founder and director of the “Steigmann Institute”.
Dr. Steigmann maintains a private practice in Neckargemünd, Germany.', '38', 'Germany');




/*======================================================================================================*/
/* 39 - Paulo Monteiro */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('39', 'The Keys to Success in Contemporary Aesthetic Oral Rehabilitation', 'While adhesive technologies are moving towards simplification, their indications have been significantly broadened.
Sometimes we have some doubts about the ideal treatment for a particular case: should we opt for a direct or indirect rehabilitation? This decision is multifactorial, as is the choice of material to be used in rehabilitation.
In indirect rehabilitation, we can use different materials, depending on the case selection, patient, function and aesthetic requirements. In this field the CAD / CAM technology and materials available for adhesive rehabilitation was developed in the last years. Used and treated properly they allow us to conserve much of the remaining dental tissue, avoiding more destructive procedures for dental structure.
On the other hand, in an indirect rehabilitation, the communication between the clinician, the patient and the ceramist is fundamental, in order to optimize the expectations and the final result. For this it is fundamental to follow a work protocol that goes through different stages, such as: planning, wax-up, mock-up, guided dental preparation, communication with the laboratory, impressions, temporary restorations, adhesion of restorations and maintenance of restorations.
In this two speakers side conference we intend to show and discuss the necessary clinical and laboratory workflow, being the key to success in contemporary oral adhesive rehabilitation.', '1', '39');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('39', '1', '39');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('39', '39', '39');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('39', 'Dr. Paulo Monteiro', 'Monteiro', 'monteiro.jpg', '', '39', 'Italy');



/*======================================================================================================*/
/* 40 - Pedro Brito */
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('40', '1', '40');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('40', '39', '40');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('40', 'Prof. Dr. Pedro Brito', 'Brito', 'brito.jpg', 'Degree in Dental Prosthesis, ESSEM - Egas Moniz

He is  Professor of the 3rd Post-Graduation in Aesthetic Dentistry, at ISCSEM - Egas Moniz. 
He had published an  article in the CDA journal, vol 40, nº6 June 2012 "The
importance of the optical properties in dental silica-based ceramics "with
Paulo Monteiro DMD, MSC, Joana Pereira MSC and Ricardo Alves DMD, MSC. 
He is  Professor of the 1st Post-Graduation in Advanced Biomimetic Dentistry, in
ISCSEM - Egas Moniz, Lecturer of the 2nd Journey of dental prosthesis, ISCSEM - Egas Moniz, Speaker of the 7th SPED Congress with the theme "innovation in
Biomimetics “, Lecturer at the Congress of Dental Prosthesis Technicians, with the theme "The Other Side of Smile “. 
Mr. Brito is Professor of the Post-Graduation in Minimally Invasive Adhesive Dentistry,
DAMI at the Higher Institute of Health Sciences Egas Moniz since 2016. 
He publiched  an article in QDT 2017, The Biodigital Alveolar Model: An
Alternative for a Predictable Esthetic Outcome with Ultrathin Porcelain
Veneers, with Paulo Monteiro, DDS, MSc, João Rua, DDS, Silas Duarte Jr,
DDS, MS, PhD, José João Mendes DDS, PhD in 2016
Mr. Brito is the Director of the Laboratory BioMimetik lab PEDRO BRITO', '40', '?');




/*======================================================================================================*/
/* 41 - Philipe Sleiman */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('41', 'Unlocking the root canal system, and pain management in Endodontics.', 'In the partial vacuum of scientific consensus and clinical guidelines as to optimal irrigation, we could use the partial vacuum of negative pressure irrigation systems to achieve multiple beneficial goals to enhance root canal cleaning: - increase overall volume of irrigant(s);
- enhance replacement of solution in the canal space;
- deliver irrigant(s) into the apical third with no vapor lock;
- clean the apical third safely with zero irrigant extrusion beyond apex.
-the use of cryotherapy to minimize post operative pain.
Combining the partial vacuum created by the appropriate equipment with the proper, evidence-based irrigation sequence can make root canal therapy more efficient, predictable, successful, safe as well as speedy.', '1', '41');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('41', '1', '41');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('41', '41', '41');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('41', 'Prof. Philippe Sleiman', 'Sleiman', 'sleiman.jpg', 'Prof. Philippe Sleiman is a practicing clinician, internationally renowned speaker, and university professor; author of multiple articles in JOE, Roots, and Dental Tribune, inventor of dental instruments,he has publish a book on ultrasonic, and an avid traveler. He works in his private practice in his native Beirut and is Chief Endodontist in three clinics in Dubai and Abu Dhabi. He holds DDS, MSc, and DSc degrees and is Adjunct Assistant Professor of the University of North Carolina (USA) and Associate Professor of his home Lebanese University (Lebanon).', '41', '?');




/*======================================================================================================*/
/* 42 - Pio Bertani */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('42', 'Relationships between root canal treatment and final restoration: esthetic connections.', 'Contemporary endodontic concepts and techniques, along with modern diagnostic tools, allow the clinicians to perform more predictable endodontic treatments. Adhesive techniques, connected with 3D diagnosis, new access cavity design, rotary/reciprocating NiTi instruments, and much more, can lead towards new treatment protocols, focused at the preservation of healthy tooth tissue. Preservation of sound dentin can be the key for the functional and aesthetic restoration of endodontically treated teeth, maintaining predictability, respect of periodontal tissues, and improved prognosis with less aggressive techniques.

Today with the new tools available, with the possibilities offered by new materials and especially with improved adhesive techniques, there is a common goal that binds Endodontics, Reconstruction and the prosthesis: the saving of healthy tooth tissue.
Endodontics instruments rotary nickel-titanium allow you to program the removal of root canal dentin, which thanks to the evolution of adhesive systems can be almost fully preserved even during reconstruction.
In this regard, the functional and aesthetic restoration of endodontically treated teeth, now you can do it, while maintaining adequate reliability, even with less aggressive and more respectful of dentin and periodontal.', '1', '42');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('42', '1', '42');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('42', '42', '42');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('42', 'Dr. Pio Bertani', 'Bertani', 'bertani.jpg', '', '42', '?');



/*======================================================================================================*/
/* 43 - Sergiu Muresan */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('43', 'ANTERIOR DIRECT RESTORATIONS-SHAPE VS COLOR', 'The traumatic fracture of anterior teeth represents a quite common pathology in our daily practice. In some situations, it is contraindicated to use indirect restorations (in the cases of very young patients, class III restorations, ultraconservative restorations, emergency and low cost treatments). However, it is necessary to be able to restore these teeth in a direct, esthetic, functional and predictable way. We will have to focus on the restoration of the color as well as on the restoration of the morphology.
	Over time, recreating the unique characteristics of natural teeth using composite resins used to be very difficult and confusing. The complexity of the composite systems led to an overwhelming and time consuming technique.  The multitude of composite masses produced lots of confusion, too. The question is: what can we do to be more predictable, to get the esthetic integration of our composite restorations? What parameter is the most important to achieve success: the color or the shape? Do we need to invest time in a complex layering technique or in a very good protocol of defining morphology?
	In this lecture we will discuss about what we can do to obtain maximum result with minimum effort and we will decide the winner of the “battle” between THE SHAPE and THE COLOR.', '1', '43');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('43', '1', '43');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('43', '43', '43');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('43', 'Dr. Sergiu Muresan', 'Muresan', 'muresan.jpg', 'Dr. Sergiu Muresan  graduated  the Faculty of Dental Medicine of “ Iuliu Hatieganu” Univesity of Medicine and Pharmacy Cluj Napoca, in 2005.  He has practiced his profession in his own dental office since 2007, as well as in cooperation with some clinics from Cluj Napoca and Turda. He is qualified in dental radiological diagnosis, his private practice focusing on esthetic dentistry and especially on direct restorations (anterior and posterior). He has been an opinion leader for GC Romania since 2014. He holds several conferences on the theme of direct restorations, in the private system as well as under aegis of societies like the Society of Esthetic Dentistry in Romania (SSER) or the Association of the Dentists with Private Practice in Romania. Dr. Muresan has published articles concerning the clinical aspect of his work in dental journals from Romania.', '43', 'Romania');




/*======================================================================================================*/
/* 44 - Serhat Koken */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('44', 'Create Your Own Composite Masterpieces', 'The rapid innovation of composite material in the last decade and the availability of various types of composites has given today’s clinician an extremely convenient and cost effective tool for their practice. Direct composites provide the clinician with the ability to provide excellent aesthetic results with minimal tooth destruction in a very ef<icient manner. In this lecture, you will be shown how to achieve excellent aesthetic standards in your everyday dentistry using direct chairside composites. The course will cover clinical aspects of the anterior composite from choosing the correct shades to preparation tips, layering composites, and tricks on <inishing and polishing. Handling composites correctly can provide excellent aesthetic outcomes, which will be shown using case examples in this lecture. 
Using the palatal shell created from a silicone index and layering dentin shade on this palatal shell is a worldwide known technique. However, many clinicians are facing some dif<iculties. You will be shown how to layer with maximum 2 or 3 shades to have life looking restorations. Further, the focus will be on <inishing and polishing procedures to have both texture and lustre on created super<icial enamel which may compete with ceramic restoration.', '1', '44');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('44', '1', '44');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('44', '44', '44');

INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('45', 'Create Your Own Composite Masterpieces', 'The rapid innovation of composite material in the last decade and the availability of various types of composites has given today’s clinician an extremely convenient and cost effective tool for their practice. Direct composites provide the clinician with the ability to provide excellent aesthetic results with minimal tooth destruction in a very efficient manner. In this hands- on course, you will be shown how to achieve excellent aesthetic standards in your everyday dentistry using direct chairside composites. The course will cover clinical aspects of the anterior composite from choosing the correct shades to preparation tips, layering composites, and tricks on finishing and polishing. Handling composites correctly can provide excellent aesthetic outcomes, which will be shown using case examples in this hands-on course.
Using the palatal shell created from a silicone index and layering dentin shade on this palatal shell is a worldwide known technique. However, many clinicians are facing some difficulties. You will be shown how to layer with maximum 2 or 3 shades to have life looking restorations. Further, the focus will be on finishing and polishing procedures to have both texture and lustre on the created superficial enamel which may compete with ceramic restorations.', '2', '45');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('45', '2', '44');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('45', '45', '44');

INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('44', 'Dr. Serhat Köken', 'Koken', 'koken.jpg', 'Dr. Serhat Köken graduated from Marmara School of Dentistry (Istanbul) in 1998. Since 2001, he has practised general dentistry at his private clinic in Istanbul. Over the years, Dr. Serhat Köken has presented at national and international meetings on both the technical and artistic aspects of anterior direct resin restorations as well as hands-on courses on composite resin artistry and dental photography. Dr. Serhat Köken is a board member of the Turkish Academy of Esthetic Dentistry (EDAD) and a Ph.D. student in Dental Biomaterials at Siena University.', '44', 'Turkey');




/*======================================================================================================*/
/* 46 - Shiraz Khan */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('46', 'Anterior Adhesive Aesthetics.', 'Modern day techniques in adhesive dentistry have provided anterior teeth with many options when considering restoration.
This lecture aims to discuss adhesive techniques that can be employed to restore anterior teeth. These are discussed in order of minimal intervention,  starting from resin infiltration, through to the latest long-term bisacryl provisional restoration.
-discuss the relevance of adhesive dentistry in modern practice.
-minimal intervention with resin infiltration.
-anterior composite restorative techniques.
-convention anterior crown and veneer restorations
-discussion of novel longer-term provisional restorations.', '1', '46');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('46', '1', '46');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('46', '46', '46');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('46', 'Dr. Shiraz Khan', 'Khan', 'khan.jpg', 'Dr. Shiraz Khan graduated from the University of Birmingham Dental School in 2013. Having successfully completed foundation training and winning several prizes, he finished his dental core training in a range of specialisms including Restorative Dentistry at Croydon University Hospital, Guys and St Thomas’s. He is currently placed in private practice in the heart of London, Clapham and suburban Hemel Hempstead. Shiraz has heightened his profile at this albeit early stage, being invited to lecture to young dentists around the country, as well as having lectured internationally. Most recently he has returned from Tehran, Iran lecturing at the EXCIDA 57th international congress regarding aesthetic dentistry. Progressing in his career in additional post-graduate qualifications and building a portfolio of achievements means that Shiraz is nothing short of an aspirational individual. He invests time into his career development and experience as he has in the process of completing his Masters in Restorative Dentistry. In addition he has travelled to Portofino, Italy to learn off the World’s leading clinicians in Style Italiano. He regularly sharing with like-minded professionals. Recently his hard work and efforts were recognised by the Young Dentist Academy who appointed Shiraz to become The Director. Shiraz has won several awards in the UK including The Fast Track 4 Award in recognition of his commitment to dentistry and becoming a leader of the future. Most recently Shiraz has been voted the Best Young Dentist South 2017 in the prestigious UK Dentistry Awards. This has confirmed, his drive, aspiration and dedication to dentistry in which he always pursues to develop in.', '46', 'India');



/*======================================================================================================*/
/* 47 - Silvana Canjau */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('47', '“SUBJECTIVE” ESTHETIC INTEGRATION', 'Extremely useful special effects and ceramic materials have been described during the past years to solve difficult esthetic problems, demonstrating that “objective” harmony of the smile can be created by taking into account all the fundamental objective criteria related to soft and hard tissues and an adequate choice of restorative material. 
	However, global harmony of the final result remains subjective and will depend on these parameters in relation to the patient’s smile, face shape, age, and character. It is often difficult to define with precision which components are the key elements of total esthetic integration, which can be defined as the conformity with the individual’s personality. Therefore, a combined technical and artistic effort is necessary and depends on intuition and sensitivity of the operator, but also on the capacity to accurately perceive the unique and dynamic character of the patient. 
The conference aim is to debate the topic of esthetic integration based on literature review and personal clinical experience. The presentation will mainly address cases of individuals with poor pre-existing dental work, who are the most challenging to address because they have lost their own perception of esthetics. They must be “reprogrammed” with different diagnostic templates that will allow the progressive recovery of esthetic landmarks. In this way, clinicians and laboratory technicians should not be afraid to address the subjective components of the smile, knowing that the final treatment objective will always result from a combination of knowledge and application of the objective criteria, time, and patient’s input.', '1', '47');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('47', '1', '47');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('47', '47', '47');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('47', 'Dr. Silvana Cânjău', 'Canjau', 'canjau.jpg', 'Dr. Silvana Cânjău has graduated from the Faculty of Dentistry, University of Medicine and Pharmacy “Victor Babeș” Timișoara (UMFT) in 2010. Until 2017 she has continued and developed her professional activity in the clinical teaching program as an Assistant Professor at the Department of Oral Rehabilitation and Dental Emergencies – UMFT. She is a specialist in prosthetic dentistry, having also a PhD degree in minimal invasive diagnosis area. She has been and continues to be member in interdisciplinary fundamental research programs. The private practice is focused on complex aesthetic and functional rehabilitations on teeth and implants, using both traditional prosthetic methods and also innovative ones, focusing mostly on minimally invasive procedures (non-prep veneers, prep veneers, inlays, onlays, partial crowns, hybrid abutments).
	Dr. Silvana Cânjău is co-author for 3 books, and 20 published articles from which 3 are in ISI journals and 1 PubMed indexed review, having also research activity in the PARTNERSHIP Grant PN-II-PT-PCCA-2011-3.2-1682. During her professional development she was a member of research groups in the field of CAD/CAM technologies and Optical Coherence Tomography (OCT). She is a lecturer accredited by the Dentists National College Romania. She has over 50 national and international communications in the field of prosthetic dentistry, implant supported restorations and minimal/non-invasive oral diagnosis. She is an opinion leader for 3M and she is currently member of the following professional associations: SSER – Society of Aesthetic Dentistry in Romania, SRLS – Romanian Society of Lasers in Dentistry, OSA – The Optical Society and HNODS – Head and Neck Optical Diagnosis Society.', '47', 'Romania');




/*======================================================================================================*/
/* 48 - Simon Pardinas Lopez */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('48', 'Which Is The Best Graft For Bone Augmentation? Is The Use Of Growth Factors Effective? An Evidence Based Approach.', 'The long-term predictability of dental implants is directly associated with the quality and quantity of the available bone for implant placement. When the alveolar ridges lack appropriate volume, reconstructive surgery is needed. Several surgical techniques and bone grafting materials are available for that purpose. The surgeon needs a critical evaluation of these techniques and biomaterials to be able to select the most appropriate procedure and graft type. There is an increase in the demand for reconstructive surgery and thus bone substitutes, principally due to changes in the lifestyles with expectation of a good life quality, and the wide acceptance of minimally invasive surgery. Considerable controversy still exists regarding the choice of the most reliable technique and materials. Data from scientific literature should be analyzed with care, as many papers do not have enough long-term basis and have methodological biases. Decision making in evidence-based implant dentistry involves diagnostic and therapeutic uncertainties, clinicians'' heuristics and biases, patients'' preferences and values, as well as cost considerations. In this lecture, meta-analyses, systematic reviews, and clinical trials are the main source of data obtained to compare different therapeutic alternatives and materials. This evidence-based approach, combined with the clinical experience, assures clinicians that their therapeutic decisions are supported by solid research. The aim of this presentation is to evaluate different grafting materials in order to help clinicians to make decisions based on the available scientific evidence literature and patient´s clinical characteristics, maximizing their success and minimizing morbidity. The Presenter will show the outcomes of his latest original research and clinical results. He will focus on the different grafting materials available for bone augmentation, including alveolar ridge augmentation, guided bone regeneration, sinus floor augmentation and extraction socket preservation. The benefits and effects of using autologous growth factors will be analyzed showing clinical results, including a novel protocol using Plasma Rich in Growth Factors for treating osteonecrosis due to bisphosphonates.', '1', '48');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('48', '1', '48');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('48', '48', '48');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('48', 'Dr. Simón Pardiñas López', 'Lopez', 'lopez.jpg', 'Dr. Simón Pardiñas López graduated in Dentistry in Madrid (Spain). In 2010 he enrolled the Advanced Program for International Dentists in Oral Surgery at the New York University. He became Expert in Periodontics by Universidad Complutense (Madrid) in 2011. In 2012 he completed the Masters in Implantology and Oral Rehabilitation by the European School of Oral Rehabilitation, Implantology and Biomaterials, receiving the Best of the Promotion award. He then completed the Advanced Program for International Dentists in Periodontics at New York University in 2013 and became a Fellow of the ICOI (International Congress of Oral Implantologists). In the year 2014 he obtained the Diplôme Universitaire d’Implantologie Orale et Maxilofaciale at the Toulouse University. Dr. Pardiñas López is co-author of the book titled “Evidence-based Implant Dentistry” (Springer), has published in high-impact scientific journals and lectures at national and international congresses.
He is member of the Academy of Oseointegration Young Clinicians Committee and Opinion Leader at Biotechnology Institute.
He currently works at private practice in A Coruña (Spain), and he is the director and research leader of Fundación Clínica Pardiñas, a non-profit organization that provides treatments at no cost to the most disadvantaged sectors of society.', '48', 'Spain');



/*======================================================================================================*/
/* 49 - Smaranda Buduru */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('49', 'Analog or digital: the crossroad
Need or hipsterism?', 'The digital era in dentistry has come! This can not be considered as the future anymore. The dentist’s questions about this new and exciting field of interest are especially related  to the benefits provided  by the digital tools.
This benefits should meet both  dentists and patients criteria of excellence.
	The aim of this conference is to present the same case treated completely digital as well as clasical " hand-made ". Each stage was compared and time, precision, effort and aesthetic wise evaluated . 
	What will be the final result of this confrontation?', '1', '49');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('49', '1', '49');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('49', '49', '49');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('49', 'Dr. Smaranda Buduru', 'Buduru', 'buduru.jpg', 'Dr. Smaranda Buduru is lecturer in Dental Occlusion at the Department of Prothodontics,  Faculty of Dentistry, University of Medicine and Pharmacy "Iuliu Hatieganu", Cluj-Napoca.
She graduated UMF "Iuliu Hatieganu", class of 1991. In 1995 she gratuated the residency program in General Dentistry, obtaining the Master of Science Degree. In 2000 she obtained the primary doctor degree in General Dentistry.In 2003 she obtained the PhD title in Prosthodontics.  In 2013 she obtained the Master of Science Degree in Prosthodontics.  
She is a member of the Prothodontic Department since 1997. Over the time she published several studies and articles. She also published the following books: "The clinical examination of patients with temporomandibular disorder", "Clinical notions of occlusion", "Comprehensive esthetic dentistry", "Incursion în esthetic dentistry”.', '49', 'Romania');





/*======================================================================================================*/
/* 50 - Stefen Koubi */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('50', 'New options for designing a smile : from analogic to digital….but guided !!!', 'Everyday dentistry must be simple, esthetic ,and guided to be popular .
In the esthetic zone the pracionner is faced to a lot of challenges according to the initial situation. Whatever is the difficulty of the case , the dentist should think as an architect to plan the case . A full guided protocol will be presented for extreme worn dentition and severe esthetic defect case where implant are needed.
Analogic treatment planning using latest press technologies will highlight the treatment of the severe worn dentition.
A full digital workflow associated with CAD CAM material and technologies
will be presented to fix the implant case .
In both cases all the clinical step are driven by the final design in order to predict precisaly the final outcome .
Every day dentistry become simple , guided , esthetic and more and more digital', '1', '50');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('50', '1', '50');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('50', '50', '50');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('50', 'Dr. Stefen Koubi', 'Koubi', 'koubi.jpg', 'Doctor Koubi was graduated in University of Marseille in 1998.
He has a position of Associate Professor in Restorative department in Marseille 
University since 2008 and received his PHD in 2011. He has been resident for 3 years in Paris University after his graduation. He has a private office in Marseille and a smile consultation in Paris. His main topic concern Esthetic rehabilitation for cosmetic reason or functionnal reason (worn dentition). He is invited in many prestigious esthetic academy to lecture on a simple way to achieve high level esthetic dentistry and he is mainly focus on the teachability of esthetic dentistry. He is a speaker in esthetic post graduated program in many university ( marseille, strasbourg, hochi minh city, hanoi).He received Gold molar title from student of his university (best teacher of the year) in 2012 and title of best french speaker same year. He was awarded in 2014 of silver molar in 2014 ; 
He is since 2012 a member of style italiano group in charge of indirect topic.
He is founder since 2013 of L’institut de la facette a private training center focus on smile design for worn dentition and cosmetic  rehabilitation.
He is author of many scientific article and case report on esthetic dentistry.', '50', 'France');




/*======================================================================================================*/
/* 51 - Yuriy Vasiliev */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('51', 'Dental Anesthesia in the Presence of Inflammation: how to prevent pain and be effective', 'In the lecture, we will consider the physiology of the maxillofacial area in inflammation and the role of the pH of a local anesthetic in achieving effective analgesia. Also, we discuss the advisability of prescribing non-steroidal anti-inflammatory drugs ( NSAIDs) in preparation for the treatment of "hot" teeth', '1', '51');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('51', '1', '51');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('51', '51', '51');

INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('52', 'Personalized techniques of local anesthesia: block LA, periodontal LA and author''s modifications', '', '1', '52');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('52', '2', '51');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('52', '52', '51');

INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('51', 'Dr. PhD Yuriy Vasiliev', 'Yuriy', 'yuriy.jpg', 'I was graduated from the Moscow State Medical Dental University or MGMSU (Moscow) in 2007 with a degree in Dentistry.
In 2007 i was enrolled in clinical residency at the Department of General dentistry and dental anesthesiology(head of the department, past-president EFAAD, prof. S. Rabinovich) at the same university, which he graduated in 2009.
In 2009, he entered the full-time postgraduate course in the specialties "Dentistry" and "Human Anatomy", which he completed by defending his thesis for the PhD in 2012 on the theme "Clinical and anatomical justification for the use of modified local anesthesia of the intraosseous part of the chin nerve in dental practice"
In the period from 2008 to 2015 i worked as a general dentist and since 2008 started to work at the university MGMSU.
2008 - 2010 the assistant, then the senior assistant of the department of dentistry of general dentistry and dental anesthesiology MGMSU
2010 - 2013 the teacher of the human anatomy department of MGMSU
2013 - 2015 Assistant professor of the Department of dentistry, Private Moscow Medical University "REAVIZ".
2015 - 2017 Assistant professor of the Department of operative dentistry in Sechenov university (Moscow)
From September 2015 to the present. associate professor of the department of the operative dentistry in Peoples friendship university (Moscow)
Since 2015, I work as a scientific consultant for the GEOTAR (Moscow) project office in the development department of hybrid dental simulators with feedback
Scope of scientific and practical interests: features of blood and nervous supply of the organs of the maxillofacial area in the aspect of an individual approach in local anesthesia, as well as features of prevention, diagnosis and treatment of inflammatory diseases of periodontal tissues with the help of photodynamic therapy.
Author and co-author of more than 69 scientific articles, incl. 4 patents, 6 monographs and 2 manual.
Active speaker at the FDI, EFAAD and IFDAS conferences.', '51', 'Russia');
/*======================================================================================================*/




/*======================================================================================================*/
/*SCHEDULE==============================================================================================*/
DELETE FROM ScheduleAbstractMap;
DELETE FROM Schedule;

/* 1 - Prof Dr. Marius Steigmann */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('1', '1', '38');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('1', '09:00', '10:30', '1', '1', 'Treatment Options for the aesthetic zone', '1');

/* 2 - Dr. Arnaldo Castellucci */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('2', '2', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('2', '09:00', '10:00', '2', '1', 'How to repair perforations', '2');

/* 3 - Live transmission Hall Constanta */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('3', '3', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('3', '09:00', '11:00', '3', '1', 'Live Transmission Hall Constanta', '3');

/* 4 - Live transmission Hall Constanta */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('4', '4', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('4', '09:00', '11:00', '4', '1', 'Live Demo Dr. Bogdan Niculescu & Dr. Alex Karkhi', '4');

/* 5 - HO Cleopatra Nacopoulos */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('5', '5', '14');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('5', '09:00', '11:00', '5', '1', 'HO Cleopatra Nacopoulos', '5');

/* 6 - Dr. Cosmin Dima */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('6', '6', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('6', '09:00', '11:00', '6', '1', 'Dr. Cosmin Dima - More inventive, less invasive surgery - Aplications for piezotome.', '6');

/* 7 - Dr. F Bobia & Dr/DT B. Mihalcea */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('7', '7', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('7', '09:00', '11:00', '7', '1', 'Dr. F. Bobia & Dr/DT B. Mihalcea - Abordarea protetica fara margini - garantia esteticii ros prin stabilizarea tesuturilor moi', '7');

/* 8 - HO Geistligh Session 1 */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('8', '8', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId) VALUES ('8', '09:00', '11:00', '8', '1', 'HO Geistligh Session 1', '8');
