/*======================================================================================================*/
/*SECTIONS==============================================================================================*/
DELETE FROM Sections;

/* Day 1 - 20 sept */
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('1', '2018-09-20T14:00', '2018-09-20T16:30', '1');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('2', '2018-09-20T16:30', '2018-09-20T19:00', '1');

/* Day 2 - 21 sept */
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('5', '2018-09-21T09:00', '2018-09-21T11:30', '2');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('6', '2018-09-21T11:30', '2018-09-21T14:00', '2');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('7', '2018-09-21T14:00', '2018-09-21T16:30', '2');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('8', '2018-09-21T16:30', '2018-09-21T19:00', '2');

/* Day 3 - 22 sept */
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('9', '2018-09-22T09:00', '2018-09-22T11:30', '3');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('10', '2018-09-22T11:30', '2018-09-22T14:00', '3');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('11', '2018-09-22T14:00', '2018-09-22T16:30', '3');
INSERT INTO Sections (objectId, beginTime, endTime, type) VALUES ('12', '2018-09-22T16:30', '2018-09-22T19:00', '3');
/*======================================================================================================*/


/*======================================================================================================*/
/*SCHEDULESTYPES=============================================================================================*/
DELETE FROM ScheduleTypes;

INSERT INTO ScheduleTypes (objectId, name) VALUES ('1', 'Thursday, 20 September');
INSERT INTO ScheduleTypes (objectId, name) VALUES ('2', 'Friday, 21 September');
INSERT INTO ScheduleTypes (objectId, name) VALUES ('3', 'Saturday, 22 September');
/*======================================================================================================*/


/*======================================================================================================*/
/*LOCATIONS=============================================================================================*/
DELETE FROM Locations;

INSERT INTO Locations (objectId, name) VALUES ('1', 'Auditorium I Conferences');
INSERT INTO Locations (objectId, name) VALUES ('2', 'Auditorium II Conferences');
INSERT INTO Locations (objectId, name) VALUES ('3', 'Hall 2 Hands-on Session');
INSERT INTO Locations (objectId, name) VALUES ('4', 'Hall 3 Hands-on Session');
INSERT INTO Locations (objectId, name) VALUES ('5', 'Hall 6 Hands-on Session');
/*======================================================================================================*/



/*======================================================================================================*/
/*SPEAKERTYPES==========================================================================================*/
DELETE FROM SpeakerTypes;

INSERT INTO SpeakerTypes (objectId, name) VALUES ('1', 'Lecture');
INSERT INTO SpeakerTypes (objectId, name) VALUES ('2', 'Hands-On');
INSERT INTO SpeakerTypes (objectId, name) VALUES ('3', 'Member Pearls');
/*======================================================================================================*/


/*======================================================================================================*/
/*SPEAKERTYPES==========================================================================================*/
DELETE FROM AbstractsTypes;

INSERT INTO AbstractsTypes (objectId, name) VALUES ('1', 'Lecture');
INSERT INTO AbstractsTypes (objectId, name) VALUES ('2', 'Hands-On');
INSERT INTO AbstractsTypes (objectId, name) VALUES ('3', 'Member Pearls');
/*======================================================================================================*/


/*======================================================================================================*/
/*SCHEDULESTYPES=============================================================================================*/
DELETE FROM ScheduleContentTypes;

INSERT INTO ScheduleContentTypes (objectId, name, color) VALUES ('1', 'Lecture', '#11862f');
INSERT INTO ScheduleContentTypes (objectId, name, color) VALUES ('2', 'Hands-On', '#0079c1');
INSERT INTO ScheduleContentTypes (objectId, name, color) VALUES ('3', 'Member Pearls', '#56a0d3');
INSERT INTO ScheduleContentTypes (objectId, name, color) VALUES ('4', 'Entertainment', '#6a737b');
/*======================================================================================================*/




/*======================================================================================================*/
/*======================================================================================================*/

DELETE FROM Speakers;
DELETE FROM SpeakerTypeMap;
DELETE FROM AbstractsSpeakersMap;
DELETE FROM Abstracts;



/* 0. Dr. Giuseppe Chiodera */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('0', 'Direct posterior restorations : from diagnosis to Essential Lines', '', '1', '0');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('0', '1', '0');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('0', '0', '0');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('1', 'Essential lines developed bu style Italiano, modern approaches for creating aesthetic posterior restorations using 3M Bulk fill materials ', '
', '2', '0');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('1', '2', '0');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('1', '1', '0');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('0', 'Dr. Giuseppe Chiodera', 'Dr. Giuseppe Chiodera', 'chioderra.jpg', 'Graduated in Dentistry at the University of Brescia in 2004. In the same year
Winner Of a scholarship at Kings College University of London.
Author and coauthor of articles in National and International journals . Style Italiano member .
Speaker at National and international Conferences : about diagnosis , prevention , adhesive restorations ,bleaching , ozone , laser.
Private practice from 2004 dedicated primarily: conservative dentistry , adhesive aesthetic restorations , active care and endodontics and new technologies .', '1', 'Italy');


/* 1. Dr. Juan Arias */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('2', 'Aesthtics procedures in compromise implant situations: The aesthetic zone.', 'Implantology, is one of the most demanded treatments in our dental offices, it is no longer enough to have function, but there is also a great demand for esthetics. The cases in wich esthetics is the most important part of the treatment, are the real challenge for the clinican. When an implant is placed in the aesthetic zone, we need to be absolutelly sure that the hole periodontium is also reconstructed, hard and soft tissues play a fundamental role in the final result of the esthetics procedures.', '1', '1');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('2', '1', '1');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('2', '2', '1');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('1', 'Dr. Juan Arias', 'Dr. Juan Arias', 'Arias.jpg', 'Juan Arias.
- Degree in Dentistry from the University of Madrid 2001.
- Director of the Periodontal Advanced postgraduate program from the European
University of Madrid
- Director of Periodontics ( basics and advanced), from the European University of Madrid
(2010-2012).
- Numerous articles published in national and international journals.
- Courses, lectures and scientific lectures on Periodontics, Implantology and Aesthetics
Multidisciplinary treatments.
- Private practice in Madrid (Spain) limited to periodontics, esthetics and implant dentistry.
', '1', 'Spain');


/* 2. Prof. Dr. Nitzan Bichacho &  Dr. Mirela Feraru */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('3', 'Managing the perio-restorative interface of different abutment types in the smile zone  Concepts and strategies.', 'In order to achieve a harmonious esthetic result of an indirect restoration at the smile zone - the operators should not only choose the material of the restoration, but also analyze and relate to the abutment type and color, and to the integration of the whole restorative complex with the surrounding tissue, whether of a natural tooth (vital or non-vital), or an implant. 
In cases where different types of abutments should be restored at the same arch, the treatment is even more challenging. One should plan ahead the different phases of the perio-restorative treatment in order to end up with a harmonious natural looking result, by choosing the most suitable materials for each site, so that the combined abutment-crown complexes will blend with each other, as well as with the adjacent dentition and with the vital periodontium, in esthetic and healthy conditions.   State of the art strategies will be presented where different abutment types of teeth and implants are to be restored, utilizing diverse laboratory and clinical restorative techniques, utilizing different tissue management techniques. The concepts of Model Based Restoration and Cervical Contouring will be presented and analyzed in a variety of esthetically challenged clinical cases.', '1', '2');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('3', '1', '2');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('3', '3', '2');

INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('4', '1', '2');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('4', '3', '2');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('2', 'Prof. Dr. Nitzan Bichacho ', 'Prof. Dr. Nitzan Bichacho ', '0.jpg', 'Prof. Nitzan Bichacho
Nitzan Bichacho, D.M.D. holds the post of expert in prosthodontics at the rank of professor, at the Faculty of Dental Medicine, Hebrew University, Jerusalem, Israel.
He is Past President and a Life Member of the European Academy of Esthetic Dentistry (EAED). He also serves at the editorial boards of leading international dental journals.He is a co-inventor of the Nobel Active Implant System, the V3 implant system (MIS/Dentsply) and other techniques and systems that have become widely used around the world.
Prof. Bichacho has been publishing and lecturing extensively worldwide in the fields of dental implant therapy, fixed prosthodontics, interdisciplinary treatments and innovative treatment modalities in esthetic dentistry.
His private practice in Tel Aviv focuses on interdisciplinary treatments, where he collaborates with multinational master dental technicians.
  

', '1', 'Israel');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('3', '  Dr. Mirela Feraru', '  Dr. Mirela Feraru', '1.jpg', 'Dr. Mirela Feraru
Dr. Mirela Feraru graduated in 2005 from the Dental Faculty of the Timisoara University, Romania. 
In 2009 she joined the Bichacho Clinic team in Tel Aviv, Israel and for the last 8 years Dr. Feraru has gained in-depth knowledge and experience in all fields of Perio-Prosthetic Aesthetic Dentistry, focusing on Restorative and Perioplastic surgery treatments. 
She continues studying and participating in advanced programs and courses in the various fields of modern Perio-Prosthetics.
In addition Dr. Feraru has acquired extensive experience in high quality dental photographic documentation and has been sharing it with colleagues world-wide through articles, lectures and workshops. 
Dr. Feraru has been publishing and lecturing internationally on Restorative Adhesive Treatments, Interdisciplinary state of the art Perio-Prosthetic Concepts and Treatments and on High-end Treatment-Dedicated Dental Visualization, on which she also authored the book to be published by Quintessence Publishing.  ', '1', 'Israel');


/* 3. Dt. Sascha Hein */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('4', 'eLAB -  A new dawn in shade matching! ', 'Consistent shade matching of indirect restorations with natural dentition remains to be a formidable challenge, even for the most experienced of experts. Numerous factors which take adverse effect on the clinical outcome have long been identified. They include operator dependency (subjective shade selection and evaluation), insufficient shade guide coverage of the range of natural tooth shades as well as considerable inconsistencies among manufacturers shading regimes. The eLABor_aid System was developed to combat these limitations by enabling objective shade communication using cross polarized dental photography in conjunction with a new and innovative digital work flow that will allow the dental ceramist to formulate an individual shade recipe and to measure its accuracy with the help of a digital try-in of the build-up prior to firing. Learn about the future of shade management: capture, calibrate & create!  Key Learning Goals:1. Traditional shade communication using visual assessment, what are the pros and cons? 
2. Understanding metamerism and its origins.
3. Using a digital single lens camera (DSLR) for objective shade quantification and communication without the use of shade guides. 
4. Practical realisation of layered, indirect restorations and clinical examples. ', '1', '4');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('5', '1', '4');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('5', '4', '4');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('4', 'Dt. Sascha Hein', 'Dt. Sascha Hein', 'Hein.jpg', '
Sascha Hein
Sascha Hein commenced his training in dental technology of Germany where he graduated in 1997. He then subsequently worked in a number of dental laboratories in Europe and the United Arab Emirates. In 2001 he completed further studies in dental ceramics under Masahiro Kuwata in Tokyo, Japan. In 2004/05 he attended Master School in Freiburg, Germany where he graduated top of school and won silver in the annual Kanter Award Competition which premiers Germanys top three Master School students. In 2007 Sascha Hein was inducted into the international Oral Design group by founder Willi Geller. Since 2011 he serves as editorial board member of the German Quintessence of Dental Technology. In 2012 he was inducted into the Bio-Emulation group, under which he conducted independent research, which lead to the development of the visual_eyes liquid and the fluor_eyes flash system for fluorescent dental photography. He lectures internationally and has authored numerous publications, including the 2009 and 2011 QDT Yearbook. After spending twelve years in Perth Western Australia, Sascha Hein returned to Freiburg, Germany where he now lives and works. ', '1', 'Germany');


/* 4. Dt. Giussepe Romeo */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('5', 'Technical Diagnostic and Esthetical Approach', 'Great improvements have been made in the field of esthetic rastoration in the last few years.
This evolution derives not only from esthetic requirements of the patient, but also from a good relationship beetwen the dentist and the technician. 
The clinician should know technical steps to make the process easier the imagination of the technician and the laboratory should know the clinical operative steps with the possible difficulties in the mouth, so that the technician can develops more techniques to help the dentist in his work. 
In this way it is possible to plan the case that will also give to the patient the possibility to perceive and understand clearly the treatment proposed. 
Technically the numerous possibilities for anatomical tooth reproduction will be examinated.
A new system that will be enables dental professionals to go beyond the usual creative standards in esthetical rehabilitation: the principal tooth forms and their characteristics will be analysed and the discussion will lay groundwork for the introduction of a new tooth-form classification called Dental Anatomical Combination.
Comparing to the face of the patient several factors will be evaluated  when designing a dental restoration.
The application of this new system and subsequently ceramic layering procedures will be demonstrated via a clinical case report.
All the rehabilitations simple or complex are created with precision using the stereomicroscope to achieve the planned result and increasing the longevity of the restoration.
The objective of this topic is to provide  valuable  information to support the prosthodontic team in the treatment of the various clinical cases.
Detailed analysis of the most significant clinical and technical procedures will be described, beginning with the clinical diagnosis and subsequent diagnostic wax up, then progressing to the correct use of the provisional restorations,which are fundamental in the conditionning and correct developmente of the soft tissues, as well as in the achievment of the functional and esthetical objectives.', '1', '5');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('6', '1', '5');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('6', '5', '5');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('5', 'Dt. Giussepe Romeo', 'Dt. Giussepe Romeo', 'Giuseppe Romeo.jpg', 'Giuseppe Romeo is a Dental Technician with his own practice in Torino, Italy.
Studied two years of University, receiving Master Degree in Dental Technologist Esthetic Prosthodontics. He completed his continuing education in Italy and abroad working in the United States and in Switzerland . Relator in Italy and abroad, he is still doing adjournment courses.
Authored of 40 articles for important italian and worldwide magazines in dentistry as PPAD(Practical Procedures & Aesthetic Dentistry), JERD(Journal of Esthetic and Restorative Dentistry), Dental Dialogue, Realit Cliniques, QDT (Quintessence of Dental Technology), eLABORATE (Australia magazine), QJDT (Quintessence Journal of Dental Technology),
Alta Tecnica Dental (Mexico) and The New Dental Laboratory Technician (Italian magazine), JACD (Journal of Academy Cosmetic Dentistry).
He wrote a book with Doctor Domenico Massironi and mister Romeo Pascetta titled Esthetics and Precision. Clinical and technical procedures., edited by Quintessence.
The book is translated in eight languages. He is coauthor of the book Aesthetic & Restorative Dentistry edited by Quintessence. This manuscript was written with Dr. Douglas Terry and Mr. Willi Geller. Member of Willi Gellers Oral Design group.
Member of ARCO (Italian Lecturer for Dental Technology Culture).
Fellow Member of American Academy Esthetic Dentistry, AAED.
Council Member Design Tecnique International.
Member American Microscope Enhanced Dentistry, AMED.
Clinical Assistant Professor, Division of Restorative Science at USC, University of Southern California, Los Angeles, California , USA.', '1', '');


/* 5. Dr. Jordi Manauta */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('6', 'Styleitaliano Tips and tricks.', 'We have heard many times that highly aesthetic restorations need sophisticated and complex approaches, only reachable to the gifted ones. What if I tell you that this is possible to teach and repeat a feasible method that allows you to achieve perfect restorations with a high rate of success. This approach consents you to do basically three things, rational color matching, exact reproduction of the selected color and the ability to distinguish and learn from eventual mistakes. Material selection, layering technique and morphology management is now-a-days mandatory to mimic the slightest nuances from our patients teeth, but always without getting in difficulties to do so.', '1', '6');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('7', '1', '6');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('7', '6', '6');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('6', 'Dr. Jordi Manauta', 'Dr. Jordi Manauta', 'manauta.jpg', 'Born in Mexico City, Jordi Manauta graduated with a degree in dentistry from the Technological University of Mexico (UNITEC) with major grants. He continued his postgraduate studies in operative and aesthetic dentistry, earning a masters degree from the International University of Catalonia (UIC) in Barcelona, Spain.

He has developed and currently is developing various materials and instruments for aesthetic dentistry and photography in collaboration with international companies. He is visiting lecturer in Seville and Siena universities and scientific consultant for two European journals. Dr. Manauta is member of Styleitaliano group. Scientific consultant of two European journals, and he is author of the book Layers (Quintessence 2012) and Forma (in press) and is author and coauthor of many publications in international journals, Dr Manauta is frequently invited as a lecturer in these topics.', '1', 'Italy');


/* 6. Dr. Miguel Stanley */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('7', 'The Digital Smile Make over', 'What are the true limitations of digital dentistry in a new smile? How far can we push the envelope in terms of speed and predictability without ever forgetting maximum aesthetics? We will show cases, the transition from analog to digital and try to predict what a smile make over will be like in the next 5 years.', '1', '7');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('8', '1', '7');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('8', '7', '7');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('7', 'Dr. Miguel Stanley', 'Dr. Miguel Stanley', 'Stanley.jpg', 'Dr. Miguel Stanley is a dental surgeon with a passion for complex oral rehabilitation, who has a team of highly specialized dentists that focus on everything from basic family dentistry to full mouth complex oral cosmetic rehabilitation. A trained implant surgeon and cosmetic dentist that graduated in 1998, Dr. Stanley has become a recognized opinion leader in the field of both cosmetic dentistry and complex implant surgery.

For the past 15 years he has been lecturing around the world, sharing his passion for this field. In recent years, Dr Stanley has transitioned his practice and his team into the digital era. Today, he has a team entirely dedicated to the complete digital workflow in dentistry. He created the No Half Smiles philosophy and the Slow Dentistry concept. He is passionate about ethics and quality in dentistry. Dr Stanley loves to share his vision with the younger future generations of dentists around the world.

He is licensed to practice in Portugal, UK and Dubai.

Graduated DDS, 1998, Egas Moniz, Costa da Caparica, Portugal

Private practice in Dentistry since 1998 till present day

Implant & Cosmetic dentistry training, CEOSA Branemark center, Madrid 1998-2000

Functional Aesthetics, Hornbrook Group, Chicago, 2005

First Portuguese Dental XP expert since 2009.

Author of the book Saude no caminho da felicidade, Grupo Leya.

Creator & Executive producer, DR Preciso de ajuda, TVI, 2006-2008.

Creator & Executive producer, Dr White, SIC, 2011-2012.

Dental consultant, The Doctors, CBS, Hollywood, USA, 2012-2013.

International speaker, 2002-till present day (over 200 keynote lectures in more than 50 countries).

Author and co-author of innumerous scientific articles.', '1', 'Portugal');


/* 7. Dr. Gianfranco Politano & Dr. Marlenn Peumans */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('8', 'Indirect bonded partial restorations in the posterior region  new concepts ', 'Restoration of large defects in the posterior region with a direct composite restoration is possible, although this is not an easy task for the dentist. The most durable, minimal invasive restoration of posterior teeth with large defects is the indirect bonded partial lithium disilicate glass ceramic restoration (onlay, partial crown). During this lecture, the new concepts of indirect partial bonded restorations in the posterior region will be discussed going from indications - preparation - immediate dentin sealing/dentin margin elevation and cementation.', '1', '8');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('9', '1', '8');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('9', '8', '8');

INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('10', '1', '8');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('10', '8', '8');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('8', 'Dr. Gianfranco Politano ', 'Dr. Gianfranco Politano ', '0.jpg', 'Dr. Marleen Peumans
Was born on November 10, 1964, in Belgium. She obtained her degree in Dentistry in 1987 at the Catholic University of Leuven. Thereafter, she followed a 4-year post-graduate program at the Department of Operative Dentistry. She applied herself especially to the clinical use and the performance of anterior and posterior resin composites, bonded ceramic restorations, fibre-reinforced composite restorations and bleaching. She took part in numerous clinical studies concerning dentine adhesives, posterior composites, and ceramic veneers/inlays/onlays. In 1997 she obtained the degree of Doctor in Medical Sciences. From 2004 she became Professor at the Catholic University of Leuven. She has several national and international publications on her name concerning clinical performance of adhesive restorations and bleaching. 
', '1', 'Italy');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('9', ' Dr. Marlenn Peumans', ' Dr. Marlenn Peumans', '1.jpg', 'Gianfranco was born in 1971 in Crotone, Italy.
He finished dental school at Modena University, in the north of Italy
Founder member of Bio-Emulation group with Dr. P. Bazos and Dr. J.T. Guadix
Active member of S.I.D.O.C. : italian society of conservative dentistry
Active member of warm gutta-percha study club
He was invited lecturer from several universities around the world to speak about his layering technique and his studies about optical behavior of natural dental tissues
He have active collaboration with different Universities for researches about adhesive restorative techniques and biomechanics behavior of the tooth
He have an active collaboration with KUL University, Belgium, with Prof. M.Peumans and Prof. B. Van Meerbeek about different studies on bio-mechanical behavior of the tooth, new shapes of preparations for indirect adhesive restorations and adhesive in- terphases.
He is a reviewer for different journal of adhesive dentistry.
Gianfranco live and work in Rome.
He focused on adhesive restorative dentistry and endodontic.
He is an international lecturer and he published several articles about direct and indi- rect adhesive restorations   

', '1', '');


/* 8. Prof. Dr. Marius Steigmann */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('9', 'Treatment Options for the aesthetic zone ', 'soft tissue management means understanding the anatomy of the soft tissue from the outer to the inner layer 
They are different layers of tissue epithelium , connective tissue Mucosa muscles ,periosteum .
Knowing how to learn with this different layers is important for different treatment options like bone augmentation in thick and thin tissue
Aesthetic maintenance and correction and also for different closure after removal of impacted teeth tumors And resection ', '1', '10');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('11', '1', '10');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('11', '9', '10');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('10', 'Prof. Dr. Marius Steigmann', 'Prof. Dr. Marius Steigmann', 'steigmann.jpg', 'Dr. Steigmann is Adjunct Asistant Professor of oral and maxillofacial surgery Boston University. He is a Honorary Professor of the Carol Davila University of Bucharest, Visiting Professor at University of Szeged  Faculty of Dentistry, Visiting professor at Departament of Implantology in Temeschburg. Dr. Steigmann lectures and publishes extensively. Member of several association such as DGOI, FIZ, BDIZ and ICOI. He is a diplomate of the ICOI and other european societies. Dr. Steigmann also received the medal Semmelweiss Budapest University dental school departament of oral and naxillofacial surgery.', '1', 'Germany');


/* 9. Dr. Eva Berroeta */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('10', 'Erosive patients how to treat them from the beginning to the end', 'Dental erosion is a multidisciplinary etiologic factor that affects 30% of young population, destroying great amount of tooth structure.
Traditional prosthetic techniques are based on healthy tooth estructure removal that are restored by using crowns and fixed partial prosthesis.
Nowadays thanks to predictable enamel and dentin bonding, new materials that can be bonded to such tooth estructures and thanks to digital dentistry, we are able to treat erosive patients in a more conservative, additive and
more predictable way.
Thru this lecture It will be discussed how to treat erosive patients from the diagnosis, treatment planning, sequence and material selection.', '1', '11');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('12', '1', '11');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('12', '10', '11');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('11', 'Dr. Eva Berroeta', 'Dr. Eva Berroeta', 'eva beroetta.jpg', 'Dr. Eva Berroeta has a degree in Dentistry at University of the Basque Country (1992-1997), a Masters Degree in Prosthodontics at Complutense University of
Madrid (1997-1999). Postgraduate course in Advanced Education in Prosthodontics at the University of Southern California (USC) (1999-2003).
Dr. Berroeta is Visitor Professor on the Masters Degree in Periodontics at Complutense
University of Madrid since 2003 and on the Masters Degree in Aesthetic
Dentistry since 2009. Active member of the Spanish Society of Periodontology (SEPA) and the Spanish Society of Prosthodontics (SEPES) and chairman of the annual meeting
of 2016. Practice limited to prosthodontics in Bilbao, Spain since 2003.', '1', '');


/* 10. Dr. Roberto Rossi */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('11', 'Esthetic Crown Lengthening - the role of the periodontist in creating a beautiful smile', 'The request for esthetic is increasing daily in the dental office. Patients showing the so called gummy smile are patient suffering of a condition called altered passive eruption. These patients show usually short teeth and a visible unbalance between the pink and white esthetic.
The presentation will help to learn how to diagnose, plan and treat this condition and all its different features.
', '1', '12');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('13', '1', '12');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('13', '11', '12');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('12', 'The art of crown lenghtening and feature the surgery in the esthetic zone ', '', '2', '12');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('14', '2', '12');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('14', '12', '12');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('12', 'Dr. Roberto Rossi', 'Dr. Roberto Rossi', 'Rossi.jpg', 'Dr.Rossi graduated in dentistry with honors in Genova and than specialized in Periodontology at Boston University Graduate School of Dental Medicine  in 1991. He received the M.Sc.D. in Periodontology in 1992 with his thesis published on the Journal of Periodontology

After returning to Italy he established a practice limited to Periodontology and Implant Dentistry.

Has been doing research in the field of guided tissue regeneration with different groups and has been a professor in the department of Periodontology in different universities (Genova, Padova, Pisa, Chieti, Roma)  and has been a professor at the Master of II degree in Periodontology at the University of Roma Sapienza since 2000

He is a certified member of the Italian Society of Periodontology (SidP) an international member of the American Academy of Periodontology, active member of the Italian Academy of Esthetic Dentistry (IAED) and of the European Society of Cosmetic Dentistry (ESCD) founding member and Vice President of the BBB Academy, past secretary and board member of the Boston University Italian Alumni association, member of the Italian Academy of Osseointegration, honorary member of the Bohemian society of Implantology.

Appreciated speaker nationally and internationally, author and co-author of publications on peer reviewed magazines and co-author of the book Bone Biomaterial and Beyond where he wrote the chapter on guided bone regeneration', '1', 'Italy');


/* 11. Dr. Rafael Decurcio */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('13', 'Cementation of Ceramic Veneers - The Science as the basis of Clinical Decisions', 'In spite of the many philosophies of work related to Ceramic Veneers, our team developed with a clinical experience of over more than 10,000 veneers made a protocol of cementation based on solid scientific concepts and understanding of the best and most practical clinical solutions available .
Thus, the objective of the course is to present the scientific bases that support the clinical decisions for the establishment of a unique protocol, practical and scientifically safe.', '1', '13');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('15', '1', '13');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('15', '13', '13');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('13', 'Dr. Rafael Decurcio', 'Dr. Rafael Decurcio', 'decurcio2.jpg', 'RAFAEL DECURCIO
Author of the book " Veneers: Contact Lenses and Ceramic Fragments" in portuguese and spanish / Editora Ponto
Professor of the Specialization Course in Aesthetic Dentistry and Oral Rehabilitation /
Brazilian Dental Association
Professor of Ceramics Veneers Clinical Course s to brazilian and international students / Brazilian Dental Association
Master in Oral Rehabilitation / Federal U niversity of U berlndia
Specialist in Periodontics / Brazilian Dental Association
Specialist in Aesthetic Dentistry and Oral Rehabilitation / Brazilian Dental Association
', '1', 'Brasil');


/* 12. Dr. Jon Gurrea */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('14', 'Simplified oral adhesive rehabilitation', 'Erosion, abrasion and bio-corrosion produce defects in our patients teeth than can be managed easily with a simple protocol, with extended planning but reduced chair-time any full-mouth rehabilitation can be performed.', '1', '14');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('16', '1', '14');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('16', '14', '14');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('14', 'Dr. Jon Gurrea', 'Dr. Jon Gurrea', 'Gurrea.jpg', 'Dr. Jon Gurrea graduated in Dentistry in 2002 from Alfonso X el Sabio University, in Madrid, Spain.
International advanced study program in Periodontics (2003-2005), New York University College of Dentistry.
Clinical Assistant Fellow in Periodontics (2004-2005), New York University College of Dentistry.
Part-time faculty in the Implant Department in Alfonso X el Sabio University (2007-2008).
Visiting lecturer in Universidad Europea de Madrid, Universidad Internacional de Catalua and Universidad del Pas Vasco. 
Author of articles in several journals, Dr. Gurrea lectures both in Spain and abroad.   

', '1', 'Spain');


/* 13. Prof. Dr. Liu Feng */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('15', 'To establish or to maintain? Strategies for pink esthetics in implantology', 'Pink esthetics is essential in implant treatment. Both surgical and prosthodontic procedures in implant therapy contribute to the success in pink esthetics greatly. A proper treatment strategy before the operation is an element of great importance for the final success in pink esthetics.During the surgical procedure of a standard implant placement, we need to establish sufficient peri-implant hard and soft tissue. 
Accurate three-dimensional implant positioning is fundamental to ultimate esthetic effects. Under good bone conditions, freehand immediate implant surgery can achieve good results; if bone conditions are limited, or implant sites are stringent in the anterior area, immediate dental implant placement using digital workflow can achieve more accurate surgical results. 
In the subsequent prosthodontic phase, esthetic parameters and adjacent teeth are taken into consideration to shape the peri-implant soft tissue for optimal pink esthetics. Establishing and transferring the right emergence profile is an important basic technique during the prosthodontic procedure. Conventionally, the emergence profile was shaped step by step into the optimal morphology. Recently, we tend to fabricate provisional restorations according to pre-designed emergence profile, so the peri-implant soft tissue will be shaped in an efficient and direct way. The negative influence on peri-implant structures caused by repeatedly unscrewing abutments could be diminished.During immediate implant placement procedure, we prefer the concept of maintaining. Throughout the whole treatment, including implant placement, provisional restoration, and final restoration, the natural morphology of the soft tissue is preserved by all means to achieve natural and harmonious pink esthetics.
', '1', '15');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('17', '1', '15');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('17', '15', '15');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('16', 'From digital guided immediate implant placement to esthetic chairside restoration', 'Immediate implant placement is a very important technique, which could simplify the treatment process, shorten the treatment time, and reduce the pain of treatment. Most patients are willing to accept immediate implantation if necessary and possibleFor patients who need to receive implant on the site with a hopeless tooth, no matter if the site is in the anterior, premolar or molar area, we will assess the feasibility and risk of immediate implant placement first. Whenever possible, immediate implant placement would be the first choice.With good bone conditions, immediate implant placement by free hand may achieve good results; with compromised bone conditions, or on very challenging implant sites in the anterior area, immediately implant placement under digital guidance can achieve more accurate surgical results. The first part of this lecture focuses on the methods and skills of DMG digital guide plate.In order to achieve better final aesthetic effect, we recommend immediate restoration for immediate placed implant. The second part of this lecture focuses on the methods of making immediate implant prostheses.
1. The advantage and indication of immediate implant placement
2. Case analysis of immediate implant placement in anterior, premolar and molar region - 
3. The advantages and case analysis of immediate implant placement under digital guidance - 15min
4. DMG digital guide fabrication and techniques (operation demonstration)
5. Significance of immediate implant restoration
6. Method for making immediate implant restoration (operation demonstration', '2', '15');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('18', '2', '15');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('18', '16', '15');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('15', 'Prof. Dr. Liu Feng', 'Prof. Dr. Liu Feng', 'feng.jpg', 'Dr. Feng LiuClinical Professor

Deputy director of Peking University Hospital of Stomatology Clinical Division ,
Director of Clinical Division Esthetic Dentistry Training Center,

Standing committee member of Chinese Society of Esthetic DentistryCSED;
Committee member of ChineseProsthodonticsSocietyCPS;
Former Chairman  & Honorary president of  Chinese Society of Digitized Dental IndustryCSDDI;
Standing committee member of Oral Branch of Chinese Association of Plastics and AestheticsCAPA;
committee member of Chinese Society of Medical Aesthetics and Cosmetics.

Certification member  and China CCP  of European Society of Cosmetic DentistryESCD;
Certified international trainer of International Society of Computerized DentistryISCD;
Member of  European Association for Osseointegration (EAO)
Member of American Association of Cosmetic DentistryAACD;
Member of Japanese Association of Esthetic DentistryJAED.', '1', 'China');


/* 14. Dr. Jorge André */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('17', 'Full-arch immediate implants - facially driven planning and prosthetics', 'The lecture will focus the planning and prosthetic aspects of fixed immediate implant rehabilitations for patients with hopeless dentition:
- The prosthetic vs natural gingiva dilemma.
- Planning and communicating tooth positions according to the face. - Immediate bridge design and laboratory communication
- Surgical parameters for good prosthetic integration
- Capturing the immediate bridge for immediate loading.
- Controlling the vertical dimension and anterior guidance in the immediate bridge - Transition from immediate to final bridges
- Materials and Occlusal design for final bridge
', '1', '16');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('19', '1', '16');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('19', '17', '16');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('16', 'Dr. Jorge André', 'Dr. Jorge André', 'cardoso_pp.jpg', 'Dr. Jorge Andre Cardoso
Dr. Cardoso is Doctor of Dental Medicine (DMD) by the Faculty of Dental Medicine  Porto University  2002. Master in Clinical Dentistry (MClinDent) in Prosthodontics by Kings College  London
University  2010. Honorary Clinical Teacher at the Master of Science in Aesthetic Dentistry at Kings College  London University  since 2015.Author of several articles published in peer-reviewed journals such as the JERD, EJED and IJED. Author of four chapters in the book Practical Procedures in Aesthetic Dentistry  2017. Lecturer at several national an international events and courses in the fields of Esthetic, Restorative, Periodontal and Interdisciplinry Dentistry.Personality of the year in Oral Rehabilitation by Saude Oral Magazine, attributed by peer colleagues  2016. Teacher in Esthetic, Restorative, Periodontal and Interdisciplinary Dentistry in Sorriso Natural and Foramen teaching centers.Regular attendee of congresses and courses internationally. Developer of the software MakeMeClear (TM) ( www. makemeclear.com ) to help dentists communicate with patients with more clarity about treatment plans.', '1', '');


/* 15. Dr. Mauro Fradeani */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('18', 'The prosthetic revolution', 'Designing full-mouth complex rehabilitations on natural dentition and implants with optimum esthetics requires correct treatment planning, evaluation of the most suitable ceramic material and advanced skills. Today technology validly supports the clinician in the definition of an ideal treatment plan thanks to GETApp, an App that collects and processes digitally all the necessary data. The use of metal-free ceramic materials allows the restorative dentist to obtain excellent esthetic results while dramatically reducing the need to remove sound tooth structure. This MIPP technique (Minimally Invasive Prosthetic Procedure) represents an undeniable advantage when facing highly compromised clinical situations.', '1', '17');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('20', '1', '17');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('20', '18', '17');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('17', 'Dr. Mauro Fradeani', 'Dr. Mauro Fradeani', 'Fradeani.jpg', 'Dr. Mauro Fradeani 
Past President of the EAED-European Academy of Esthetic Dentistry (2003/2004) and Past President of AIOP- Accademia Italiana di Odontoiatria Protesica (1999/2000), Associate Editor of IJED, member of the Editorial Advisory Board of JERD, Active Member of the AAED, he maintains membership in the AAFP. Founder and Director of ACE Institute and of Fradeani EducationAuthor of the book "Esthetic Rehabilitation in Fixed Prosthodontics" Vol 1-"Esthetic Analysis" and Vol 2-"Prosthetic treatment: a systematic approach to esthetic, biologic and functional integration",  published by Quintessence. He runs a private practice limited to prosthetics on natural dentition and on implants in Pesaro (Italy).', '1', 'Italy');


/* 16. Prof. Dr. Andre Saadoun */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('19', 'Partial extraction therapy and immediate/delayed implant placement ', 'Each tooth extraction is always followed by a collapse of the gingival margin, an alveolar bone resorption in particular on the buccal cortical plate and a deformed ridge after a minimal of 2-12 weeks Maintaining the buccal Contour of the Root Emergence at the time of the tooth extraction and after, is may be another way to prevent soft tissue recession and crestal bone level change to occur The most scientific based modalities of Traitement following this clinical biological concept ate the following 
ROOT SUBMERGENCE TECHNIQUE 
The purpose is to keep the all root and to grind 2 mm below the healthy gingival margin, keeping the connective fibers at the root and above the bone level.  The advantages of Root Submergence Procedure for Pontic Site Development in Esthetic Implant therapy should be considered as an Alternative to standard Socket Preservation Technique to maintain the PDL Fibers Apparatus inter-proximal Height of Bone and Ridge DimensionsSOCKET SEAL SURGERY 
 This clinical procedure combines the Preservation and the Augmentation of the extraction site with or without Immediate implant placement ,by using an allogenic bone graft in the alveolar Socket ,covered by an oversized Epithelio Connective Tissue graft delicately sutures in strategic location to insure a perfect stability and vascularization Few months after the initial contour and volume are maintained and the implant could be exposed with a roll Technique or the Implant could be place in the correct 3D position  
ROOT SHIELD TECHNIQUE  
Maintaining the buccal part of the root at the time of the tooth extraction is may be another way to prevent crestal bone level change and soft tissue recession Volumetric Analysis shows a low degree of Contour Changes from Extraction Implant Placement after 5 years follow up. Mucosal Recession at implant restoration site contour was comparable to that of the adjacent teeth. This Study offers reduced invasiveness at the time of surgery and high esthetic outcomes with effective preservation of the facial tissue contours However this technique should not be used routinely, until higher evidence in the form of Clinical, trials is available', '1', '18');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('21', '1', '18');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('21', '19', '18');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('20', 'Soft tissue management around teeth and implants ', '
', '2', '18');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('22', '2', '18');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('22', '20', '18');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('18', 'Prof. Dr. Andre Saadoun', 'Prof. Dr. Andre Saadoun', 'ANDRE SAADOUN.jpg', 'Dr .SAADOUN has received his Degree in Dental Surgery from the Faculty of Paris and completed his Post-Graduate Certificate in Periodontology at the University of Pennsylvania and Post-Graduate Certificate in Implantology at University of California in Los Angeles.

He was an Associate Professor in the Department of Periodontics at the University of Southern California. He is also Visiting Professor at Loma Linda University and UCLA and also Visiting Professor at the Hadassah, Faculty of Dental Medicine of Jerusalem University.

He is a Diplomate of the American Academy of Periodonology, a Diplomate of the International Congress of Oral Implantology with a special Award of 25 years contribution for The American Board of Periodontology, a Member of Honor of the American Dental Implant.

He has received the French Medal of Chevalier de lOrdre National du Merite

As internationally renowned lecturer in Esthetic Periodontology and Implantology, Dr SAADOUN has written over 150 articles and several book chapters and Special Guest Editor for 21 Issues of the Alpha Omega News in 2015 and 2 issues for the Journal of Paro Implantologie Orale in 2016.

He was recently a contributing author in the books entitled: The Art of the Smile, The Art of Treatment Planning and recently Ridge PreservationUpdates and Innovations.
He was also Associate Editor of Implant Site Development published in May 2012.
 His book on Soft Tissue Management on Teeth and Implants has been published in December 2012 and translated in Russian in August 2013 in Italian in July 2014, in Mandarin Chinese in August 2015 and Turkish in June 2016

A translation of the Book in Persian will be published in 2018

He is also on the Editorial Board of scientific journals including Practical Procedures and Aesthetic Dentistry, Implant Dentistry, Dental Implantology Update, Journal of Periodontology, European Journal of Esthetic Dentistry, Cosmetic Dentistry, European Journal of General Dentistry, Journal de Paro -Implntologie Orale and Modern Approach in Dentistry 

In addition, Dr. SAADOUN is a Faculty member of the Global Institute of Dental Education (Los Angeles) and a Faculty member of the Dental XP Program of Education (Atlanta).

Dr. SAADOUN maintains a private practice in Paris, which is limited to Esthetic Periodontics and Implant Surgery.
', '1', 'France');


/* 17. Dr. Walter Renne */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('21', 'Pre-surgical provisional prosthetics in the esthetic zone', 'Utilizing smile design, digital impressions, and open implant planning software to create milled and 3D printed pre-surgical provisional restorations in the esthetic zone.', '1', '19');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('23', '1', '19');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('23', '21', '19');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('22', 'How to create a pre-surgical provisional restoration from an implant plan. ', '2D and 3D smile design for implant planning and manufacturing of pre-surgical provisional restorations.  Participants will use smile design and 3D intraoral scanning to virtually plan an implant in the esthetic zone. They will then use this plan for designing of a 3D printed surgical guide and also a pre-surgical provisional. ', '2', '19');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('24', '2', '19');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('24', '22', '19');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('19', 'Dr. Walter Renne', 'Dr. Walter Renne', 'walter renne .jpg', 'Dr. Renne is a full Professor and Assistant Dean of Innovation and Digital Dentistry at the Medical University of South Carolina.  He is the course director for the preclinical CAD/CAM course. He has won several national and regional teaching awards for his efforts both pre-clinically and clinically. He is proficient clinically with the Planmeca Emerald, CEREC Omnicam, 3Shape Trios, CS 3600 and iTero element. He is active in dental research and currently has several patents including a patent for a platform of long-term antimicrobial dental materials that have revolutionary bond durability components by inhibiting enzyme degradation of the hybrid layer while simultaneously preventing bacterial proliferation. He has also published several studies on scan accuracy and milling accuracy using various systems.
', '1', 'Usa');


/* 18. Dr. Alecsandru Ionescu */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('23', 'The biological guided approach for predictable long term esthetic and functional results in implant patients', 'Technology changes have emerged in communication, education, and healthcare  but especially in dentistry. These changes are leading our way towards digital dentistry, where most clinics will be relying on digital methods in place of traditional methods.
Many dentists and dental laboratories are adopting these new techniques to improve the quality of work, save time and lower costs.
3D Computer Graphic Analysis of Oral Occlusal Dysfunctions brings the next generation of digitalization to dentistry by implementing the advantages of displaying occlusal interferences in the dynamic movement oft he jaws. The accuracy of the occlusal design is improved by advanced protection of the occlusal forces which is of importance in planning or monitoring Restorative Dentistry or Prosthodontics (Inlays and Veneers in particular).
The technique can be used in analysis before and after dental treatment as well as a diagnostic tool in CMD/TMD problems.', '1', '20');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('25', '1', '20');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('25', '23', '20');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('20', 'Dr. Alecsandru Ionescu', 'Dr. Alecsandru Ionescu', 'ionescu.jpg', 'Dr. Alecsandru Ionescu graduated the Faculty of Dentistry within UMF Carol Davila Bucharest in 2001. He is a member of the board of the Society for Esthetic Dentistry in Romania (SSER) as Events Director since 2004 and a member of the scientific board of Cosmetic Dentistry Romania since 2007. He is also the co-founder of Quintessence International Romania. Dr. Ionescu is an active member of the IADFE (International Academy for Dental-Facial Esthetics), ESCD (European Society of Esthetic Dentistry) and EAO (European Association for Osseointegration).
He is udergoing a PhD research with the theme: Guided tissue healing using the open healing concept as alternative ridge augmentation technique in implant patients.
Dr. Ionescus main lecturing topics are focused on minimally invasive approaches in oral surgery and implantology. He is a trainer for the open healing protocol and minimally invasive techniques using soft tissue level implants. He is an international speaker, author of different articles in the field of aesthetic dentistry and oral implantology and a co-author of the Comprehensive Esthetic Dentistry, the first volume by Romanian authors published by Quintessence International in 2015.
Dr. Ionescu develops his professional activity in Bucharest in his private dental clinic and training center aesthetics ONE.', '1', 'Romania');


/* 19. Dr. Diana Boangar */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('24', 'Ortho-prosthetics interdisciplinary; from planning to execution', 'Published in 2010, a study conducted between MIT and Union College demonstrated that collective intelligence exceeds cognitive abilities of individual group members. The principle also applies to medicine. The process of decision making is nowadays influenced by the continuous flux of information, the evolution of the technology, and the development of new protocols and evidence-based procedures. But the most powerful tool that we have available is communication with other specialists.Those cases that fall into the gray zone and for which no individual approach offers optimal esthetic and functional results, compel us to integrate other specialists in our treatment planning. Among them, ortho- prosthetics collaboration plays a special role, due both to the complex facetes it carries and to the time factor. A well conducted, individualized orthodontic treatment may turn a difficult- in a medium difficulty-grade case, and one that requires great sacrifice of dental or periodontal tissues into a minimally invasive approach.That is why its important for us to recognize the complex problems our patients may have, our own limits in addressing those issues, to individualize protocols and find the common ground to efficiently communicate with the orthodontist.The objectives of the presentation are:
Recognize clinical situations when interdisciplinary collaboration is indicated
Recognize clinical situations in which orthodontic correction may make the difference between an ordinary and an excellent outcome
Present a clinical time-proven protocol of interdisciplinary collaboration
Illustrate it through clinical examples.', '1', '21');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('26', '1', '21');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('26', '24', '21');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('21', 'Dr. Diana Boangar', 'Dr. Diana Boangar', 'boangar.jpg', '

Dr. Elia Diana Boangar graduated the I. Hatieganu University of Medicine and Pharmacy Cluj-Napoca in 2006, and in 2010 she finished her MSD in Orhodontics program in Cluj-Napoca and Bordeaux, France. Ever since, she has been exclusively practicing orthodontics in Cluj-Napoca and Zalau. She lectures on the subject of interdisciplinary treatment of adult patients, emphasizing the importance of properly sequencing orthodontic, periodontal and restorative treatment. She is an active member of World Federation of Orthodontists, American Association of Orthodontists and European Orthodontic Society.

', '1', 'Romania');


/* 20. Dr. Louis Hardan */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('25', 'Dental documentation and communication: a new easy way for everyone, every day.', 'Abstract: Photography is powerful in dentistry, its numerous applications such as diagnosis and treatment planning, legal documentation, publishing and lecturing has made digital photography a standard of care in modern dental practices.
Till last year the DSLR (Digital Single Lens Reflex) cameras were the only way in dentistry to take high quality macro images. 
Recently, smartphones have come a long way in digital photography due to recent technology development. 
The purpose of this lecture is to demonstrate the capacity of these devices to take high quality dental images for our daily documentation and to present a new device for mobile photography: the Smile Lite MDP, which is very simple to use and allows to take high quality dental pictures with mobile phones. 
Those pictures are useful in different types of documentation and communication, in a feasible teachable and repeatable way, by everyone and for everyday practice.', '1', '22');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('27', '1', '22');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('27', '25', '22');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('26', 'Documenting and communicating with mobile dental photography: all you need to know ', '
', '2', '22');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('28', '2', '22');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('28', '26', '22');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('22', 'Dr. Louis Hardan', 'Dr. Louis Hardan', 'Hardan.jpg', 'Prof. Louis Hardan, head of the restorative and esthetic department at Saint Joseph University Beirut-Lebanon.
He graduated dentistry in 1989 and continued his post-doctoral education at Saint Joseph University; he obtained a certificate for basic science in 1993, he completed his specialization in restorative and esthetic dentistry in 1995, and completed his PhD in oral biology and materials in 2009. 
He was an active member of the Lebanese dental association (2006-2009) and was assigned as a general secretary of the LDA in 2009.
At the present, he is an associate professor at Saint Joseph University and owns a private practice in his home town Byblos.
He is an honorary and active international Styleitaliano member, head of the networking and media section and coordinator of all Styleitaliano departments.
He is the inventor of Smile Lite MDP (Smile Line, Switzerland) a device to take high quality dental pictures with a mobile phone and Posterior Misura (LM instrument) an instrument for direct posterior composites. 
Prof. Hardan has many publications in international journals and has given several lectures on esthetic, restorative dentistry and mobile dental photography.', '1', 'Lebanon');


/* 21. Dr. Markus Troeltzsch */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('27', 'To graft or not to graft - a dilemma.', 'Augmentative procedures have become a necessary step in the process of the esthetic and functional implant rehabilitation of the jaws. After the initial surge of techniques and materials the last years saw substantial contributions to the scientific foundation of the osseous rehabilitation of the jaws.
Furthermore with an aging population and advances of medical care, dental specialists are frequently confronted with multi - morbid patients. Many diseases in isolation or in combination may interfere with treatment success.
Each treatment approach must be tailored individually for each patient with respect to individual needs, pharmacological treatment, life expectancy, capacity and interactions between drugs and diseases.
Today the dentists challenge is to select the appropriate technique and material for the given task.
Attendees will learn
How to classify osseous defects and deduct success rates for the augmentative procedure
How to select the correct material for the given situation
How the find an entry into augmentation surgery in case they are beginners
How to perfect their success rate in case they are professionals', '1', '23');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('29', '1', '23');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('29', '27', '23');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('23', 'Dr. Markus Troeltzsch', 'Dr. Markus Troeltzsch', 'troeltzsch.jpg', 'Dr. Markus Troeltzsch (MD /DMD) completed his dental training and received hisDMD in 2005 from the Dental School at the University of Erlangen in Nuremberg inGermany. In 2010, Dr. Troeltzsch completed his medical education at the Medical Schoolat the University of Erlangen, Nuremberg and received his MD.
Dr. Troeltzsch continued his dental studies in 2008 and 2009 specializing in restorativeand esthetic Dentistry (Curriculum DGZ). He spent 6 months in the Department ofSurgery at the University of Sydney in Australia, and then proceeded to the Departmentof Maxillofacial Surgery at the University of Zurich in Switzerland. Afterwards heperformed his residency at the University Clinics in Bochum (Germany) and Gttingen(Germany) where he passed the board exam for maxillofacial surgery.
Dr. Troeltzsch was appointed as consultant and senior physician for maxillofacial surgeryat the University of Gttingen in January 2016, where he still teaches up to date.
In November 2016 he was elected as the director of the APW, the Academy forpostgraduate continuous education of the german dental association.
He lectures and publishes internationally and nationally on various topics, especially
about up to date procedures of methods of augmentation of the jaws, implants and the
various aspects of medicine in dentistry.
', '1', 'Germany');


/* 22. Dr. Joao Barbosa */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('28', 'Digital Biomimetics: Nature Copy / Nature Paste', 'The recreation of the anatomical tooth form together with its optical features has been considered an arduous, challenging and elusive task. With the constant evolution of clinical and laboratorial software and hardware, the digital workflow took control of a series of tasks and procedures that were once artistically handmade by highly skilled artisans. But will this trend ever replace the human artistry and knowlege that evolved for centuries and led to the fabrication of handmade highly customized and esthetic dental prosthesis?', '1', '24');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('30', '1', '24');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('30', '28', '24');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('24', 'Dr. Joao Barbosa', 'Dr. Joao Barbosa', 'Barbosa.jpg', 'Joo Malta Barbosa, DDS, MSc
 Specialty Certificate in Prosthodontics, New York University, USA;
 Volunteer Researcher, Department of Biomaterials and Biomimetics, New York University, USA;
 Master of Science in Dentistry, Instituto Egas Moniz, Portugal;
 Private Practice in Prosthodontics, Lisbon Implantology Institute, Portugal;
 Author of multiple publications in international scientific journals.', '1', '');


/* 23. Dr. George Gomez  */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('29', 'Modern cementation technigues: choosing an appropiate cement for indirect dental restorations, from self etching cements to adhesive cementation', '', '1', '25');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('31', '1', '25');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('31', '29', '25');



/* 24. Prof. Dr. Rade Paravina */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('30', 'New Color Matching Curriculum for Dental Professionals and Students  An Overview', 'Course Description
Color Matching Curriculum (CMC) is a non-commercial education and training program, developed by the Society of Color and Appearance in Dentistry (SCAD, www.scadent.org). The presenter served as the editor of CMC program, co-authored by Sabiha Bunek, Stephen J. Chu, Newton Fahl, Federico Ferraris, Edward A. Mclaren, Adam J. Mieleszko, Joe C. Ontiveros, Esam Tashkandi and Aki Yoshida. This lecture is an overview of the CMC course, which is very pertinent to practice given that vast majority of dental restorations are tooth colored. The program is applicable to every dental professional, educator and student, and can facilitate the practice of dentistry. The full CMC combines didactic and hands-on portion, and it is immediately applicable in dental office. 
How good are we when it comes to shade matching? In two recently published studies (JPD, JERD), with more than 7000 shade matchings combined, barely over 50% of students matched one of THREE best matching tabs from shade guide. However, a very significant improvement (35-47%) in shade matching quality was achieved upon education and training. 
How much it cost? According to some calculations, shade matching cost is approximately $20,000 per year, while the cost of color corrections and remakes associated with shade mismatching exceeds $14,000 per year, observed for chair-side time only. This does not include the lab costs, frustration of dental professional, and patients disappointment and time.
The course will emphasize the essentials of a plan for successful color matching in both the dental office and the dental laboratory, with step-by-step instructions. Examples and practical suggestions will be provided, including the latest changes recommended by the presenter. 
Course Outline
Color concept and resources
Visual color matching 
Color matching instruments
How we do it
Dental Color Matcher (homework)Objectives
UNDERSTAND color
Learn about advanced shade matching conditions and methods
Contrast dental shade guides and elaborate color-related properties of dental materials
Review the state of the art in tooth whitening monitoring
Learn about resources for color education and training in esthetic dentistry', '1', '25');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('32', '1', '25');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('32', '30', '25');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('31', 'New Color Matching Curriculum for Dental Professionals and Students  An Overview', 'Course Description
Color Matching Curriculum (CMC) is a non-commercial education and training program, developed by the Society of Color and Appearance in Dentistry (SCAD, www.scadent.org). The presenter served as the editor of CMC program, co-authored by Sabiha Bunek, Stephen J. Chu, Newton Fahl, Federico Ferraris, Edward A. Mclaren, Adam J. Mieleszko, Joe C. Ontiveros, Esam Tashkandi and Aki Yoshida. This lecture is an overview of the CMC course, which is very pertinent to practice given that vast majority of dental restorations are tooth colored. The program is applicable to every dental professional, educator and student, and can facilitate the practice of dentistry. The full CMC combines didactic and hands-on portion, and it is immediately applicable in dental office. 
How good are we when it comes to shade matching? In two recently published studies (JPD, JERD), with more than 7000 shade matchings combined, barely over 50% of students matched one of THREE best matching tabs from shade guide. However, a very significant improvement (35-47%) in shade matching quality was achieved upon education and training. 
How much it cost? According to some calculations, shade matching cost is approximately $20,000 per year, while the cost of color corrections and remakes associated with shade mismatching exceeds $14,000 per year, observed for chair-side time only. This does not include the lab costs, frustration of dental professional, and patients disappointment and time.
The course will emphasize the essentials of a plan for successful color matching in both the dental office and the dental laboratory, with step-by-step instructions. Examples and practical suggestions will be provided, including the latest changes recommended by the presenter. 
Course Outline
Color concept and resources
Visual color matching 
Color matching instruments
How we do it
Dental Color Matcher (homework)Objectives
UNDERSTAND color
Learn about advanced shade matching conditions and methods
Contrast dental shade guides and elaborate color-related properties of dental materials
Review the state of the art in tooth whitening monitoring
Learn about resources for color education and training in esthetic dentistry', '2', '25');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('33', '2', '25');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('33', '31', '25');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('25', 'Prof. Dr. Rade Paravina', 'Prof. Dr. Rade Paravina', 'Paravina.jpg', 'Rade D. Paravina, DDS, MS, PhD is a tenured Professor at the University of Texas School of Dentistry at Houston and Director of Houston Center for Biomaterials and Biomimetics (HCBB). He also holds the Ralph C. Cooley, DDS Distinguished Professorship in Biomaterials, an endowment created by world-renowned heart surgeon Denton A. Cooley, MD. Dr. Paravina has authored four books including the most recent Color in Dentistry  A Clinical Guide to Predictable Esthetics (Quintessence Publishing 2017), 95 peer-reviewed articles, 138 published abstracts, two software programs, and an educational CD. His work has been shared in 109 invited presentations and 26 CE talks on all continents. His research on color and appearance has been funded by 60 contracts and grants, and has been cited 1300+ times on Scopus and 3000+ times on Google Scholar. 
Dr. Paravina designed/developed several dental products and tests. Together with Vita Zahnfabrik he designed two shade guides, Linearguide 3D Master and Bleachedguide 3D Master. The University of Texas Health Science Center at Houston has executed licensing agreements with Vita Zahnfabrik dealing with commercialization of these two shade guides. He has developed Dental Color Matcher, a free online educational and training program for esthetic dentistry, and the scientific protocol for evaluating "chameleon effect" of dental materials.
Dr. Paravina is Founder and Past President of the Society for Color and Appearance in Dentistry (SCAD). He is a recipient of the 2011 E. B. Clark Award, SCAD award for lifetime achievement, and the 2014 Jerome M. and Dorothy Schweitzer Research Award of the Greater New York Academy of Prosthodontics. He is Fellow of the American Academy of Esthetic Dentistry (AAED), American Association for Dental Research (AADR), and SCAD. He serves as associate editor of the Journal of Esthetic and Restorative Dentistry, editor of its permanent bi-annual issue on color and appearance, and editorial board member for the Journal of Dentistry, Journal of Prosthetic Dentistry, Clinical Oral Investigations, Journal of Prosthodontics, and the American Journal of Dentistry.
Dr. Paravina lectures nationally and internationally on various topics associated with color and appearance in esthetic dentistry.
', '1', 'Usa');


/* 25. Dr. Maciej Zarow */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('32', 'The restoration of root canal treated anterior teeth  -  ABC for the clinical practiceRestoration of root filled teeth is a controversial subject and a challenge because of the confusing range of opinions presented by dentists and scientists, which makes it difficult to select the most appropriate restorative option. The ongoing debate on whether a post is necessary also remains controversial. The aim of this article is to classify both the evidence and clinical practice in a way that seeks to be clear, understandable and helpful for clinicians. The following topics will be discussed :- The current status of root filled teeth - Residual crown and root structure - Occlusion and Function vs endodotically treated teeth- Problems connected to discolouration and aesthetic rehabilitation- Restoration concepts ', '', '1', '26');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('34', '1', '26');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('34', '32', '26');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('26', 'Dr. Maciej Zarow', 'Dr. Maciej Zarow', 'Zarow.jpg', 'Dr Maciej Zarow graduated from Semmelweis University in Budapest in 1995. After a three-year training programme he achieved specialization in operative dentistry in 1999. From 1998 until 2005 he was teaching at the Jagiellonian University in Krakow. There, in 2002, he defended his PhD and, in 2005, he achieved specialization in endodontics. He is also the co- author of more than 100 papers published in Polish and international journals. Dr Zarow is the author of a book called Endo-Prosthodontics: Guidelines for Clinical Prac- tice, published by Quintessence Publishing (in Polish, Russian, English, French, Croatian). Since 2012 he has been editor-in-chief of the Polish language dental magazine Medycyna Praktyczna - Stomatologia. A member of the Polish Academy of Aesthetic Dentistry, Dr Zarow has lectured extensively in Poland and other European countries. Visiting Professor of University in Chieti (Italy) 2015-2016, lecturing for postgraduate master programs at UIC in Barcelona (2012-2016). He is a honorary member of Style Italiano scientific group. He has run a private dental clinic since 1999 and postgraduate course centre, since 2003, in Krakow, Poland.', '1', 'Poland');


/* 26. Dr. Eric Van Dooren & Dr. Nuno Sousa Dias */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('33', 'Team approach in challenging aesthetic compromised cases', 'The time when different specialists of our profession were working alone is definitely over. Interdisciplinary interaction became the gold standard in Dentistry.
Nowadays, the available technology permits better communication between all team members, resulting in less mistakes during the work execution. These tools, together with the respect for biological principles, makes the decision of the treatment plan option easier.
In this lecture, we will share our experience working together, emphasising the importance of the team planning and execution combining ortho, perio, pros and lab in order to achieve the best possible results.
Some interdisciplinary challenging clinical cases will be presented and discussed.', '1', '27');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('35', '1', '27');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('35', '33', '27');

INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('36', '1', '27');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('36', '33', '27');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('27', 'Dr. Eric Van Dooren ', 'Dr. Eric Van Dooren ', '0.jpg', 'Dr. Nuno Sousa Dias received his degree in Dentistry from Universidade Fernando Pessoa (Porto), in 2007. In the same year, he created and registered a Smiles Analysis named SAEF  Smiles Aesthetic Evaluation Form. He Completed the full-time Orthodontic Postgraduate Program at Tel Aviv University (ISRAEL) from 2008 to 2012. Was awarded with the 1st prize at the 4th Scientific Research International Competition of the Spring Meeting of the EAED (European Academy of Esthetic Dentistry), in 2010, in London (UK). He was elected ambassador for EPSOS (European Postgraduate Students Orthodontic Society) for Portugal and Israel for the years 2011 and 2012. Awarded by SEDO (Sociedad Espaola de Ortodoncia) with a fund to attend the AGE (Advanced Graduate Education) Didactic Courses at the Department of Orthodontics of HSDM (Harvard School of Dental Medicine), in 2013. He is member of several national and international dental and orthodontic scientific organisations. His practice is limited in Orthodontics at his own private clinic NSD-DENTISTRY (Portugal), since 2013 and he also Cooperates with multidisciplinary teams in Belgium, Germany and Istanbul. He is an international speaker in the field of Orthodontics and Smiles aesthetics.
', '1', 'Belgium');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('28', ' Dr. Nuno Sousa Dias', ' Dr. Nuno Sousa Dias', '1.jpg', 'Dr. Eric Van Dooren attended the Katholieke Universiteit Leuven, Belgium, where he received his degree in dentistry in 1982. After graduating he opened a private practice in Antwerp, Belgium, which is limited to periodontics, fixed prosthodontics, and implants.
Currently Dr. Van Dooren is a Visiting Professor at University of Liege ( Belgium) and University of Marseille . He is an active member of the European Academy of Esthetic Dentistry.
Dr Van Dooren lectures nationally and internationally , mainly on aesthetics,implants and aesthetic periodontal surgery.
', '1', 'Portugal');


/* 27. Dr. João Fonseca */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('34', 'This computer has no Brain, use your own. 

Despite remarkable achievements in computer science and more recently significant advances in artificial intelligence, digital dentistry is still mainly a user-dependent endeavour.  That said, the principles and knowledge-based approach in esthetic rehabilitation remain the same. Nevertheless, digital workflows apply powerful tools that used with wisdom have potencial to render much of the manual labor from planning to fabrication of dental prosthesis caput. This lecture will focus on tools and techniques such as facial scanning, virtual mock up, direct mock up, natural tooth digital implementation, dental vs open source based planning softwares and their integration with modern fabrication processes such as 3D printing and Computer Aided Milling.', 'This computer has no Brain, use your own. 

Despite remarkable achievements in computer science and more recently significant advances in artificial intelligence, digital dentistry is still mainly a user-dependent endeavour.  That said, the principles and knowledge-based approach in esthetic rehabilitation remain the same. Nevertheless, digital workflows apply powerful tools that used with wisdom have potencial to render much of the manual labor from planning to fabrication of dental prosthesis caput. This lecture will focus on tools and techniques such as facial scanning, virtual mock up, direct mock up, natural tooth digital implementation, dental vs open source based planning softwares and their integration with modern fabrication processes such as 3D printing and Computer Aided Milling.', '1', '29');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('37', '1', '29');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('37', '34', '29');



/* 28. Dr. Dan Herschbach */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('35', 'My digital reality-How technology changes the way we practice', 'We are living in a world where technology is everywhere. In this lecture, I will show you how we, as dentists, can use the technology to make our dentist life better. I will focus on the digitalization of the prosthetics and show you what possibilities we have to change from the analog to digital. Is it possible to change a smile in one day? Is it possible to deliver high precision, high quality and high esthetics using digital impressions and the cad-cam technology? If you choose the right system for what u need, it is possible. I will also present some cases, done only with digital technology: from planning to final restoration, from single partial crown to full esthetic smiles.', '1', '29');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('38', '1', '29');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('38', '35', '29');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('36', 'Integrated solutions-More effective treatments', '
In this Hands on course, I will show you how you can integrate the 3D solutions in your Practice. We will start with an Intra oral scan and we will go through prosthetics, orthodontics, implant planning with or without immediate loading. All the doors are open if you choose the system that you need. In a few years, intra oral scanning will be state of the art in taking (digital) impressions. Do you know everything that you can do with it? Join us to find out what you can do with the technology that we have today.', '2', '29');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('39', '2', '29');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('39', '36', '29');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('29', 'Dr. Dan Herschbach', 'Dr. Dan Herschbach', 'herschbach.jpg', 'Dr. Herschbach graduated from the University of Bucharest in 2001.
Since 2007 Dr. Herschbach has been running a private practice in the heart of Munich. He specializes in fixed prosthodontics and complex restorative dentistry with the CEREC system. His clinical work includes aesthetic dentistry, Digital Smile Design and ceramic restorations with CEREC,
2012 ISCD International Cerec Trainer.
Since 2014 he is Cerec Opinion Leader for CEE, Baltics and Greece.
Dr. Herschbach is a certified Specialist for CEREC and an accomplished lecturer.
He speaks nationally and internationally on all-ceramics and aesthetic dentistry with CEREC.', '1', '');


/* 29. Dr. Luca Tacchini */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('37', 'Strategies for optimizing the workflow in Direct and Indirect Restorations', 'The direct and indirect adhesive restorations are excellent solutions to recovery the compromised teeth and, at the same time, they allow an aesthetic upgrade with an extremely conservative approach.
In the lecture will be shown microscopy video to follow step by step the clinical procedures that lead to the aesthetic-functional goal and that allow you to get quality rehabilitations optimizing the times.
', '1', '30');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('40', '1', '30');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('40', '37', '30');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('38', 'THE  DIRECT RESTORATIONS IN THE POSTERIOR TEETH: THE SECRETS TO INCREASE THE QUALITY AND REDUCE THE TIMES', 'IN THE HANDS-ON, WHICH WILL BE EXECUTED ON MODELS CREATED AD HOC, IT WILL BE ILLUSTRATED The ideal stratification to minimize the contraction of composite materials AND TO GET AESTHETIC RESULTS ALWAYS BRILLIANT, WHICH ARE KEEPING EVEN WHEN NECESSARY TO CORRECT THE OCCLUSION.
THE SECOND-CLASS RESTORATIONS WILL BE FACED UP, BY EXPLAINING THE TRICKS AND TRIPS TO GET PERFECT CONTACT POINTS ALSO IN THE PRESENCE OF LARGE DEFICIT', '2', '30');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('41', '2', '30');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('41', '38', '30');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('30', 'Dr. Luca Tacchini', 'Dr. Luca Tacchini', 'tachinni.jpg', 'Dr Luca Tacchini
Graduated in Dentistry and Dental Prosthetics at the University of Brescia in 2007. He is an ESCD Active Member and a member of Amici di Brugg. He holds courses in Italy and abroad about direct and indirect aesthetic restorations; the practical course has come to his 21st Edition with 250 attendees. 
He founded the company Q&O  Quality and Optimization- that organizes course of dentistry in Italy.
He is author of articles related to restorative and fixed prosthesis.', '1', 'Italy');


/* 30. Dr. Joao Rua */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('39', 'Lets go vertical!', 'The treatment plan in Oral Rehabilitation is one of the most important factors in current Dental Medicine, to achieve the desired success.
If this plane involves vertical occlusion changes, it makes it even more specific.
It is intended with the presentation to provide guidance for when it is desired or necessary to change our vertical dimension of occlusion in modern and conservative oral rehabilitation.
', '1', '31');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('42', '1', '31');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('42', '39', '31');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('31', 'Dr. Joao Rua', 'Dr. Joao Rua', 'João Rua.jpg', 'Dr. Joao Rua graduated in Dental Medicine in IUEM (Instituto Universitrio Egas Moniz) in 1994. He is Post-graduate in Occlusion and Oral Rehabilitation by the University of Lille II, France, Postgraduate in Implantology, Postgraduate in Dental Sciences from the University of Krems, Austria. Dr. Rua is Director of the International Postgraduate Diploma of Minimally Invasive Adhesive Dentistry at IUEM, Assistant Professor of Occlusion and TMJ at IUEM, 2005-2007, Assistant Professor of Orofacial Pain and ATM at IUEM, 2007/2008, Assistant Professor of Oral Rehabilitation at IUEM, since 2007 and Visiting Professor of Occlusion and TMJ for Dental Technicians course ESSEM since 2012. 
', '1', '');


/* 31. Dr. Paulo Monteiro & Dr. Ines Barbosa */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('40', 'Aesthetic composite resins: what we have, how to use it and what will the future bring to us', 'The Composite resin is one of the materials most used in the daily clinical practice. It can combine in a easy way aesthetic, function and longevity when well chosen and applied.
Nowadays we have different composite in the market. Different on the chemistry, inorganic particles size and optical properties. What we need for our clinical practice in anterior and posterior tooth?
For that materials we have different techniques that we can use if we want to multi-layer, dual layer or use only a single shade. How can we apply this different techniques in a easy and predictable way and wish one we should use?
Every year we have new composites, new formulas, rebranding of old composites. In our daily practice what do we really need and what will be the new developments and trends of the composite resins in the near future?
The objective of this lecture is to discussed and clarify al this questions that we usually have in our dental offices.', '1', '32');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('43', '1', '32');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('43', '40', '32');

INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('44', '1', '32');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('44', '40', '32');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('41', 'Simple Direct Composite Restorations in anterior toothThe layering techniques with composite resins are procedures described some years ago and we used it regularity in our clinical practice. Some of these techniques use several different opacities and increments of composites,leading to the dentist get confused in deciding which one to choose. The clinical reality of most dental clinics are based on simple procedures, easy to perform with suitable aesthetic and longlasting results. Some simple layeringtechniques makes the dentist daily work simple and predictable, enabling make direct esthetic and invisible composite resin restorations.In this Hands-On course we intend to work with a simplified technique for estheticrestorations, use only two opacities of composite resines.We will discuss the step by step clinical procedures in anterior tooth in order to preserve the remaining tooth tissue and follow the harmony and properties of the natural teeth.The participants will have the opportunity to make a class IV restoration in a central incisor applying the technique lectured, from the planning to finishing and polishing.', 'Simple Direct Composite Restorations in anterior toothThe layering techniques with composite resins are procedures described some years ago and we used it regularity in our clinical practice. Some of these techniques use several different opacities and increments of composites,leading to the dentist get confused in deciding which one to choose. The clinical reality of most dental clinics are based on simple procedures, easy to perform with suitable aesthetic and longlasting results. Some simple layeringtechniques makes the dentist daily work simple and predictable, enabling make direct esthetic and invisible composite resin restorations.
In this Hands-On course we intend to work with a simplified technique for estheticrestorations, use only two opacities of composite resines.We will discuss the step by step clinical procedures in anterior tooth in order to preserve the remaining tooth tissue and follow the harmony and properties of the natural teeth.The participants will have the opportunity to make a class IV restoration in a central incisor applying the technique lectured, from the planning to finishing and polishing.', '2', '32');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('45', '2', '32');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('45', '41', '32');

INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('46', '2', '32');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('46', '41', '32');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('32', 'Dr. Paulo Monteiro ', 'Dr. Paulo Monteiro ', '0.jpg', ' Doctor of Dental Medicine, Instituto Superior de Cincias da Sade  Sul, Caparica, Portugal
 Masters degree in Dental Medicine, Instituto Superior de Cincias da Sade Egas Moniz, Caparica, Portugal
 Post-graduation in Aesthetic and Restorative Dentistry, ISCSEM, Caparica,Portugal
 International Professional Course of CAD/CAM technology in Restorative Dentistry, University of Zurich
 Coordinator and Professor in Aesthetic and Restorative Dentistry Post-graduation program at ISCSEM, Caparica, Portugal
 Head of Clinical Aesthetic Dentistry Advanced Consultation, ISCSEM, Caparica, Portugal
 Diploma in Advanced Studies at the University of Santiago de Compostela, Spain
 PhD student in Dentistry in Universidade de Santiago de Compostela, Spain
Involved in research of new dental materials, including composite resins, dental adhesives, dental ceramics and new digital technologies
 Active member of the International Association for Dental Research, which regularly presents research in the dental materials field
 Author and co-author of some publications in scientific international journals
 Lecturer in aesthetic dentistry with more than 200 lectures and courses around the world
 Style Italiano effective member
 Member of the General Council of the Portuguese Dental Association-
 Exclusive clinical practice in aesthetic and cosmetic dentistry', '1', 'Portugal');
INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('33', ' Dr. Ines Barbosa', ' Dr. Ines Barbosa', '1.jpg', 'Ines Barbosa DDS
Received her degree in Dentistry from Universidade Fernando Pessoa, Porto, Portugal , in 2007.
In 2008 concluded the course of Endodontics for Generalists, with Professor Rui Pereira da Costa in CUF Descobertas, Lisboa, Portugal.
Received her Diploma of Aesthetic Dentistry in 2011 from Clinica Aparicio with Universidad Internacional de Catalunya , Barcelona, Spain.
In this same year she became member of the Brazilian Society of Aesthetic Dentistry, SBOE, Rio de Janeiro, Brazil, from which she was elected the Ambassador in 2017.
In the year 2015 finalised the Posterior Master Course in Restorative Dentistry with Professor Federico Ferraris in Milan, Italy, and the Anterior Master Course in London, UK, where she obtained the first prize.
Participated in several courses and congresses worldwide with the focus on Aesthetic Dentistry, Integrated Aesthetic Dentistry, Smile Design and Multidisciplinary approaches.
She cooperates with Professor Marleen Peumans from KU Leuven, giving courses for composite restorations, and full mouth rehabilitations with minimal invasive techniques .
Private practice in Restorative Dentistry . Cooperation in multidisciplinary teams in Portugal and Belgium.
', '1', 'Portugal');


/* 32. Dr. Javier Tapia */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('42', 'Emulation of teeth ageing with composite resin: challenges and feasibility ', 'The Bio-Emulation approach as written in structural analysis and visual synthesis defined the new bases to consider for replication of natural tooth structures with composite resin. The penta_laminar concept represents the ultimate implementation of this philosophy: analysing different ageing stages to build a dynamic shade concept that adapts to nature. However, feasibility of application of this concept is compromised by its intrinsic complexity, not accesible to all clinical conditions. By analysing the key factors of natural structures ageing process and applying this knowledge to the material selection, it is possible to simplify techniques to make them approachable in all situations. From a bi-laminar technique to the penta_laminar technique we can learn to adapt our work in order to optimise the clinical outcome achieving cost-effective treatments to cover our patients needs and expectations.', '1', '34');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('47', '1', '34');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('47', '42', '34');


INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('43', 'Essentia: the smart simplification of direct composite restorations.', 'Leonardo da Vinci said that simplicity is the ultimate way of sophistication. When it comes to developing an aesthetic dental composite material, we tend to overcomplicate things, caused either by old recurring concepts, by industry competitiveness or by wrong analysis of nature observation. However, ultimate simplification is possible when we jump across these problems and start from scratch. Developed within the GC Europe Restorative Advisory Board, Essentia represents the minimalism inside the composite world, a simplified system that enables an easy but effective aesthetic restoration with a very limited amount of shades. The complete kit, with just 7 shades and 4 modifiers, becomes a paradigm shift in layering composites.
Theoretical Program 
- Simplification in layering techniques:
- Is it possible to simplify? How many shades do we need?
- Essentia: the smart simplification.
- custom_eyes by Bio-Emulation: the customized shade guide. - Shade selection: shade guide vs button technique.
Practical Program
- Demo Class IV restoration with simplified technique: - Preparation.
- Bonding.
- Layering.
- Finishing and polishing.
- Demo Class I restoration with simplified technique: - Preparation.
- Bonding.
- Layering.
- Finishing and polishing.', '2', '34');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('48', '2', '34');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('48', '43', '34');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('34', 'Dr. Javier Tapia', 'Dr. Javier Tapia', 'Tapia.jpg', 'Javier Tapia Guadix was born in 1978 in Madrid, Spain. He finished dental school at the European University of Madrid in 2003. Working then as associate professor in the prosthetics department during 2004.
In 2005 he started his career as professional computer graphics artist, focused on illustration, animation and application development. He founded the company Juice - Dental Media Design for this purpose.
He received the Collegiate Merit Award by the Spanish College of Dentists from the 1st Region in 2005, for his collaboration in the commission of new technologies.
In 2011 he founded together with Panaghiotis Bazos and Gianfranco Politano the Bio-Emulation group.
He actively collaborates with several universities across Europe and is member of GC Restorative Advisory Board. In 2014 he became official reviewer for the Journal of Clinical and Experimental Dentistry. Then in 2017 he became official reviewer for the International Journal of Esthetic Dentistry.
Javier works in his private practice in Madrid, focused on restorative dentistry and aesthetics.
He is an international lecturer with participation in more than 200 congress, hands-on courses and live courses. He published several articles in restorative dentistry, dental photography and computers in dentistry.', '1', 'Spain');


/* 33. Dr. Gaetano Paolone */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('44', 'Translucency as the key factor in esthetic outcome in direct anterior and posterior restorations.', 'When planning a restoration, the color of the substrate should also be taken into account in order to achieve a satisfactory esthetic outcome. In some clinical situations, clinicians are asked to hide the substrate with the restoration; in other situations, clinicians can take advantage of an unaltered color substrate and therefore select less opaque materials that exploit the color of the underlying tissue. Differences in direct anteriors and direct posteriors will be outlined during the lecture.', '1', '35');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('49', '1', '35');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('49', '44', '35');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('35', 'Dr. Gaetano Paolone', 'Dr. Gaetano Paolone', 'paolone.jpg', 'Dr. Gaetano Paolone 
Adjunct Professor, Restorative Dentistry, Universit Vita Salute San Raffaele, Milano.

Adjunct Professor, Restorative Dentistry, Universit Vita Salute San Raffaele, Milano.
Active Member: AIC (Italian Academy of Restorative Dentistry), IAED (Italian Academy of Esthetic Dentistry), (Italian Academy of Microscopic Dentistry). Private Practice, Rome; Lecturer, Master in Esthetics and Restorative Dentistry, University of Bologna, Italy;
Author and co-author of several publications in scientific international journals; Lecturer in national and international courses and congresses; Author of chapters in "Endoprotetyka", a book from Maciej Zarov and Moderna odontoiatria estetica Workflow dalla A alla Z from Vincenzo Musella, books from Quintessence pub.', '1', 'Italy');


/* 34. Dr. Raquel Zita */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('45', 'The foundation of aesthetics in ImplantDentistry starts on surgery - from Red to White"', 'Thanks to the latest developments of medical technologies and simultaneous advancement of medical sciences, Medicine became more efficient, faster, and most importantly safer. Implantology has not stay aside from the technological revolution of the 21st century. 
Nowadays, we can make Predictable Implant Procedures with much more confidence, in shorter periods, and with better functional and aesthetic results. 
The aim of this conference is to present and discuss the latest innovation trends in the modern Implantology, showing that the foundation of aesthetic implant dentistry starts with surgery (Red), has a component of periodontology (Pink) and finishes with prosthetic rehabilitation (White). 
We aim to cover several state-of-the-art topics in the field, including: Implant Stability Quotient (ISQ) Measure, predictable advanced surgical techniques, Plasma Rich Fibrin (PRF),  and how can these techniques help us to obtain better clinical results.
These current procedures can make a great difference and impact in our daily practice.', '1', '36');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('50', '1', '36');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('50', '45', '36');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('36', 'Dr. Raquel Zita', 'Dr. Raquel Zita', 'Zita.jpg', '

Dr. Raquel Zita is a Dental Medical Doctor by the Faculty of Dental Medicine of the University of Oporto (FMDUP) (1996-2002) and Oral surgeon (specialist in oral surgery) by the Portuguese Dental Medical Association (OMD). She is a MINEC knight active member, opinion leader of Megagen Portugal, KOL of DSD by Coachman and Opinion leader of Osteobiol biomaterials. Dr. Zita is an IFZI instructor, collaboration with Bredent group, expert on Oralsurgerytube, Dentinaltubules and Dental XP educational platforms.  
Her private practices is in Portugal and its dedicated exclusively to Implantology, advanced oral surgery and rehabilitation. She is a mentor of professional group Follow the RED and reviewer of Clinical Implant Dentistry and Related Research journal.
', '1', 'Portugal');


/* 35. Dr. Pablo Santoro */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('46', 'POSTERIORRESINS: Present, Past and FUTURE.', 'Reasons to choose resin,Physical and mechanicalscharasteristics of resins, Indications:Direct o Indirect, Build-up resins, Deep margin elevation, Principles of tooth preparation, Simple stratification Technique, polishing protocol, Adhesives resins cements for bondingcomposite restorations, clinical cases.', '1', '37');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('51', '1', '37');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('51', '46', '37');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('37', 'Dr. Pablo Santoro', 'Dr. Pablo Santoro', 'santoro.jpg', 'Dr. Pablo Santoro  

Graduated in National University of La Plata Buenos Aires Argentina in 2001
Director in CEDGroup Odontology from 2001 to 2018
Professor in National University of La Plata from 2000 to 2007.
Professor in Kennedy University from 2002 to 2009
Associated profesor in Catholic University from 2009 to 2016.
National and international lecturer.
Training courses Hand on modality in: Argentina, chile, Paraguay, Brasil, Bolivia, Venezuela, Mexico, Ecuador, Per.
Guest Teacher in Brazilian Association of Dentistry in Goiania.
Coordinator of Oral Health Programs.', '1', 'Argentina');


/* 36. Dr. Cosmin Dima */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('47', 'Sinus Lifting - everything from detailed anatomy to very complex clinical cases', '', '1', '38');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('52', '1', '38');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('52', '47', '38');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('38', 'Dr. Cosmin Dima', 'Dr. Cosmin Dima', 'dima.jpg', 'Dr. Cosmin Dima has graduated from the Faculty of Dentistry, University of Medicine and Pharmacy Carol Davila Bucuresti (UMF) in 2001. Since then he has continued and developed professionally and became a certified implantologist in 2004. From 2014 he holds a masters degree in periodontology and in 2016 he started his PhD in surgery on the theme Bone regeneration. During the years he also became member in different societies such as: Society of Esthetic Dentistry in Romania (SSER), European Society of Cosmetic Dentistry ( ESCD) , International Congress of Oral Implantologists (ICOI), Member of Implant Prosthetic Section of the ICOI. During the last years Dr Cosmin Dima sustained a lot of conferences in the field of prosthetic dentistry, esthetics and advanced surgery.', '1', 'Romania');


/* 37. Dt. Pedro Brito */
INSERT INTO Abstracts (objectId, title, description, type, speakerId) VALUES ('48', 'Digital Revolution - The Other Side of Art', 'The era of technology began with digital photography, a key element in team communication. Increasingly, digital help is present in the daily routine, providing greater predictability in the resolution of clinical cases. Showing how this use helps teamwork, bringing a wider variety of solutions, will be the basis of my presentation.
We can conclude that the Dental Art has today an ally in the most rigor, in the rapid response, and in the ever utopia of the management of time. Welcome to the Digital Age ... The Other Side of Art', '1', '39');
INSERT INTO SpeakerTypeMap (objectId, typeId, speakerId) VALUES ('53', '1', '39');
INSERT INTO AbstractsSpeakersMap (objectId, abstractId, speakerId) VALUES ('53', '48', '39');


INSERT INTO Speakers (objectId, name, firstName, picture, about, type, country) VALUES ('39', 'Dt. Pedro Brito', 'Dt. Pedro Brito', 'Brito.jpg', 'DT Pedro Brito
Degree in Dental Prosthesis, ESSEM  Egas Moniz

He is  Professor of the 3rd Post-Graduation in Aesthetic Dentistry, at ISCSEM  Egas Moniz.

He had published an  article in the CDA journal, vol 40, n6 June 2012 The importance of the optical properties in dental silica-based ceramics with

Paulo Monteiro DMD, MSC, Joana Pereira MSC and Ricardo Alves DMD, MSC.

He is  Professor of the 1st Post-Graduation in Advanced Biomimetic Dentistry, in ISCSEM  Egas Moniz, Lecturer of the 2nd Journey of dental prosthesis, ISCSEM  Egas Moniz, Speaker of the 7th SPED Congress with the theme innovation in Biomimetics , Lecturer at the Congress of Dental Prosthesis Technicians, with the theme The Other Side of Smile .

Mr. Brito is Professor of the Post-Graduation in Minimally Invasive Adhesive Dentistry, DAMI at the Higher Institute of Health Sciences Egas Moniz since 2016.

He publiched  an article in QDT 2017, The Biodigital Alveolar Model: An Alternative for a Predictable Esthetic Outcome with Ultrathin Porcelain Veneers, with Paulo Monteiro, DDS, MSc, Joo Rua, DDS, Silas Duarte Jr, DDS, MS, PhD, Jos Joo Mendes DDS, PhD in 2016

Mr. Brito is the Director of the Laboratory BioMimetik lab PEDRO BRITO.', '1', 'Portugal');










/*======================================================================================================*/
/*SCHEDULE==============================================================================================*/
DELETE FROM ScheduleAbstractMap;
DELETE FROM Schedule;

/* 1 - Prof Dr. Marius Steigmann */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('1', '1', '9');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('1', '14:00', '16:00', '1', '1', 'Treatment Options for the aesthetic zone
Session Chairpersons: Dr. Wolfgang Richter & Dr. Luca Dalloca', '1', '1');

/* 2 - Dr. Gaetano Paolone */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('2', '2', '44');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('2', '14:00', '15:00', '2', '1', 'Translucency as the key factor in esthetic outcome in direct anterior and posterior restorations.
Session Chairpersons: Dr. Seppo Lindroos & Dr. Daniel Baketic', '2', '1');

/* 3 - Prof. Dr. Rare Paravina */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('3', '3', '30');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('3', '15:00', '16:00', '2', '1', 'New Color Matching Curriculum for Dental Professionals and Students - An Overview.
Session Chairpersons: Dr. Seppo Lindroos & Dr. Daniel Baketic', '3', '1');

/* 4 - Coffee Break */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('4', '4', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('4', '16:00', '16:30', '', '1', 'Coffee Break', '4', '4');

/* 5 - Dr. Pablo Santoro */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('5', '5', '46');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('5', '16:30', '17:30', '1', '2', 'Posterior Resins - Present, Past and Future.
Session Chairpersons: Dr. Luca Dalloca & Dr. Karl Schwaninger', '5', '1');

/* 6 - Dr. Raquel Zita */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('6', '6', '45');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('6', '16:30', '17:30', '1', '2', 'The foundation of aesthetic in implant dentistry: from Red to White.
Session Chairpersons: Dr. Wolfgang Richter & Dr. Maria Csillag', '6', '1');

/* 7 - ESCD Certification */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('7', '7', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('7', '16:30', '19:00', '3', '2', 'ESCD Certification.
Session Chairpersons: Dr. Verena Nizic, Dr. Mauro Bazzoli, Dr. Igor Ristic, Dr. Attilio Muscio, Dr. Gregory Brambila & DT Przemek Seweryniak', '7', '2');

/* 8 - Dr. Luca Tacchini */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('8', '8', '38');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('8', '16:30', '19:00', '4', '2', 'The direct restorations in the posterior teeth: the secrets to inscrease the quality and reduce the times.
Session Chairpersons: Dr. Alexandr Kozhemiak', '8', '2');

/* 9 - Dr. Paulo Monteiro & Dr. Ines Barbosa */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('9', '9', '40');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('9', '17:30', '19:00', '1', '2', 'Aesthetic composite resins: what we have, how to use it and what will the future bring to us.
Session Chairpersons: Dr. Luca Dalloca & Dr. Karl Schwaninger', '9', '1');

/* 10 - Dr. Joao Rua */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('10', '10', '39');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('10', '17:30', '18:30', '2', '2', 'Let''s go vertical!
Session Chairpersons: Dr. Wolfgang Richter & Dr. Maria Csillag', '10', '1');

/* 11 - Dr. Markus Troeltzsch */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('11', '11', '27');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('11', '18:30', '19:00', '2', '2', 'To graft or not to graft - a dilemma.
Session Chairpersons: Dr. Wolfgang Richter & Dr. Maria Csillag', '11', '1');


/*================== DAY 2 ===============================
/* 12 - Dr. Gianfranco Politano & Dr. Marleen Peumans */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('12', '12', '8');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('12', '09:00', '10:00', '1', '5', 'Indirect bonded partial restorations in the posterior region - new concepts.
Session Chairpersons: Dr. Selim Pamuk & Dr. Kleanthis Manolakis', '12', '1');

/* 13 - Dr. Luca Tacchini */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('13', '13', '37');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('13', '09:00', '10:00', '2', '5', 'Strategies for optimizing the workflow in Direct and Indirect Restorations.
Session Chairpersons: Dr. Antonio Olivo  & Dr. Bogdan Culic', '13', '1');

/* 14 - Dr. Rade Paravina */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('14', '14', '31');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('14', '09:00', '11:00', '3', '5', 'New color matching curriculum for dental professionals and students.
Session Chairpersons: Dr. Teresa Szupiany', '14', '2');

/* 15 - Prof. Dr. Andre Saadoun */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('15', '15', '20');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('15', '09:00', '11:00', '4', '5', 'Soft Tissue Management around Teeth and Implants
Session Chairpersons: Dr. Gregory Camaleonte', '15', '2');

/* 16 - Prof. Dr. Rafael Decurcio */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('16', '16', '13');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('16', '10:00', '11:00', '1', '5', 'Cementation of Ceramic Veneers - The Science as the basis of Clinical Decisions
Session Chairpersons: Dr. Selim Pamuk & Dr. Kleanthis Manolakis', '16', '2');

/* 17 - Dr. Jorge Andrea Cardoso */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('17', '17', '17');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('17', '10:00', '11:00', '2', '5', 'Full-arch immediate implants - facially driven planning and prosthetics
Session Chairpersons: Dr. Antonio Olivo  & Dr. Bogdan Culic', '17', '2');

/* 18 - Coffee Break */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('18', '18', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('18', '11:00', '11:30', '', '5', 'Coffee Break', '18', '4');

/* 19 - Eric Van Dooren & Dr. Nuno Sousa Dias */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('19', '19', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('19', '11:30', '13:00', '1', '6', 'Team approach in challenging aesthetic compromised cases
Session Chairpersons: Dr. Selim Pamuk & Dr. Kleanthis Manolakis', '19', '1');

/* 20 - Dr. Giuseppe Chiodera */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('20', '20', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('20', '11:30', '13:00', '2', '6', 'Direct posterior restorations from diagnosis to essential lines
Session Chairpersons: Dr. Antonio Olivo & Dr. Bogdan Ciulic', '20', '1');

/* 21 - Prof. Dr. Liu Feng */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('21', '21', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('21', '11:30', '13:00', '3', '6', 'From Digital guided immediate implant placement to esthetic chairside restoration
Session Chairpersons: Dr. Teresa Szupiany', '21', '2');

/* 22 - Prof. Dr. Andre Saadoun */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('22', '22', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('22', '11:30', '13:00', '4', '6', 'Soft Tissue Management around Teeth and Implants
Session Chairpersons: Dr. Gregory Camaleonte', '22', '2');

/* 23 - ESCD Board Meeting */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('23', '23', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('23', '11:30', '13:00', '5', '6', 'ESCD Board Meeting', '23', '2');

/* 24 - Lunch */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('24', '24', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('24', '13:00', '14:00', '', '6', 'Lunch', '24', '4');

/* 25 - Dr. Roberto Rossi */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('25', '25', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('25', '14:00', '15:00', '1', '7', 'Esthetic Crown Lenghtening - the role of the periodontist in creating a beautiful smile
Session Chairpersons: Dr. Mauro Bazzoli & Dr. Marco Nicastro', '25', '1');

/* 26 - Dr. Louis Hardan */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('26', '26', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('26', '14:00', '15:00', '2', '7', 'Dental documentation and communication: a new easy way for everyone, every day
Session Chairpersons: Dr. Verena Nizic & Dr. Igor Ristic', '26', '1');

/* 27 - Dr.Paulo Monteiro */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('27', '27', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('27', '14:00', '16:00', '3', '7', 'Simple direct composite restorations in anterior teeth 
Session Chairpersons: Dr. Kamila Azimova', '27', '2');

/* 28 - Dr. Walter Renne */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('28', '28', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('28', '14:00', '16:00', '4', '7', 'How to create a pre-surgical provisional restoration from an implant plan 
Session Chairpersons: Dr. Daniel Baketic', '28', '2');

/* 29 - Dr. Giuseppe Chiodera */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('29', '29', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('29', '14:00', '16:00', '5', '7', 'Essential lines developed by Style Italiano, modern approach for creating aesthetic posterior restoration using 3M Bulk Fill material 
Session Chairpersons: Dr. Natasa Zeptic', '29', '2');

/* 30 - Dr. Javier Tapia */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('30', '30', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('30', '15:00', '16:00', '1', '7', 'Emulation of teeth ageing with composite resin: challenges and feasibility 
Session Chairpersons: Dr. Mauro Bazzoli & Dr. Marco Nicastro', '30', '1');

/* 31 - Dr. Juan Arias */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('31', '31', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('31', '15:00', '16:00', '2', '7', 'Aesthetics procedures in compromise implant situations: The aesthetic zone 
Session Chairpersons: Dr. Verena Nizic & Dr. Igor Ristic', '31', '1');

/* 32 - Coffee break */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('32', '32', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('32', '16:00', '16:30', '', '7', 'Coffee break', '32', '4');

/* 33 - Dr. Jordi Manauta */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('33', '33', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('33', '16:30', '18:00', '1', '8', 'Styleitaliano Tips and Tricks 
Session Chairpersons: Dr. Mauro Bazzoli & Dr. Marco Nicastro', '33', '1');

/* 34 - Dr. Diana Boangar */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('34', '34', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('34', '16:30', '17:15', '2', '8', 'Ortho-prosthetics interdisciplinary; from planning to execution 
Session Chairpersons: Dr. Verena Nizic & Dr. Igor Ristic', '34', '1');

/* 35 - Dr. Roberto Rossi */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('35', '35', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('35', '16:30', '19:00', '3', '8', 'The art of crown lengthening'' and feature the surgery in the Esthetic zone 
Session Chairpersons: Dr. Kamila Azimova', '35', '2');

/* 36 - Dr. Louis Hardan */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('36', '36', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('36', '16:30', '19:00', '4', '8', 'Documenting and communicating with mobile dental photography: all you need to know 
Session Chairpersons: Dr. Daniel Baketic', '36', '2');

/* 37 - ESCD Chairperson Meeting */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('37', '37', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('37', '16:30', '19:00', '5', '8', 'ESCD Chairperson Meeting', '37', '2');

/* 38 - Dr. Alecsandru Ionescu */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('38', '38', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('38', '17:15', '18:00', '2', '8', 'The Biological Guided Approach for predictable long term esthetic and functional results in implant patients 
Session Chairpersons: Dr. Verena Nizic & Dr. Igor Ristic', '38', '1');

/* 39 - Prof. Dr. Liu Feng */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('39', '39', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('39', '18:15', '19:00', '1', '8', 'To establish or to maintain Strategies for pink esthetics in implants 
Session Chairpersons: Dr. Mauro Bazzoli & Dr. Marco Nicastro', '39', '1');

/* 40 - Dr. Joao Barbosa */
INSERT INTO ScheduleAbstractMap (objectId, scheduleId, abstractId) VALUES ('40', '40', '');
INSERT INTO Schedule (objectId, beginTime, endTime, locationId, sectionId, name, abstractId, scheduleContentType) VALUES ('40', '18:15', '19:00', '2', '8', 'Digital Biomimetics: "Nature Copy / Nature Paste" 
Session Chairpersons: Dr. Verena Nizic & Dr. Igor Ristic', '40', '1');

