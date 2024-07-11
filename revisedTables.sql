CREATE DATABASE IF NOT EXISTS forte;
USE forte;

-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: forte
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action_logs`
--

DROP TABLE IF EXISTS `action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_logs` (
  `ARN` int NOT NULL,
  `CANDIDATE_ID` int DEFAULT NULL,
  `ACTION_ID` varchar(64) DEFAULT NULL,
  `ACTION_ON` datetime DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `UHA` blob,
  PRIMARY KEY (`ARN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_logs`
--

LOCK TABLES `action_logs` WRITE;
/*!40000 ALTER TABLE `action_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_choice`
--

DROP TABLE IF EXISTS `answer_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_choice` (
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANS_CHOICE_TEXT` varchar(2000) DEFAULT NULL,
  `IS_TEXT` tinyint DEFAULT NULL,
  `OLE_TEXT` int DEFAULT NULL,
  `OLE_IMAGE` int DEFAULT NULL,
  `ENTER_BY` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_choice`
--

LOCK TABLES `answer_choice` WRITE;
/*!40000 ALTER TABLE `answer_choice` DISABLE KEYS */;
INSERT INTO `answer_choice` VALUES (1,14112,'1.007x 10<sup>7</sup>nrTl',1,NULL,NULL,NULL),(1,14113,'Compton effect',1,NULL,NULL,NULL),(1,14114,'Nuclear radiations',1,NULL,NULL,NULL),(1,14115,'They are also known as cations',1,NULL,NULL,NULL),(1,14116,'They are also known as anions',1,NULL,NULL,NULL),(1,14117,'one',1,NULL,NULL,NULL),(1,14118,'Physical process',1,NULL,NULL,NULL),(1,14119,'Physical process',1,NULL,NULL,NULL),(1,14120,'Mass  in grams converted to products ',1,NULL,NULL,NULL),(1,14121,'2x  I(r<sup>10</sup>moldnr<sup>3</sup>',1,NULL,NULL,NULL),(1,14122,'5.85%  solution of sodium chloride',1,NULL,NULL,NULL),(1,14123,'Gas  is solute and solid is solvent ',1,NULL,NULL,NULL),(1,14124,'2',1,NULL,NULL,NULL),(1,14125,'Cathode  is positively charged',1,NULL,NULL,NULL),(1,14126,'Fe  is oxidized',1,NULL,NULL,NULL),(1,14127,'order  of reaction',1,NULL,NULL,NULL),(1,14128,'Refractomertic       ',1,NULL,NULL,NULL),(1,14129,'Equal  charges in the nucleus',1,NULL,NULL,NULL),(1,14130,'Rare  earth metals',1,NULL,NULL,NULL),(1,14131,'\'Li\'  has great tendency to form hydrates',1,NULL,NULL,NULL),(1,14132,'Sodium  sulphate',1,NULL,NULL,NULL),(1,14133,'AI',1,NULL,NULL,NULL),(1,14134,'Be',1,NULL,NULL,NULL),(1,14135,'Lead  chamber process',1,NULL,NULL,NULL),(1,14136,'An  alkali metal',1,NULL,NULL,NULL),(1,14137,'Cl<sub>2</sub>',1,NULL,NULL,NULL),(1,14138,'F',1,NULL,NULL,NULL),(1,14139,'Ferromagnetic behaviour',1,NULL,NULL,NULL),(1,14140,'Cast iron &gt; Steel &gt; wrought iron',1,NULL,NULL,NULL),(1,14141,'Ethane',1,NULL,NULL,NULL),(1,14142,'184 billion tonnes  ',1,NULL,NULL,NULL),(1,14143,'F<sub>2</sub>',1,NULL,NULL,NULL),(1,14144,'Pd',1,NULL,NULL,NULL),(1,14145,'AICIj',1,NULL,NULL,NULL),(1,14146,'They have high % age of hydrogen',1,NULL,NULL,NULL),(1,14147,'Acids',1,NULL,NULL,NULL),(1,14148,'Acid chloride',1,NULL,NULL,NULL),(1,14149,'Methyl alcohol ',1,NULL,NULL,NULL),(1,14150,'\'Phenol and acetone',1,NULL,NULL,NULL),(1,14151,'Addition reaction   ',1,NULL,NULL,NULL),(1,14152,'Reaction with HCN followed by reduction',1,NULL,NULL,NULL),(1,14153,'Formic acid',1,NULL,NULL,NULL),(1,14154,'Lactic acid',1,NULL,NULL,NULL),(1,14155,'The fractional distillation of crude oil',1,NULL,NULL,NULL),(1,14156,'65000',1,NULL,NULL,NULL),(1,14157,'Cotton',1,NULL,NULL,NULL),(1,14158,'CaH<sub>2</sub>PO<sub>4</sub>',1,NULL,NULL,NULL),(1,14159,'6.5-6',1,NULL,NULL,NULL),(1,14160,'To help plant to under go photosynthesis',1,NULL,NULL,NULL),(1,14201,'Properties which depend upon mass',1,NULL,NULL,NULL),(1,14202,'32',1,NULL,NULL,NULL),(1,14203,'Kilogram',1,NULL,NULL,NULL),(1,14204,'Shake the mixture with H<sub>2</sub>O, filter and dry the substance on the  filter paper',1,NULL,NULL,NULL),(1,14205,'NaCl and KC1',1,NULL,NULL,NULL),(1,14206,'Boyle\'s law',1,NULL,NULL,NULL),(1,14207,'Vapour  density      ',1,NULL,NULL,NULL),(1,14208,'Dalton\'s  law',1,NULL,NULL,NULL),(1,14209,'They   are   formed    when electrons   are removed from atoms',1,NULL,NULL,NULL),(1,14210,'Na(s) + e&quot; - &gt; Na<sup>+</sup> (g) ',1,NULL,NULL,NULL),(1,14211,'Na and F',1,NULL,NULL,NULL),(1,14212,'Compton effect',1,NULL,NULL,NULL),(1,14213,'Infinite',1,NULL,NULL,NULL),(1,14214,'a  sphere',1,NULL,NULL,NULL),(1,14215,'LiCl',1,NULL,NULL,NULL),(1,14216,'Heavy substances',1,NULL,NULL,NULL),(1,14217,'0.4184 J',1,NULL,NULL,NULL),(1,14218,'Enthalpy change     ',1,NULL,NULL,NULL),(1,14219,'Dynamic',1,NULL,NULL,NULL),(1,14220,'Determine the rate of reaction',1,NULL,NULL,NULL),(1,14221,'Van der Waal',1,NULL,NULL,NULL),(1,14222,'molarity',1,NULL,NULL,NULL),(1,14223,'0.05',1,NULL,NULL,NULL),(1,14224,'Fe is oxidized',1,NULL,NULL,NULL),(1,14225,'-0.5',1,NULL,NULL,NULL),(1,14226,'Loses electrons      ',1,NULL,NULL,NULL),(1,14227,'Decrease the number of collisions',1,NULL,NULL,NULL),(1,14345,'1.54A<sup>0</sup>',1,NULL,NULL,NULL),(1,14346,'Toluene',1,NULL,NULL,NULL),(1,14347,'Alkane',1,NULL,NULL,NULL),(1,14348,'Reforming of petroleum',1,NULL,NULL,NULL),(1,14349,'Ketone',1,NULL,NULL,NULL),(1,14350,'Formic acid',1,NULL,NULL,NULL),(1,14351,'I<sub>2</sub> and Na<sub>2</sub>CO<sub>3</sub>',1,NULL,NULL,NULL),(1,14352,'With  hydrogen  cyanide   an  aldehyde  is formed',1,NULL,NULL,NULL),(1,14353,'Nitrogen gas',1,NULL,NULL,NULL),(1,14354,'Body can synthesize',1,NULL,NULL,NULL),(1,14355,'Both are soluble in water',1,NULL,NULL,NULL),(1,14356,'Saponification number',1,NULL,NULL,NULL),(1,14357,'N, <em>P, K</em>',1,NULL,NULL,NULL),(1,14358,'Clay',1,NULL,NULL,NULL),(1,14359,'2ppm - 6ppm',1,NULL,NULL,NULL),(1,14360,'Copper sulphate     ',1,NULL,NULL,NULL),(2,14228,'Quinoline is a catalyst',1,NULL,NULL,NULL),(2,14229,'IIB',1,NULL,NULL,NULL),(2,14230,'10',1,NULL,NULL,NULL),(2,14231,'Na<sub>2</sub>B<sub>4</sub>O<sub>7</sub>     ',1,NULL,NULL,NULL),(2,14232,'d-orbital ',1,NULL,NULL,NULL),(2,14233,'Ga',1,NULL,NULL,NULL),(2,14234,'Neutral',1,NULL,NULL,NULL),(2,14235,'In the atmosphere',1,NULL,NULL,NULL),(2,14236,'Red brown liquid ',1,NULL,NULL,NULL),(2,14237,'CI<sup>-</sup>',1,NULL,NULL,NULL),(2,14238,'XeO<sub>4 </sub>',1,NULL,NULL,NULL),(2,14239,'Gangue',1,NULL,NULL,NULL),(2,14240,'Paramagnetic nature of transition element',1,NULL,NULL,NULL),(2,14241,'Neopentene',1,NULL,NULL,NULL),(2,14242,'They exist in homologous series',1,NULL,NULL,NULL),(2,14243,'Polymerization ',1,NULL,NULL,NULL),(2,14244,'Alkynes',1,NULL,NULL,NULL),(2,14245,'HSO<sup>-</sup><sub>4</sub>',1,NULL,NULL,NULL),(2,14246,'Petrol',1,NULL,NULL,NULL),(2,14247,'They have an electrophilie carbon',1,NULL,NULL,NULL),(2,14248,'Nascent hydrogen',1,NULL,NULL,NULL),(2,14249,'Carboxylic acid',1,NULL,NULL,NULL),(2,14250,'Base',1,NULL,NULL,NULL),(2,14251,'Secondary alcohols',1,NULL,NULL,NULL),(2,14252,'Ethanal',1,NULL,NULL,NULL),(2,14253,'CH<sub>3</sub>COOC<sub>2</sub>H<sub>5</sub>',1,NULL,NULL,NULL),(2,14254,'Sulphuric acid',1,NULL,NULL,NULL),(2,14255,'Glycerides of unsaturated fatty acids',1,NULL,NULL,NULL),(2,14256,'Branched linear polymer',1,NULL,NULL,NULL),(2,14257,'Natural products',1,NULL,NULL,NULL),(2,14258,'nitrogen',1,NULL,NULL,NULL),(2,14259,'Hydrosphere',1,NULL,NULL,NULL),(2,14260,'Carbon dioxide',1,NULL,NULL,NULL),(2,14301,'Passing electric current through molten salt ',1,NULL,NULL,NULL),(2,14302,'Democritus',1,NULL,NULL,NULL),(2,14303,'Empirical formula/n = molecular formula',1,NULL,NULL,NULL),(2,14304,'Fast   moving   component    from   a   slow moving component',1,NULL,NULL,NULL),(2,14305,'Volatile or thermally unstable',1,NULL,NULL,NULL),(2,14306,'Liquid',1,NULL,NULL,NULL),(2,14307,'127°C and 1 atm',1,NULL,NULL,NULL),(2,14308,'Frozen into a solid',1,NULL,NULL,NULL),(2,14309,'Empty spaces present in the structure',1,NULL,NULL,NULL),(2,14310,'Good conductivity in solid state',1,NULL,NULL,NULL),(2,14311,'It is brittle',1,NULL,NULL,NULL),(2,14312,'It did not account for the attraction between proton and  neutron',1,NULL,NULL,NULL),(2,14313,'Electron pair repulsion ',1,NULL,NULL,NULL),(2,14314,'N',1,NULL,NULL,NULL),(2,14315,'One unpaired electron ',1,NULL,NULL,NULL),(2,14316,'Nanometer',1,NULL,NULL,NULL),(2,14317,'Calories',1,NULL,NULL,NULL),(2,14318,'Bond strength',1,NULL,NULL,NULL),(2,14319,'Decrease____ increase ',1,NULL,NULL,NULL),(2,14320,'Sodium hydroxide ',1,NULL,NULL,NULL),(2,14321,'A redox  reaction is taking place.',1,NULL,NULL,NULL),(2,14322,'Normality',1,NULL,NULL,NULL),(2,14323,'5.58gNaCI/100g',1,NULL,NULL,NULL),(2,14324,'NaOH',1,NULL,NULL,NULL),(2,14325,'2.5V',1,NULL,NULL,NULL),(2,14326,'It increases with decrease in the size  of cathode ',1,NULL,NULL,NULL),(2,14327,'Invertase',1,NULL,NULL,NULL),(2,14328,'6.25g',1,NULL,NULL,NULL),(2,14329,'Non-metal',1,NULL,NULL,NULL),(2,14330,'Bohr',1,NULL,NULL,NULL),(2,14331,'Li',1,NULL,NULL,NULL),(2,14332,'Dehydration ',1,NULL,NULL,NULL),(2,14333,'Pb<sup>2+</sup>',1,NULL,NULL,NULL),(2,14334,'AI<sub>2</sub>O<sub>3</sub>',1,NULL,NULL,NULL),(2,14335,'Both exhibit allotropic forms',1,NULL,NULL,NULL),(2,14336,'SbH<sub>3</sub>',1,NULL,NULL,NULL),(2,14337,'HCIO',1,NULL,NULL,NULL),(2,14338,'Bromine',1,NULL,NULL,NULL),(2,14339,'5',1,NULL,NULL,NULL),(2,14340,'Outer transition elements',1,NULL,NULL,NULL),(2,14341,'5',1,NULL,NULL,NULL),(2,14342,'Chain isomerism',1,NULL,NULL,NULL),(2,14343,'Plastic',1,NULL,NULL,NULL),(2,14344,'An electrophilic addition',1,NULL,NULL,NULL),(2,14101,'Number of electrons',1,NULL,NULL,NULL),(2,14102,'0.5',1,NULL,NULL,NULL),(2,14103,'4.4g C<sub>2</sub>H<sub>5</sub>OH',1,NULL,NULL,NULL),(2,14104,'Chromatography',1,NULL,NULL,NULL),(2,14105,'Their R<sub>f</sub> values',1,NULL,NULL,NULL),(2,14106,'PV = nRT',1,NULL,NULL,NULL),(2,14107,'Fixed  shapes ',1,NULL,NULL,NULL),(2,14108,'Low temperature and low pressure',1,NULL,NULL,NULL),(2,14109,'Atom of helium in gaseous state at high temperature',1,NULL,NULL,NULL),(2,14110,'Sulphuric acid',1,NULL,NULL,NULL),(2,14111,'Hydrogen bond',1,NULL,NULL,NULL),(2,14112,'1.9678x 107m-l',1,NULL,NULL,NULL),(2,14113,'Stark effect ',1,NULL,NULL,NULL),(2,14114,'In the form of continuous waves',1,NULL,NULL,NULL),(2,14115,'They  are larger than the atoms from which they  were formed ',1,NULL,NULL,NULL),(2,14116,'They are formed when atoms gain electrons',1,NULL,NULL,NULL),(2,14117,'two',1,NULL,NULL,NULL),(2,14118,'Endothermic process',1,NULL,NULL,NULL),(2,14119,'Endothermic process',1,NULL,NULL,NULL),(2,14120,'Total  pressure of the reactants',1,NULL,NULL,NULL),(2,14121,'1.41  x 10&quot;&quot;<sup>5</sup> mol dm&quot;&quot;<sup>3</sup>',1,NULL,NULL,NULL),(2,14122,'18.0%  solution of glucose',1,NULL,NULL,NULL),(2,14123,'Liquid  is solute and solid is solvent',1,NULL,NULL,NULL),(2,14124,'3',1,NULL,NULL,NULL),(2,14125,'Anode  is negatively charged',1,NULL,NULL,NULL),(2,14126,'CI<sub>2</sub> is oxidized',1,NULL,NULL,NULL),(2,14127,'Average  rate of reaction',1,NULL,NULL,NULL),(2,14128,'Titration',1,NULL,NULL,NULL),(2,14129,'Decreasing  charges in the nucleus',1,NULL,NULL,NULL),(2,14130,'Alkaline  earth metals',1,NULL,NULL,NULL),(2,14131,'\'Li\'  is not affected by air',1,NULL,NULL,NULL),(2,14132,'Potassium  sulphate',1,NULL,NULL,NULL),(2,14133,'Fe',1,NULL,NULL,NULL),(2,14134,'AI',1,NULL,NULL,NULL),(2,14135,'Haber\'s  process',1,NULL,NULL,NULL),(2,14136,'A transition  element',1,NULL,NULL,NULL),(2,14137,'Br<sub>2</sub>',1,NULL,NULL,NULL),(2,14138,'CI',1,NULL,NULL,NULL),(2,14139,'Diamagnetic behaviour',1,NULL,NULL,NULL),(2,14140,'Wrought iron &gt; steel &gt; cast iron',1,NULL,NULL,NULL),(2,14141,'Propane',1,NULL,NULL,NULL),(2,14142,'1.84 billion tonnes ',1,NULL,NULL,NULL),(2,14143,'C1<sub>2</sub>',1,NULL,NULL,NULL),(2,14144,'Anhyd. AICI<sub>3</sub>',1,NULL,NULL,NULL),(2,14145,'BeCI<sub>2</sub>',1,NULL,NULL,NULL),(2,14146,'They have a ring structure',1,NULL,NULL,NULL),(2,14147,'Alkyl halide',1,NULL,NULL,NULL),(2,14148,'Acids',1,NULL,NULL,NULL),(2,14149,'Propyl alcohol',1,NULL,NULL,NULL),(2,14150,'Phenol and methanal',1,NULL,NULL,NULL),(2,14151,'Oxidation reaction ',1,NULL,NULL,NULL),(2,14152,'Treatment with HCN followed by oxidation',1,NULL,NULL,NULL),(2,14153,'Acetic acid',1,NULL,NULL,NULL),(2,14154,'Ethanoic acid',1,NULL,NULL,NULL),(2,14155,'The hydrolysis of proteins',1,NULL,NULL,NULL),(2,14156,'63000 ',1,NULL,NULL,NULL),(2,14157,'Sugar came',1,NULL,NULL,NULL),(2,14158,'CaHPO<sub>4</sub>',1,NULL,NULL,NULL),(2,14159,'Less than 5',1,NULL,NULL,NULL),(2,14160,'To help to clean the atmosphere',1,NULL,NULL,NULL),(2,14201,'Arrangement of electrons in orbitals',1,NULL,NULL,NULL),(2,14202,'16',1,NULL,NULL,NULL),(2,14203,'gram',1,NULL,NULL,NULL),(2,14204,'Shake the  mixture with   H<sub>2</sub>O,  filter and evaporate the  filtrate',1,NULL,NULL,NULL),(2,14205,'Sand and naphthalene',1,NULL,NULL,NULL),(2,14206,'Graham\'s law',1,NULL,NULL,NULL),(2,14207,'Gas  phase',1,NULL,NULL,NULL),(2,14208,'Grahams\'s law',1,NULL,NULL,NULL),(2,14209,'They are also known  as cations',1,NULL,NULL,NULL),(2,14210,'Na<sup>+</sup> (g) + e\'&quot; &gt; Na<sup>+</sup> (s) + e ',1,NULL,NULL,NULL),(2,14211,'C and F      .',1,NULL,NULL,NULL),(2,14212,'Stark effect',1,NULL,NULL,NULL),(2,14213,'Zero',1,NULL,NULL,NULL),(2,14214,'an ellipse',1,NULL,NULL,NULL),(2,14215,'NaCI',1,NULL,NULL,NULL),(2,14216,'Light substances',1,NULL,NULL,NULL),(2,14217,'41.84J',1,NULL,NULL,NULL),(2,14218,'Bond energy',1,NULL,NULL,NULL),(2,14219,'Heterogeneous',1,NULL,NULL,NULL),(2,14220,'Determine the extent of reaction',1,NULL,NULL,NULL),(2,14221,'Arrhenius',1,NULL,NULL,NULL),(2,14222,'% age',1,NULL,NULL,NULL),(2,14223,'0.1155',1,NULL,NULL,NULL),(2,14224,'CI<sub>2</sub> is oxidized',1,NULL,NULL,NULL),(2,14225,'0.5',1,NULL,NULL,NULL),(2,14226,'pH is changed ',1,NULL,NULL,NULL),(2,14227,'Increases the number of collisions directly',1,NULL,NULL,NULL),(2,14345,'1.20A<sup>0</sup>',1,NULL,NULL,NULL),(2,14346,'Cyclobenzene',1,NULL,NULL,NULL),(2,14347,'Aldehyde',1,NULL,NULL,NULL),(2,14348,'Combustion of alkanes',1,NULL,NULL,NULL),(2,14349,'Aldehyde',1,NULL,NULL,NULL),(2,14350,'Acetic acid',1,NULL,NULL,NULL),(2,14351,'Aqueous solution of NaHSO<sub>3</sub>',1,NULL,NULL,NULL),(2,14352,'On heating with Fehiling\'s reagent a red precipitate is formed',1,NULL,NULL,NULL),(2,14353,'Hydrogen gas',1,NULL,NULL,NULL),(2,14354,'Body can not synthesize',1,NULL,NULL,NULL),(2,14355,'Both are carbohydrates',1,NULL,NULL,NULL),(2,14356,'Acid number',1,NULL,NULL,NULL),(2,14357,'N, Ca, P',1,NULL,NULL,NULL),(2,14358,'Blast furnace slag',1,NULL,NULL,NULL),(2,14359,'2ppm - 4ppm',1,NULL,NULL,NULL),(2,14360,'Alum',1,NULL,NULL,NULL),(3,14228,'Quinoline is an activator',1,NULL,NULL,NULL),(3,14229,'IIA',1,NULL,NULL,NULL),(3,14230,'18',1,NULL,NULL,NULL),(3,14231,'Na<sub>2</sub>B<sub>4</sub>O<sub>7</sub>. 5H<sub>2</sub>O     ',1,NULL,NULL,NULL),(3,14232,'f-orbital',1,NULL,NULL,NULL),(3,14233,'B',1,NULL,NULL,NULL),(3,14234,'Acidic ',1,NULL,NULL,NULL),(3,14235,'In lakes',1,NULL,NULL,NULL),(3,14236,'Green  yellow gas    ',1,NULL,NULL,NULL),(3,14237,'F<sup>-</sup>',1,NULL,NULL,NULL),(3,14238,'XeF<sub>6</sub>',1,NULL,NULL,NULL),(3,14239,'Slag',1,NULL,NULL,NULL),(3,14240,'Ionization',1,NULL,NULL,NULL),(3,14241,'Isobutylene',1,NULL,NULL,NULL),(3,14242,'Organic  compounds are generally covalent compounds ',1,NULL,NULL,NULL),(3,14243,'Hybridization',1,NULL,NULL,NULL),(3,14244,'Alkenes',1,NULL,NULL,NULL),(3,14245,'SO<sub>3</sub>',1,NULL,NULL,NULL),(3,14246,'Alcohol',1,NULL,NULL,NULL),(3,14247,'They have an electrophilie carbon and have leaving group',1,NULL,NULL,NULL),(3,14248,'Ketones',1,NULL,NULL,NULL),(3,14249,'Inorganic acid',1,NULL,NULL,NULL),(3,14250,'Acid \'as well as a base',1,NULL,NULL,NULL),(3,14251,'Tertiary alcohols',1,NULL,NULL,NULL),(3,14252,'Propanal',1,NULL,NULL,NULL),(3,14253,'CH<sub>3</sub>- CHO',1,NULL,NULL,NULL),(3,14254,'Sodium acetate',1,NULL,NULL,NULL),(3,14255,'Essential oils obtained from plants',1,NULL,NULL,NULL),(3,14256,'Linear polymer',1,NULL,NULL,NULL),(3,14257,'Both a and b',1,NULL,NULL,NULL),(3,14258,'Phosphprus',1,NULL,NULL,NULL),(3,14259,'Stratosphere',1,NULL,NULL,NULL),(3,14260,'Sulphur dioxide',1,NULL,NULL,NULL),(3,14301,'Passing      electricity     through     aqueous solutions',1,NULL,NULL,NULL),(3,14302,'Avogadro',1,NULL,NULL,NULL),(3,14303,'Empirical    formula      x   n<sup>2</sup>   =    molecular formula',1,NULL,NULL,NULL),(3,14304,'Low boiling component from a high boiling component',1,NULL,NULL,NULL),(3,14305,'Non-volatile or thermally unstable',1,NULL,NULL,NULL),(3,14306,'Solid',1,NULL,NULL,NULL),(3,14307,'0°C and 2 atm',1,NULL,NULL,NULL),(3,14308,'Melted from solid to liquid state',1,NULL,NULL,NULL),(3,14309,'Change of bond length',1,NULL,NULL,NULL),(3,14310,'High vapour pressure',1,NULL,NULL,NULL),(3,14311,'It is soluble in water',1,NULL,NULL,NULL),(3,14312,'There  is  actually   no  space  between the nucleus and electrons',1,NULL,NULL,NULL),(3,14313,'<span style=\"letter-spacing:.05pt; font-size:11.0pt; color:black; \">Shielding ',1,NULL,NULL,NULL),(3,14314,'<span style=\"font-variant:small-caps; letter-spacing:.8pt; font-size:11.0pt; color:black; \">n- ',1,NULL,NULL,NULL),(3,14315,'Two unpaired electron ',1,NULL,NULL,NULL),(3,14316,'Picometer ',1,NULL,NULL,NULL),(3,14317,'Watts ',1,NULL,NULL,NULL),(3,14318,'Bond length ',1,NULL,NULL,NULL),(3,14319,'Increase____ increase ',1,NULL,NULL,NULL),(3,14320,'Nitric acid ',1,NULL,NULL,NULL),(3,14321,' An   increases  in  acid   concentration  will result in an  increase in the concentration of',1,NULL,NULL,NULL),(3,14322,'Molality ',1,NULL,NULL,NULL),(3,14323,'.5fc.5g.NaCI/100g   ',1,NULL,NULL,NULL),(3,14324,'NH<sub>4</sub>OH ',1,NULL,NULL,NULL),(3,14325,'3.5V ',1,NULL,NULL,NULL),(3,14326,'It increases with increase in  concentration of cathodic solution ',1,NULL,NULL,NULL),(3,14327,'Maltase ',1,NULL,NULL,NULL),(3,14328,'12.5g',1,NULL,NULL,NULL),(3,14329,'Metalloid',1,NULL,NULL,NULL),(3,14330,'Mosley ',1,NULL,NULL,NULL),(3,14331,'Na ',1,NULL,NULL,NULL),(3,14332,'Hydration to yield another hydrate ',1,NULL,NULL,NULL),(3,14333,'AI<sup>3+</sup> ',1,NULL,NULL,NULL),(3,14334,'SO<sub>2</sub>',1,NULL,NULL,NULL),(3,14335,'Both combine with metals to form O<sub>2</sub>',1,NULL,NULL,NULL),(3,14336,'PH<sub>3</sub>',1,NULL,NULL,NULL),(3,14337,'HCIO<sub>2</sub>',1,NULL,NULL,NULL),(3,14338,'Iodine',1,NULL,NULL,NULL),(3,14339,'7',1,NULL,NULL,NULL),(3,14340,'Non transition elements',1,NULL,NULL,NULL),(3,14341,'1',1,NULL,NULL,NULL),(3,14342,'Cis-trans isomerism ',1,NULL,NULL,NULL),(3,14343,'Ethyl alcohol',1,NULL,NULL,NULL),(3,14344,'A free-radical substitution',1,NULL,NULL,NULL),(3,14101,'Number of protons',1,NULL,NULL,NULL),(3,14102,'1',1,NULL,NULL,NULL),(3,14103,'2.8g of CO',1,NULL,NULL,NULL),(3,14104,'Filtration',1,NULL,NULL,NULL),(3,14105,'Their partition coefficients',1,NULL,NULL,NULL),(3,14106,'d = PM/RT',1,NULL,NULL,NULL),(3,14107,'Definite  shapes      ',1,NULL,NULL,NULL),(3,14108,'High temperature and low pressure',1,NULL,NULL,NULL),(3,14109,'Molecules of solid iodine',1,NULL,NULL,NULL),(3,14110,'Nitric acid',1,NULL,NULL,NULL),(3,14111,'Ionic bond',1,NULL,NULL,NULL),(3,14112,'1.697x 107m-l',1,NULL,NULL,NULL),(3,14113,'Photoelectric effect ',1,NULL,NULL,NULL),(3,14114,'In the form of quanta',1,NULL,NULL,NULL),(3,14115,'They   are   formed    when   electrons   are removed from atoms',1,NULL,NULL,NULL),(3,14116,'They  are   smaller than   the  atoms  from which they were formed',1,NULL,NULL,NULL),(3,14117,'three',1,NULL,NULL,NULL),(3,14118,'Chemical process',1,NULL,NULL,NULL),(3,14119,'Chemical process',1,NULL,NULL,NULL),(3,14120,'Number  of moles per dm<sup>3</sup> of reactants',1,NULL,NULL,NULL),(3,14121,'1  x I(r<sup>10</sup>moldrrr<sup>3</sup>',1,NULL,NULL,NULL),(3,14122,'6.0%  solution of urea',1,NULL,NULL,NULL),(3,14123,'Solid  is solute and gas is solvent',1,NULL,NULL,NULL),(3,14124,'12',1,NULL,NULL,NULL),(3,14125,'Reduction  occurs at anode',1,NULL,NULL,NULL),(3,14126,'Fe  is reduced',1,NULL,NULL,NULL),(3,14127,'rate  constant (k)',1,NULL,NULL,NULL),(3,14128,'Conductometric     ',1,NULL,NULL,NULL),(3,14129,'Constant  charges in the nucleus',1,NULL,NULL,NULL),(3,14130,'Alkali  metals',1,NULL,NULL,NULL),(3,14131,'When  burnt in oxygen, \'Li\' forms super oxide LiO<sub>2</sub>',1,NULL,NULL,NULL),(3,14132,'Zinc  sulphate',1,NULL,NULL,NULL),(3,14133,'Zn',1,NULL,NULL,NULL),(3,14134,'Si',1,NULL,NULL,NULL),(3,14135,'Contact  process',1,NULL,NULL,NULL),(3,14136,'A halogen ',1,NULL,NULL,NULL),(3,14137,'F<sub>2</sub>',1,NULL,NULL,NULL),(3,14138,'Br',1,NULL,NULL,NULL),(3,14139,'Paramagnetic behaviour',1,NULL,NULL,NULL),(3,14140,'Cast iron &gt; wrought iron &gt; steel',1,NULL,NULL,NULL),(3,14141,'Butane!',1,NULL,NULL,NULL),(3,14142,'184 million tonnes  ',1,NULL,NULL,NULL),(3,14143,'Br<sub>2</sub>',1,NULL,NULL,NULL),(3,14144,'Lindlar\'s Catalyst   ',1,NULL,NULL,NULL),(3,14145,'HNO<sub>3</sub>',1,NULL,NULL,NULL),(3,14146,'They have high % age of carbon',1,NULL,NULL,NULL),(3,14147,'Acid chloride',1,NULL,NULL,NULL),(3,14148,'Alkyl halide',1,NULL,NULL,NULL),(3,14149,'Ethyl alcohol',1,NULL,NULL,NULL),(3,14150,'Phenol and ethanol',1,NULL,NULL,NULL),(3,14151,'Substitution reaction ',1,NULL,NULL,NULL),(3,14152,'Reaction    with   HCN   followed    by   acid hydrolysis',1,NULL,NULL,NULL),(3,14153,'Benzoic acid',1,NULL,NULL,NULL),(3,14154,'p-Toluenesulphonic acid',1,NULL,NULL,NULL),(3,14155,'The cracking of petroleum fractions',1,NULL,NULL,NULL),(3,14156,'62000',1,NULL,NULL,NULL),(3,14157,'Wheat',1,NULL,NULL,NULL),(3,14158,'Ca(H<sub>2</sub>PO<sub>4</sub>)<sub>2</sub>',1,NULL,NULL,NULL),(3,14159,'8-7.5',1,NULL,NULL,NULL),(3,14160,'To   destroy   nitrogen     oxide   from   the atmosphere',1,NULL,NULL,NULL),(3,14201,'Chemical properties',1,NULL,NULL,NULL),(3,14202,'64',1,NULL,NULL,NULL),(3,14203,'gm/dm<sup>3</sup>',1,NULL,NULL,NULL),(3,14204,'Shake the mixture with H<sub>2</sub>O, and distill the liquid',1,NULL,NULL,NULL),(3,14205,'Sand and broken piece of glass',1,NULL,NULL,NULL),(3,14206,'Dalton\'s law',1,NULL,NULL,NULL),(3,14207,'Plasma',1,NULL,NULL,NULL),(3,14208,'Boyle\'s law',1,NULL,NULL,NULL),(3,14209,'They are larger than the atom from which they were formed',1,NULL,NULL,NULL),(3,14210,'Na<sup>+</sup> (g) + e\'&quot; &gt; Na<sup>+</sup> (s) + e ',1,NULL,NULL,NULL),(3,14211,'N and F',1,NULL,NULL,NULL),(3,14212,'Photoelectric effect',1,NULL,NULL,NULL),(3,14213,'2h/pt',1,NULL,NULL,NULL),(3,14214,'dumb-bell',1,NULL,NULL,NULL),(3,14215,'KC1',1,NULL,NULL,NULL),(3,14216,'Stable substances',1,NULL,NULL,NULL),(3,14217,'4.184J',1,NULL,NULL,NULL),(3,14218,'Heat of sublimation',1,NULL,NULL,NULL),(3,14219,'Static',1,NULL,NULL,NULL),(3,14220,'Predict the direction of reaction',1,NULL,NULL,NULL),(3,14221,'VantHaff',1,NULL,NULL,NULL),(3,14222,'Mole fraction',1,NULL,NULL,NULL),(3,14223,'0.105',1,NULL,NULL,NULL),(3,14224,'Fe is reduced',1,NULL,NULL,NULL),(3,14225,'-1',1,NULL,NULL,NULL),(3,14226,'Acts as a catalyst   ',1,NULL,NULL,NULL),(3,14227,'Has no effect on number of collisions',1,NULL,NULL,NULL),(3,14345,'1.34A<sup>0</sup>',1,NULL,NULL,NULL),(3,14346,'Nitrobenzene',1,NULL,NULL,NULL),(3,14347,'Ether',1,NULL,NULL,NULL),(3,14348,'Cracking of alkanes',1,NULL,NULL,NULL),(3,14349,'Ether',1,NULL,NULL,NULL),(3,14350,'Butanoic acid',1,NULL,NULL,NULL),(3,14351,'Benedict solution',1,NULL,NULL,NULL),(3,14352,'With 2,4-dinitrophenylhydrazine reagent an orange precipitate is  formed',1,NULL,NULL,NULL),(3,14353,'Carbon dioxide gas ',1,NULL,NULL,NULL),(3,14354,'a  -amino\'acids ',1,NULL,NULL,NULL),(3,14355,'Both are naturally occurring',1,NULL,NULL,NULL),(3,14356,'Rancidity number',1,NULL,NULL,NULL),(3,14357,'S, K, P',1,NULL,NULL,NULL),(3,14358,'Line stone     ',1,NULL,NULL,NULL),(3,14359,'4ppm - 8ppm',1,NULL,NULL,NULL),(3,14360,'Barium  sulphate    ',1,NULL,NULL,NULL),(4,14228,'Nothing is imposibble',1,NULL,NULL,NULL),(4,14229,'IB',1,NULL,NULL,NULL),(4,14230,'32',1,NULL,NULL,NULL),(4,14231,'Na<sub>2</sub>B<sub>4</sub>O<sub>7</sub>. 10H<sub>2</sub>O  -',1,NULL,NULL,NULL),(4,14232,'s-orbital   ',1,NULL,NULL,NULL),(4,14233,'In',1,NULL,NULL,NULL),(4,14234,'Basic ',1,NULL,NULL,NULL),(4,14235,'As salt beds in ponds',1,NULL,NULL,NULL),(4,14236,'Shiny  greyish ',1,NULL,NULL,NULL),(4,14237,'I<sup>-</sup>',1,NULL,NULL,NULL),(4,14238,'XeOF<sub>2</sub>',1,NULL,NULL,NULL),(4,14239,'Silicates',1,NULL,NULL,NULL),(4,14240,'Loss of electrons',1,NULL,NULL,NULL),(4,14241,'Benzene',1,NULL,NULL,NULL),(4,14242,'Organic   compounds   are  generally  water soluble',1,NULL,NULL,NULL),(4,14243,'Resonance',1,NULL,NULL,NULL),(4,14244,'None of these',1,NULL,NULL,NULL),(4,14245,'SO<sup>+</sup><sub>3</sub>',1,NULL,NULL,NULL),(4,14246,'Ether',1,NULL,NULL,NULL),(4,14247,'They have an nucleophilic carbon and have leaving group',1,NULL,NULL,NULL),(4,14248,'Ethers',1,NULL,NULL,NULL),(4,14249,'Alcohol',1,NULL,NULL,NULL),(4,14250,'None of these',1,NULL,NULL,NULL),(4,14251,'Carboxylic acids',1,NULL,NULL,NULL),(4,14252,'2-Hexanone',1,NULL,NULL,NULL),(4,14253,'CH<sub>3</sub>- CH<sub>2</sub>- COOH',1,NULL,NULL,NULL),(4,14254,'Phosphorus pentaoxide',1,NULL,NULL,NULL),(4,14255,'Glycerides of saturated fatty acids',1,NULL,NULL,NULL),(4,14256,'Cross linked or inter connected polymer',1,NULL,NULL,NULL),(4,14257,'None of above',1,NULL,NULL,NULL),(4,14258,'Barium',1,NULL,NULL,NULL),(4,14259,'Lithosphere',1,NULL,NULL,NULL),(4,14260,'Chloroflurcarbons and nitrogen oxides',1,NULL,NULL,NULL),(4,14301,'Passing high energy electron beam or a particles through a  gas',1,NULL,NULL,NULL),(4,14302,'Dalton',1,NULL,NULL,NULL),(4,14303,'Molecular formula/n = empirical formula ',1,NULL,NULL,NULL),(4,14304,'Miscible liquid from a solid',1,NULL,NULL,NULL),(4,14305,'Non-volatile Or thermally stable',1,NULL,NULL,NULL),(4,14306,'Plasma',1,NULL,NULL,NULL),(4,14307,'273°C and 2 atm',1,NULL,NULL,NULL),(4,14308,'Mixed    with    other     molecules    at    low temperature',1,NULL,NULL,NULL),(4,14309,'Change of bond angle',1,NULL,NULL,NULL),(4,14310,'Solubility in polar solvents',1,NULL,NULL,NULL),(4,14311,'It conducts electricity at room temperature',1,NULL,NULL,NULL),(4,14312,'The   atom    did   not   have    nucleus   and electrons',1,NULL,NULL,NULL),(4,14313,'<span style=\"letter-spacing:-.05pt; font-size:11.0pt; color:black; \">Penetration ',1,NULL,NULL,NULL),(4,14314,'<em><span style=\"letter-spacing:-.5pt; font-size:11.0pt; color:black; \">\'G*-.</em>',1,NULL,NULL,NULL),(4,14315,'None of these ',1,NULL,NULL,NULL),(4,14316,'Micrometer',1,NULL,NULL,NULL),(4,14317,'Ergs',1,NULL,NULL,NULL),(4,14318,'None of all',1,NULL,NULL,NULL),(4,14319,'Decrease____ decrease ',1,NULL,NULL,NULL),(4,14320,'Sulphuric acid ',1,NULL,NULL,NULL),(4,14321,'  STATEMENT MISSING',1,NULL,NULL,NULL),(4,14322,'Formality',1,NULL,NULL,NULL),(4,14323,'lO.OgNaCI/lOOg',1,NULL,NULL,NULL),(4,14324,'Ca(OH)<sub>2</sub>',1,NULL,NULL,NULL),(4,14325,'4.5V',1,NULL,NULL,NULL),(4,14326,'It increases with decrease in the size  of the anode ',1,NULL,NULL,NULL),(4,14327,'Zymase',1,NULL,NULL,NULL),(4,14328,'25g',1,NULL,NULL,NULL),(4,14329,'Transition  element ',1,NULL,NULL,NULL),(4,14330,'Dobereiner',1,NULL,NULL,NULL),(4,14331,'K',1,NULL,NULL,NULL),(4,14332,'Oxidation with atmospheric oxygen',1,NULL,NULL,NULL),(4,14333,'None of these',1,NULL,NULL,NULL),(4,14334,'NO<sub>2</sub>',1,NULL,NULL,NULL),(4,14335,'Both are paramagnetic',1,NULL,NULL,NULL),(4,14336,'NH<sub>3</sub>',1,NULL,NULL,NULL),(4,14337,'HCIO<sub>3</sub>',1,NULL,NULL,NULL),(4,14338,'Fluorine',1,NULL,NULL,NULL),(4,14339,'2',1,NULL,NULL,NULL),(4,14340,'Representative elements',1,NULL,NULL,NULL),(4,14341,'4',1,NULL,NULL,NULL),(4,14342,'Metamerism',1,NULL,NULL,NULL),(4,14343,'All of these',1,NULL,NULL,NULL),(4,14344,'A nucleophilic substitution',1,NULL,NULL,NULL),(4,14101,'Number of neutrons',1,NULL,NULL,NULL),(4,14102,'1.5',1,NULL,NULL,NULL),(4,14103,'5.4g ofN<sub>2</sub>O<sub>5</sub>',1,NULL,NULL,NULL),(4,14104,'Sublimation',1,NULL,NULL,NULL),(4,14105,'The size of paper used',1,NULL,NULL,NULL),(4,14106,'PV=!/3mnC<sup>2</sup>',1,NULL,NULL,NULL),(4,14107,'No  fixed shapes ',1,NULL,NULL,NULL),(4,14108,'Low temperature and high pressure',1,NULL,NULL,NULL),(4,14109,'Molecules  of hydrogen chloride gas',1,NULL,NULL,NULL),(4,14110,'Hydrofluoric acid',1,NULL,NULL,NULL),(4,14111,'Covalent bond',1,NULL,NULL,NULL),(4,14112,'1.09678 x 107rr',1,NULL,NULL,NULL),(4,14113,'Zeeman effect',1,NULL,NULL,NULL),(4,14114,'Ultraviolet radiations',1,NULL,NULL,NULL),(4,14115,'They  are  smaller than   the  atoms   from which they were formed',1,NULL,NULL,NULL),(4,14116,'They  are larger than the atoms from which they  were found ',1,NULL,NULL,NULL),(4,14117,'four',1,NULL,NULL,NULL),(4,14118,'Biochemical process',1,NULL,NULL,NULL),(4,14119,'Biochemical process',1,NULL,NULL,NULL),(4,14120,'Number  of moles',1,NULL,NULL,NULL),(4,14121,'4x  lCT<sup>20</sup>moldirr<sup>3</sup>',1,NULL,NULL,NULL),(4,14122,'All  have the same boiling point&nbsp;',1,NULL,NULL,NULL),(4,14123,'Solid  is solute and liquid is solvent&nbsp;',1,NULL,NULL,NULL),(4,14124,'6&nbsp;',1,NULL,NULL,NULL),(4,14125,'Reduction  occurs at cathode&nbsp;',1,NULL,NULL,NULL),(4,14126,'None of all above&nbsp;',1,NULL,NULL,NULL),(4,14127,'Instantaneous  rate&nbsp;',1,NULL,NULL,NULL),(4,14128,'Spectroscopic',1,NULL,NULL,NULL),(4,14129,'Increasing  charges in the nucleus&nbsp;',1,NULL,NULL,NULL),(4,14130,'Inert gas ',1,NULL,NULL,NULL),(4,14131,'\'Li\'  combine with nitrogen directly to form lithium nitride&nbsp;',1,NULL,NULL,NULL),(4,14132,'Barium  sulphate&nbsp;',1,NULL,NULL,NULL),(4,14133,'Cu&nbsp;',1,NULL,NULL,NULL),(4,14134,'C&nbsp;',1,NULL,NULL,NULL),(4,14135,'Castner\'s  process&nbsp;',1,NULL,NULL,NULL),(4,14136,'A noble gas &nbsp;',1,NULL,NULL,NULL),(4,14137,'I<sub>2</sub>&nbsp;',1,NULL,NULL,NULL),(4,14138,'I',1,NULL,NULL,NULL),(4,14139,'None of these',1,NULL,NULL,NULL),(4,14140,'Cast iron = steel &gt; wrought iron',1,NULL,NULL,NULL),(4,14141,'Methane',1,NULL,NULL,NULL),(4,14142,'1.84 million tonnes',1,NULL,NULL,NULL),(4,14143,'I<sub>2</sub>',1,NULL,NULL,NULL),(4,14144,'RaneyNi',1,NULL,NULL,NULL),(4,14145,'NaCI',1,NULL,NULL,NULL),(4,14146,'They resist reaction with air',1,NULL,NULL,NULL),(4,14147,'Benzene',1,NULL,NULL,NULL),(4,14148,'Benzene',1,NULL,NULL,NULL),(4,14149,'Butyl alcohol',1,NULL,NULL,NULL),(4,14150,'Phenol and methanol',1,NULL,NULL,NULL),(4,14151,'Reduction reaction',1,NULL,NULL,NULL),(1,10141,'  Directional, irreversible, real process',1,NULL,NULL,NULL),(1,10142,'  0.1MBaCI<sub>2</sub>',1,NULL,NULL,NULL),(1,10143,'  0.010',1,NULL,NULL,NULL),(1,10144,'14.275kj',1,NULL,NULL,NULL),(1,10145,'1.5',1,NULL,NULL,NULL),(1,10146,'N/2 solution',1,NULL,NULL,NULL),(1,10147,'  Material',1,NULL,NULL,NULL),(1,10148,'  40',1,NULL,NULL,NULL),(1,10149,'  Increase 2 times',1,NULL,NULL,NULL),(1,10150,'  1 erg> Ij > 1 call',1,NULL,NULL,NULL),(1,10151,'  Hess law',1,NULL,NULL,NULL),(1,10152,' Fe',1,NULL,NULL,NULL),(1,10153,'Anhydrous salt',1,NULL,NULL,NULL),(1,10154,'  Material',1,NULL,NULL,NULL),(1,10155,'7:32',1,NULL,NULL,NULL),(1,10156,' NaCl,NaClO, H<sub>2</sub>O',1,NULL,NULL,NULL),(1,10157,'NaCl',1,NULL,NULL,NULL),(1,10158,'  Ne',1,NULL,NULL,NULL),(1,10159,'  Spontaneous reaction',1,NULL,NULL,NULL),(1,10160,'  Methanol',1,NULL,NULL,NULL),(4,14152,'Oxidation    of  acetaldehyde   followed    by basic  hydrolysis',1,NULL,NULL,NULL),(4,14153,'Butanoic acid',1,NULL,NULL,NULL),(4,14154,'Palmitic acid',1,NULL,NULL,NULL),(4,14155,'The polymerization',1,NULL,NULL,NULL),(4,14156,'60000',1,NULL,NULL,NULL),(4,14157,'Paddy rice',1,NULL,NULL,NULL),(4,14158,'None of all',1,NULL,NULL,NULL),(4,14159,'7-6.5',1,NULL,NULL,NULL),(4,14160,'To help in fixing of bacteria',1,NULL,NULL,NULL),(4,14201,'Atomic numbers',1,NULL,NULL,NULL),(4,14202,'48',1,NULL,NULL,NULL),(4,14203,'microgram',1,NULL,NULL,NULL),(4,14204,'Heat the  mixture  gently  and collect the substance which melts&nbsp;',1,NULL,NULL,NULL),(4,14205,'Sand and NaCl&nbsp;',1,NULL,NULL,NULL),(4,14206,'Charles\'s law',1,NULL,NULL,NULL),(4,14207,'UV radiation',1,NULL,NULL,NULL),(4,14208,'Charles\'s law',1,NULL,NULL,NULL),(4,14209,'They are smaller  than the atom from which they were formed&nbsp;',1,NULL,NULL,NULL),(4,14210,'Na+ (g) + e\'&quot; &gt; Na+ (s) + e',1,NULL,NULL,NULL),(4,14211,'O and F&nbsp;',1,NULL,NULL,NULL),(4,14212,'Zeeman effect',1,NULL,NULL,NULL),(4,14213,'h/2pt',1,NULL,NULL,NULL),(4,14214,'a hockey stick',1,NULL,NULL,NULL),(4,14215,'RbCI',1,NULL,NULL,NULL),(4,14216,'Reactive substances',1,NULL,NULL,NULL),(4,14217,'418.4 J',1,NULL,NULL,NULL),(4,14218,'Internal energy change',1,NULL,NULL,NULL),(4,14219,'Homogeneous',1,NULL,NULL,NULL),(1,10161,'  Deuterium',1,NULL,NULL,NULL),(1,10162,'  Below 7',1,NULL,NULL,NULL),(1,10163,'  Ca',1,NULL,NULL,NULL),(1,10164,'CCL<sub>3</sub>COOH',1,NULL,NULL,NULL),(1,10165,'  SF<sub>4</sub>',1,NULL,NULL,NULL),(1,10166,'  125%',1,NULL,NULL,NULL),(1,10167,' $$ sqrt{left(frac{3P}{d}\right)} $$ ',1,NULL,NULL,NULL),(1,10168,'K<sub>2</sub>Fe[Fe(CN)<sub>6</sub>]',1,NULL,NULL,NULL),(1,10169,'Pressure and work',1,NULL,NULL,NULL),(1,10170,'Fractional crystallization',1,NULL,NULL,NULL),(2,10141,'  Unidirectional, reversible, imaginary reaction',1,NULL,NULL,NULL),(2,10142,'  0.1M glucose',1,NULL,NULL,NULL),(2,10143,'  1',1,NULL,NULL,NULL),(2,10144,'57.1kj',1,NULL,NULL,NULL),(2,10145,'2',1,NULL,NULL,NULL),(2,10146,'N solution',1,NULL,NULL,NULL),(2,10147,' Molecular bonds',1,NULL,NULL,NULL),(2,10148,'[1/40]<sup>2</sup>',1,NULL,NULL,NULL),(2,10149,'  Increase 4 times',1,NULL,NULL,NULL),(2,10150,'  1 call > Ij > 1 erg',1,NULL,NULL,NULL),(2,10151,'  Enthalpy of formatior',1,NULL,NULL,NULL),(2,10152,'Zn',1,NULL,NULL,NULL),(2,10153,'  Hemihydrate',1,NULL,NULL,NULL),(2,10154,' Molecular bonds',1,NULL,NULL,NULL),(2,10155,'1:04',1,NULL,NULL,NULL),(2,10156,' NaCl,NaClO<sub>2</sub>, H<sub>2</sub>O',1,NULL,NULL,NULL),(2,10157,'HF',1,NULL,NULL,NULL),(2,10158,'  He',1,NULL,NULL,NULL),(2,10159,' Non spontaneous reaction',1,NULL,NULL,NULL),(2,10160,'  Ethanol',1,NULL,NULL,NULL),(2,10161,' Tritium',1,NULL,NULL,NULL),(2,10162,'7',1,NULL,NULL,NULL),(2,10163,'  Na',1,NULL,NULL,NULL),(2,10164,'  CH<sub>3</sub>COOH',1,NULL,NULL,NULL),(2,10165,'  XeF<sub>4</sub>',1,NULL,NULL,NULL),(2,10166,'  25%',1,NULL,NULL,NULL),(2,10167,' $$ sqrt{left(frac{3PV}{M}\right)} $$ ',1,NULL,NULL,NULL),(2,10168,'K<sub>4</sub>[Fe(CN)<sub>6</sub>]',1,NULL,NULL,NULL),(2,10169,'Volume and pressure',1,NULL,NULL,NULL),(2,10170,'Sublimation',1,NULL,NULL,NULL),(3,10141,'  Irreversible, Unidirectional, real process',1,NULL,NULL,NULL),(3,10142,'  0.1M urea',1,NULL,NULL,NULL),(3,10143,'  2',1,NULL,NULL,NULL),(3,10144,'22.5kj  ',1,NULL,NULL,NULL),(3,10145,'1',1,NULL,NULL,NULL),(3,10146,'2N solution',1,NULL,NULL,NULL),(3,10147,'  Volume',1,NULL,NULL,NULL),(3,10148,'  1/40',1,NULL,NULL,NULL),(3,10149,'  Decrease 2 times',1,NULL,NULL,NULL),(3,10150,'  1 erg >1 call >lj',1,NULL,NULL,NULL),(3,10151,'  Born haber process',1,NULL,NULL,NULL),(3,10152,'Cu',1,NULL,NULL,NULL),(3,10153,'  Monohydrate',1,NULL,NULL,NULL),(3,10154,'  Volume',1,NULL,NULL,NULL),(3,10155,'2:01',1,NULL,NULL,NULL),(3,10156,' NaClO,NaClO<sub>2</sub>, H<sub>2</sub>O',1,NULL,NULL,NULL),(3,10157,'KHF<sub>2</sub>',1,NULL,NULL,NULL),(3,10158,'  Xe',1,NULL,NULL,NULL),(3,10159,'  First law of thermodynamics',1,NULL,NULL,NULL),(3,10160,'Ethane',1,NULL,NULL,NULL),(3,10161,'  Ortho hydrogen',1,NULL,NULL,NULL),(3,10162,'  Above 7',1,NULL,NULL,NULL),(3,10163,'  Be',1,NULL,NULL,NULL),(3,10164,'  CF<sub>3</sub>COOH',1,NULL,NULL,NULL),(3,10165,'  NF<sub>3</sub>',1,NULL,NULL,NULL),(3,10166,'50%',1,NULL,NULL,NULL),(3,10167,' $$ sqrt{left(3RTØM \right)} $$',1,NULL,NULL,NULL),(3,10168,'Fe<sub>4</sub>(Fe(CN)<sub>6</sub>)',1,NULL,NULL,NULL),(3,10169,'Heat and work',1,NULL,NULL,NULL),(3,10170,'Chemical method',1,NULL,NULL,NULL),(4,10141,'  Imaginary, reversible reaction',1,NULL,NULL,NULL),(4,10142,'  0.1M NaCI',1,NULL,NULL,NULL),(4,10143,'  0.005',1,NULL,NULL,NULL),(4,10144,'28.6kj',1,NULL,NULL,NULL),(4,10145,'2.5',1,NULL,NULL,NULL),(4,10146,'3N solution',1,NULL,NULL,NULL),(4,10147,' Heat',1,NULL,NULL,NULL),(4,10148,'1/[40]<sup>1/2</sup>',1,NULL,NULL,NULL),(4,10149,'  Remain same',1,NULL,NULL,NULL),(4,10150,' Ij > 1 call > 1 erg',1,NULL,NULL,NULL),(4,10151,'  None    A',1,NULL,NULL,NULL),(4,10152,'Ag',1,NULL,NULL,NULL),(4,10153,'  Dehydrates',1,NULL,NULL,NULL),(4,10154,' Heat',1,NULL,NULL,NULL),(4,10155,' 4:1',1,NULL,NULL,NULL),(4,10156,' NaCl , H<sub>2</sub>O',1,NULL,NULL,NULL),(4,10157,'KClO<sub>3</sub>',1,NULL,NULL,NULL),(4,10158,'  Kr',1,NULL,NULL,NULL),(4,10159,'All of these',1,NULL,NULL,NULL),(4,10160,' Ethylene glycol',1,NULL,NULL,NULL),(4,10161,'   None',1,NULL,NULL,NULL),(4,10162,' at all pH',1,NULL,NULL,NULL),(4,10163,'  Mg',1,NULL,NULL,NULL),(4,10164,'  CBr<sub>3</sub>COOH',1,NULL,NULL,NULL),(4,10165,'  SiF<sub>4</sub>',1,NULL,NULL,NULL),(4,10166,'  75% .',1,NULL,NULL,NULL),(4,10167,'All of these',1,NULL,NULL,NULL),(4,10168,'K<sub>3</sub>(Fe(CN)<sub>6</sub>)',1,NULL,NULL,NULL),(4,10169,'Pressure and heat',1,NULL,NULL,NULL),(4,10170,'Extraction with solvent',1,NULL,NULL,NULL),(1,14228,'Quinoline is an inhibitor',1,NULL,NULL,NULL),(1,14229,'IA',1,NULL,NULL,NULL),(1,14230,'8',1,NULL,NULL,NULL),(1,14231,'Na<sub>2</sub>B<sub>3</sub>0<sub>6</sub>. 10H<sub>2</sub>0   ',1,NULL,NULL,NULL),(1,14232,'p-orbital ',1,NULL,NULL,NULL),(1,14233,'Al',1,NULL,NULL,NULL),(1,14234,'Amphoteric',1,NULL,NULL,NULL),(1,14235,'In sea',1,NULL,NULL,NULL),(1,14236,'Pale yellow gas       ',1,NULL,NULL,NULL),(1,14237,'Br<sup>-</sup>',1,NULL,NULL,NULL),(1,14238,'XeOF<sub>4</sub>',1,NULL,NULL,NULL),(1,14239,'Flux',1,NULL,NULL,NULL),(1,14240,'d-d transitions of electrons',1,NULL,NULL,NULL),(1,14241,'Cyclohexane',1,NULL,NULL,NULL),(1,14242,'They form long chain compounds',1,NULL,NULL,NULL),(1,14243,'Isomerization',1,NULL,NULL,NULL),(1,14244,'Alkanes',1,NULL,NULL,NULL),(1,14245,'H<sub>2</sub>SO<sub>4 H<sub>2</sub>SO<sub>4 </sub>',1,NULL,NULL,NULL),(1,14246,'Water',1,NULL,NULL,NULL),(1,14247,'They have an electrophilie carbon and no leaving group',1,NULL,NULL,NULL),(1,14248,'Oxygen',1,NULL,NULL,NULL),(1,14249,'Phenol',1,NULL,NULL,NULL),(1,14250,'Acid',1,NULL,NULL,NULL),(1,14251,'Primary alcohols',1,NULL,NULL,NULL),(1,14252,'Methanal',1,NULL,NULL,NULL),(1,14253,'CH<sub>2</sub>= CH - CH<sub>3</sub>',1,NULL,NULL,NULL),(1,14254,'Acetone',1,NULL,NULL,NULL),(1,14255,'Unsaturated fatty acids',1,NULL,NULL,NULL),(1,14256,'Synthetic polymer',1,NULL,NULL,NULL),(1,14257,'Synthetic products  ',1,NULL,NULL,NULL),(1,14258,'Potassium',1,NULL,NULL,NULL),(1,14259,'Biosphere',1,NULL,NULL,NULL),(1,14260,'Carbon monoxide',1,NULL,NULL,NULL),(1,14301,'Dissolving a salt in water',1,NULL,NULL,NULL),(1,14302,'J. Berzelius',1,NULL,NULL,NULL),(1,14303,'Empirical   formula    x   Vn   =    molecular formula',1,NULL,NULL,NULL),(1,14304,'Non  volatile  component from  a volatile component',1,NULL,NULL,NULL),(1,14305,'Volatile or thermally stable',1,NULL,NULL,NULL),(1,14306,'Gas',1,NULL,NULL,NULL),(1,14307,'S.T.P. (0°C  and 1 atm)',1,NULL,NULL,NULL),(1,14308,'Condensed into liquids',1,NULL,NULL,NULL),(1,14309,'Cubic structure of ice',1,NULL,NULL,NULL),(1,14310,'Low melting points',1,NULL,NULL,NULL),(1,14311,'It has a high melting point',1,NULL,NULL,NULL),(1,14312,'It did not account for the stability of the \'atom',1,NULL,NULL,NULL),(1,14313,'Paramagnatism ',1,NULL,NULL,NULL),(1,14314,'CT ',1,NULL,NULL,NULL),(1,14315,'No unpaired electron ',1,NULL,NULL,NULL),(1,14316,'<span style=\"letter-spacing:.1pt; font-size:11.0pt; color:black; \">Angstrom ',1,NULL,NULL,NULL),(1,14317,'Joules ',1,NULL,NULL,NULL),(1,14318,'Bond energy ',1,NULL,NULL,NULL),(1,14319,'Increase____ decrease ',1,NULL,NULL,NULL),(1,14320,'Ethanoic acid ',1,NULL,NULL,NULL),(1,14321,'The addition of a catalyst wil result in an increase in  the concentration of Cr<sub>2</sub>O<sup>2</sup>&quot;<sub>7(aq) </sub>',1,NULL,NULL,NULL),(1,14322,'Molarity       ',1,NULL,NULL,NULL),(1,14323,'2Qg.NaCI/100g      ',1,NULL,NULL,NULL),(1,14324,'KOH ',1,NULL,NULL,NULL),(1,14325,'<span style=\"letter-spacing:.6pt; font-size:11.0pt; color:black; \">1.5V ',1,NULL,NULL,NULL),(1,14326,'It     increases     with      increase     in     the concentration  of anodic solution',1,NULL,NULL,NULL),(1,14327,'Diastase ',1,NULL,NULL,NULL),(1,14328,'3.125g',1,NULL,NULL,NULL),(1,14329,'Metal',1,NULL,NULL,NULL),(1,14330,'Newland ',1,NULL,NULL,NULL),(1,14331,'Rb ',1,NULL,NULL,NULL),(1,14332,'Combination with atmospheric CCh ',1,NULL,NULL,NULL),(1,14333,'Zn<sup>2+</sup> ',1,NULL,NULL,NULL),(1,14334,'N<sub>2</sub>O',1,NULL,NULL,NULL),(1,14335,'Both are usually divalent',1,NULL,NULL,NULL),(1,14336,'AsH<sub>3</sub>',1,NULL,NULL,NULL),(1,14337,'HCIO<sub>4</sub>',1,NULL,NULL,NULL),(1,14338,'Chlorine',1,NULL,NULL,NULL),(1,14339,'4',1,NULL,NULL,NULL),(1,14340,'Inner transition elements',1,NULL,NULL,NULL),(1,14341,'2',1,NULL,NULL,NULL),(1,14342,'Position isomerism ',1,NULL,NULL,NULL),(1,14343,'Rubber',1,NULL,NULL,NULL),(1,14344,'A nucleophilic addition',1,NULL,NULL,NULL),(1,14101,'Number of atoms',1,NULL,NULL,NULL),(1,14102,'0.25',1,NULL,NULL,NULL),(1,14103,'3.6g of H<sub>2</sub>O',1,NULL,NULL,NULL),(1,14104,'Crystallization        ',1,NULL,NULL,NULL),(1,14105,'The polarity of solvent used',1,NULL,NULL,NULL),(1,14106,'C<sub>rm</sub>.<sub>s</sub> = V3RT/M   ',1,NULL,NULL,NULL),(1,14107,'Difference  shapes   ',1,NULL,NULL,NULL),(1,14108,'High temperature and high pressure',1,NULL,NULL,NULL),(1,14109,'Molecules of water in liquid state',1,NULL,NULL,NULL),(1,14110,'Hydrochloric  acid  ',1,NULL,NULL,NULL),(1,14111,'Metallic bonding    ',1,NULL,NULL,NULL),(4,14220,'Find   the    best   condition   of   favourable shifting the position of  equilibrium',1,NULL,NULL,NULL),(4,14221,'Le-Chatelier',1,NULL,NULL,NULL),(4,14222,'Formality',1,NULL,NULL,NULL),(4,14223,'0.0909',1,NULL,NULL,NULL),(4,14224,'None of these',1,NULL,NULL,NULL),(4,14225,'-2',1,NULL,NULL,NULL),(4,14226,'Gains electrons',1,NULL,NULL,NULL),(4,14227,'Has inverse effect on number of collisions',1,NULL,NULL,NULL),(4,14345,'1.39A<sup>0</sup>',1,NULL,NULL,NULL),(4,14346,'Glyoxal',1,NULL,NULL,NULL),(4,14347,'Ketone',1,NULL,NULL,NULL),(4,14348,'Halogenation of alkanes',1,NULL,NULL,NULL),(4,14349,'Ester',1,NULL,NULL,NULL),(4,14350,'None of the Above',1,NULL,NULL,NULL),(4,14351,'2,4-Dinitrophenyl hydrazine',1,NULL,NULL,NULL),(4,14352,'On   warming    with   acidified   potassium dichromate  (VI) the solution turns green',1,NULL,NULL,NULL),(4,14353,'Oxygen gas',1,NULL,NULL,NULL),(4,14354,'p-amino acids ',1,NULL,NULL,NULL),(4,14355,'Both are disaccharides',1,NULL,NULL,NULL),(4,14356,'Iodine number',1,NULL,NULL,NULL),(4,14357,'N,K, C',1,NULL,NULL,NULL),(4,14358,'Shale',1,NULL,NULL,NULL),(4,14359,'2ppm - 3ppm',1,NULL,NULL,NULL),(4,14360,'Nickel sulphate',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `answer_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `CANDIDATE_ID` int NOT NULL,
  `FIRST_NAME` varchar(65) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `SEX` tinyint DEFAULT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(128) DEFAULT NULL,
  `CITY` varchar(32) DEFAULT NULL,
  `AREA` varchar(32) DEFAULT NULL,
  `NATIONAL` int DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `PHONE_AREA` varchar(8) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `INCOME` int DEFAULT NULL,
  `SS_YEAR` datetime DEFAULT NULL,
  `SS_BOARD` int DEFAULT NULL,
  `SS_REG` varchar(32) DEFAULT NULL,
  `FATHER_NAME` varchar(32) DEFAULT NULL,
  `MOBILE` varchar(16) DEFAULT NULL,
  `CITY_ID` int DEFAULT NULL,
  `COUNTRY_ID` int DEFAULT NULL,
  `SITE_REF` int DEFAULT NULL,
  `BATCH` int NOT NULL DEFAULT '1',
  `CAMPUS` int DEFAULT NULL,
  `PROGRAMME` int DEFAULT NULL,
  `CENTER` int DEFAULT NULL,
  `SESSION_ID` int DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `IS_APPEARED` tinyint DEFAULT NULL,
  `VERIFIED_BY` varchar(16) DEFAULT NULL,
  `IS_FEE_PAID` tinyint NOT NULL DEFAULT '0',
  `IS_VARIFIED` tinyint NOT NULL DEFAULT '0',
  `IS_SCHEDULED` tinyint NOT NULL DEFAULT '0',
  `IS_ADMIT_PRINTED` tinyint NOT NULL DEFAULT '0',
  `DECLARATION` tinyint NOT NULL DEFAULT '0',
  `TEST_ID` char(32) DEFAULT NULL,
  `APPL_PASSWORD` varchar(16) DEFAULT NULL,
  `APPL_PASSWORD_HINT` varchar(64) DEFAULT NULL,
  `ARN` int DEFAULT NULL,
  `IS_SAT_VARIFIED` tinyint DEFAULT NULL,
  `CREATED_BY` varchar(16) DEFAULT NULL,
  `CREATED_ON` date DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (38000,'Student 38000',NULL,2,'32102-0821696-6','house#368-D,street#26,sector I-8/2 ISb',NULL,NULL,NULL,'2515470','051','dafi_lali@yahoo.com',NULL,NULL,NULL,NULL,'Dr. Qazi Abdus Subhan Tariq','03006787551',3,1,NULL,2010,3,1,3,10071301,'5437',1,'080231',0,1,1,0,1,'38000-10071301-2','paristan','pari',167536,0,NULL,NULL),(38001,'Student 38001',NULL,2,'61101-3974015-6','house no.214,street no.74,I-8/3.islamabad',NULL,NULL,NULL,'4449824','051','farhanafatema@hotmail.com',NULL,NULL,NULL,NULL,'Muhammad Amjad Ehsan','03365395378 ',3,1,NULL,2010,3,1,3,10071203,'1989',1,'080584',0,1,1,0,1,'38001-10071203-2','kungfu18','panda',164950,0,NULL,NULL),(38002,'Student 38002',NULL,1,'37404-7045823-3','NIL',NULL,NULL,NULL,'411537','0513','usmanabbasi81@yahoomail.com',NULL,NULL,NULL,NULL,'Aftab Ahmed Abbasi','03226681878',101,1,NULL,2010,3,1,3,10070801,'1383',1,'090038',0,1,1,0,1,'38002-10070801-2','6681878',NULL,167532,0,NULL,NULL),(38003,'Student 38003',NULL,1,'61101-5480966-5','House#128, Street#2, Shahzad Town, Islamabad.',NULL,NULL,NULL,'0512243211',NULL,'umarikhlaq@hotmail.com',NULL,NULL,NULL,NULL,'Akhlaq Hussain','03315090175 ',3,1,NULL,2010,3,1,3,10070801,'3008',1,'080574',0,1,1,0,1,'38003-10070801-2','password','pass',154638,0,NULL,NULL),(38004,'Student 38004',NULL,1,'38403-4423071-3','House No 643 Stree No 2 Block B Zafar Colony, Sargodha',NULL,NULL,NULL,'717109','0483','wisemove2050@hotmail.com',NULL,NULL,NULL,NULL,'Muhammad Yaqoob','03317694731',10,1,NULL,2010,3,1,3,10071202,'5808',0,'080196',0,1,1,0,1,'38004-10071202-5','7101619','Moon',166221,0,NULL,NULL),(38005,'Student 38005',NULL,2,'34603-2590942-0','Comdt 501 Workshop EME, Chaklala Garrison, Rawalpindi',NULL,NULL,NULL,'56133122','051','mumtazamna@yahoo.com',NULL,NULL,NULL,NULL,'Muhammad Mumtaz','03009145337',101,1,NULL,2010,3,1,3,10070801,'1533',1,'080584',0,1,1,0,1,'38005-10070801-2','AMNA1991','simba',165094,0,NULL,NULL),(38006,'Student 38006',NULL,1,'61101-8841777-9','house # 1332 , street # 36 g11/2, islamabad',NULL,NULL,NULL,'2290487','051','devilman_me@hotmail.com',NULL,NULL,NULL,NULL,'Anwarulhaq','03455151657',3,1,NULL,2010,3,1,3,10070801,'3301',1,'080231',0,1,1,0,1,'38006-10070801-2','dino@14324','.....',158084,0,NULL,NULL),(38007,'Student 38007',NULL,1,'37406-1291536-5','C-146 lala rukh colony wah cntt',NULL,NULL,NULL,NULL,NULL,'fakhar.alizaidi@gmail.com',NULL,NULL,NULL,NULL,'Syed Haider Ali Zaidi','03009782146',100,1,NULL,2010,3,1,3,10070801,'3955',1,'080196',0,1,1,0,1,'38007-10070801-2','fakharali','name',165740,0,NULL,NULL),(38008,'Student 38008',NULL,1,'38201-8917195-9','H no#13 St no#15 Col Amanullah Road Bara Kahu Islamabad',NULL,NULL,NULL,'2230189','051','abdul_mananmalik@yahoo.com',NULL,NULL,NULL,NULL,'Malik M. Akhtar Abid Joya','03435011099 ',3,1,2,2010,3,1,3,10071203,'2096',1,'090038',0,1,1,0,1,'38008-10071203-2','abdulmanan',NULL,130573,0,'130573',NULL),(38009,'Student 38009',NULL,1,'37405-8051663-7','H no#3A Sector no#3 Khayaban-e-Sir Syed Rawalpindi',NULL,NULL,NULL,'4831593','051','abdul_mananmalik@yahoo.com',NULL,NULL,NULL,NULL,'Muhammad Saleem','03315392197 ',101,1,NULL,2010,3,1,3,10071203,'1459',1,'080231',0,1,1,0,1,'38009-10071203-2','ABDULREHMAN',NULL,130574,0,NULL,NULL),(38010,'Student 38010',NULL,1,'33201-6899335-3','1/11 MES BLOCK MR3 NAVAL COMPLEX E8 ISLAMABAD',NULL,NULL,NULL,'2289616','051','saimraza92@yahoo.com',NULL,NULL,NULL,NULL,'Munawar Ahmad','03215051775',3,1,NULL,2010,3,1,3,10070801,'1487',1,'080584',0,1,1,0,1,'38010-10070801-2','12345678',NULL,166598,0,NULL,NULL),(38011,'Student 38011',NULL,1,'42000-5285544-1','20-S, Gulberg 2, Lahore.',NULL,NULL,NULL,'5760123','042','hamzakhaleel@hotmail.com',NULL,NULL,NULL,NULL,'Khaleel','03235381240 ',2,1,NULL,2010,3,1,3,10070901,'1352',1,NULL,0,0,1,0,0,'38011-10070901-2','iwaly16',NULL,157618,0,NULL,NULL),(38012,'Student 38012',NULL,2,'37405-4968143-7','454 1/2 lotia compound adamjee road saddar rawalpindi',NULL,NULL,NULL,'5565272','051','jamilahussain_52@hotmail.com',NULL,NULL,NULL,NULL,'Nasir Hussain','03315324967',101,1,NULL,2010,3,1,3,10070801,'1132',1,'080196',0,1,1,0,1,'38012-10070801-2','5565272','5565272',165596,0,NULL,NULL),(38013,'Student 38013',NULL,1,'14202-1862077-3','H#268 A, opposite Old Railway Hospital Westridge Rd Rwp',NULL,NULL,NULL,'2569325','051',NULL,NULL,NULL,NULL,NULL,'Faiz Ullah Khattak','03135674172',101,1,NULL,2010,3,1,3,10071203,'1028',1,'090038',0,1,1,0,1,'38013-10071203-2','1234567','1234567',167590,0,NULL,NULL),(38014,'Student 38014',NULL,2,'37405-4968143-7','454 1/2 lotia compound adamjee road saddar rawalpindi',NULL,NULL,NULL,'5565272','051','jamilahussain_52@hotmail.com',NULL,NULL,NULL,NULL,'Nasir Hussain','03315324967',101,1,NULL,2010,3,1,3,10071202,'1440',1,'080196',1,1,1,0,1,'38014-10071202-9','5565272','5565272',165596,0,NULL,NULL),(38015,'Student 38015',NULL,2,'37405-4173823-7','H.#Z/554A,st#75dhoke ratta',NULL,NULL,NULL,'051-5531803',NULL,'mashal_ashfaq@hotmail.com',NULL,NULL,NULL,NULL,'Muhammad Ashfaq','03335127703 ',101,1,NULL,2010,3,1,3,10071203,'1529',1,'080144',0,1,1,0,1,'38015-10071203-2',NULL,'mashalashfaq',166405,0,NULL,NULL),(38016,'Student 38016',NULL,2,'37401-9970058-2','house # CB-1040, Street # 06, Mohalllah Dar-ul-Islam Kamalabad, Rawalpindi.',NULL,NULL,NULL,NULL,NULL,'maliks_gr@yahoo.com',NULL,NULL,NULL,NULL,'Amir Kabal','03335155161 ',101,1,NULL,2010,3,1,3,10071203,'4171',1,'080574',0,1,1,0,1,'38016-10071203-1','malikjabbar','lahore',167588,0,NULL,NULL),(38017,'Student 38017',NULL,1,'61101-8534509-9','HOUSE#440, St# 57, Sector # I- 8/3, Islamabad',NULL,NULL,NULL,'4863040','051','nadjal012@hotmail.com',NULL,NULL,NULL,NULL,'Nadeem Jalil','03238556970',3,1,NULL,2010,3,1,3,10071202,'1393',1,'080196',0,1,1,0,1,'38017-10071202-5','talhahiba','names',158358,0,NULL,NULL),(38018,'Student 38018',NULL,1,'61101-6353087-9','200,st # 18, F-10/2,Islamabad,Pakistan.',NULL,NULL,NULL,'2299016','051','shahan.mukhtar@gmail.com',NULL,NULL,NULL,NULL,'Shahid Mukhtar','03455091064',3,1,NULL,2010,3,1,3,10071202,'1881',0,'080144',0,1,1,0,1,'38018-10071202-5','shahan1988','shahan1988',154500,0,NULL,NULL),(38019,'Student 38019',NULL,1,'61101-6353087-9','200,st # 18, F-10/2,Islamabad,Pakistan.',NULL,NULL,NULL,'2299016','051','shahan.mukhtar@gmail.com',NULL,NULL,NULL,NULL,'Shahid Mukhtar','03455091064',3,1,NULL,2010,3,1,3,10070903,'2052',1,'080144',1,1,1,0,1,'38019-10070903-1','shahan1988','shahan1988',154500,0,NULL,NULL),(38020,'Student 38020',NULL,1,'37405-2897838-4','H#SD 180 St#4 Askari XI near Qasim market Rwp',NULL,NULL,NULL,'5113281','051',NULL,NULL,NULL,NULL,NULL,'Tabassum Zaheer','03009555824 ',101,1,NULL,2010,3,1,3,10071203,'4541',1,'080103',0,1,1,0,1,'38020-10071203-2','1234567','1234567',167623,0,NULL,NULL);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_test`
--

DROP TABLE IF EXISTS `candidate_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test` (
  `CANDIDATE_ID` int NOT NULL,
  `SQP_ID` int NOT NULL,
  `SESSION_ID` int DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `QUESTION_ATTEMPED` smallint DEFAULT NULL,
  `MARKS` decimal(6,2) DEFAULT NULL,
  `TEST_STATUS` tinyint DEFAULT '0',
  PRIMARY KEY (`CANDIDATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_test`
--

LOCK TABLES `candidate_test` WRITE;
/*!40000 ALTER TABLE `candidate_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_test_detail`
--

DROP TABLE IF EXISTS `candidate_test_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_detail` (
  `CANDIDATE_ID` int NOT NULL,
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SELECTED_ANSWER` tinyint DEFAULT '-1',
  `LAST_VIEW_TIME` datetime DEFAULT NULL,
  `ELAPSED_TIME` datetime DEFAULT NULL,
  `IS_ATTEMPED` tinyint DEFAULT '0',
  `IS_CORRECT` tinyint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `MARKED_BY` varchar(16) DEFAULT NULL,
  `MARKED_ON` datetime DEFAULT NULL,
  PRIMARY KEY (`QUESTION_ID`,`QP_ID`,`SQP_ID`,`CANDIDATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_test_detail`
--

LOCK TABLES `candidate_test_detail` WRITE;
/*!40000 ALTER TABLE `candidate_test_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_test_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_test_result`
--

DROP TABLE IF EXISTS `candidate_test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_result` (
  `CANDIDATE_ID` int NOT NULL,
  `QUESTION_ATTEMPTED` smallint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `DIFFICULTY_FACTOR` decimal(10,6) DEFAULT NULL,
  `FINAL_MARKS` decimal(10,6) DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `COMPUTER_ID` varchar(64) DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_test_result`
--

LOCK TABLES `candidate_test_result` WRITE;
/*!40000 ALTER TABLE `candidate_test_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_test_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_test_result_detail`
--

DROP TABLE IF EXISTS `candidate_test_result_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_result_detail` (
  `CANDIDATE_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  `QUESTION_ATTEMPTED` smallint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `QUESTION_CORRECT` smallint DEFAULT NULL,
  `NODE_ID` int DEFAULT NULL,
  `QUESTION_WTG` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`SA_ID`,`CANDIDATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_test_result_detail`
--

LOCK TABLES `candidate_test_result_detail` WRITE;
/*!40000 ALTER TABLE `candidate_test_result_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_test_result_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_test_schedule`
--

DROP TABLE IF EXISTS `candidate_test_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_schedule` (
  `CANDIDATE_ID` int NOT NULL,
  `TEST_SESSION` int DEFAULT NULL,
  `TEST_CENTER` int DEFAULT NULL,
  `PROGRAMME_ID` int DEFAULT NULL,
  `SEAT_NUMBER` int DEFAULT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `ARN` int DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_test_schedule`
--

LOCK TABLES `candidate_test_schedule` WRITE;
/*!40000 ALTER TABLE `candidate_test_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_test_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correct_answer_choice`
--

DROP TABLE IF EXISTS `correct_answer_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correct_answer_choice` (
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `QUESTION_ID` int NOT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correct_answer_choice`
--

LOCK TABLES `correct_answer_choice` WRITE;
/*!40000 ALTER TABLE `correct_answer_choice` DISABLE KEYS */;
INSERT INTO `correct_answer_choice` VALUES (1,10141),(1,10142),(1,10143),(1,10144),(1,10145),(1,10146),(1,10147),(1,10148),(1,10149),(1,10150),(1,10151),(1,10152),(1,10153),(1,10154),(1,10155),(1,10156),(1,10157),(1,10158),(1,10159),(1,10160),(1,10161),(1,10162),(1,10163),(1,10164),(1,10165),(1,10166),(1,10167),(1,10168),(1,10169),(1,10170),(1,14102),(1,14103),(1,14122),(1,14126),(1,14127),(1,14130),(1,14133),(1,14137),(1,14138),(1,14140),(1,14142),(1,14143),(1,14145),(1,14149),(1,14160),(1,14201),(1,14206),(1,14211),(1,14213),(1,14214),(1,14215),(1,14218),(1,14224),(1,14225),(1,14228),(1,14236),(1,14240),(1,14241),(1,14244),(1,14246),(1,14249),(1,14251),(1,14256),(1,14257),(1,14302),(1,14304),(1,14306),(1,14312),(1,14317),(1,14319),(1,14323),(1,14324),(1,14325),(1,14328),(1,14337),(1,14341),(1,14346),(1,14347),(1,14350),(1,14351),(1,14353),(1,14357),(2,14105),(2,14111),(2,14113),(2,14115),(2,14117),(2,14118),(2,14121),(2,14128),(2,14134),(2,14148),(2,14150),(2,14151),(2,14153),(2,14156),(2,14159),(2,14204),(2,14205),(2,14210),(2,14216),(2,14219),(2,14227),(2,14229),(2,14235),(2,14238),(2,14239),(2,14248),(2,14250),(2,14255),(2,14305),(2,14307),(2,14309),(2,14331),(2,14334),(2,14340),(2,14349),(2,14354),(2,14360),(3,14104),(3,14109),(3,14114),(3,14116),(3,14119),(3,14120),(3,14123),(3,14131),(3,14135),(3,14139),(3,14144),(3,14146),(3,14147),(3,14152),(3,14154),(3,14158),(3,14202),(3,14203),(3,14207),(3,14208),(3,14209),(3,14212),(3,14217),(3,14222),(3,14230),(3,14233),(3,14234),(3,14237),(3,14243),(3,14245),(3,14247),(3,14254),(3,14259),(3,14308),(3,14313),(3,14314),(3,14315),(3,14316),(3,14320),(3,14321),(3,14322),(3,14326),(3,14329),(3,14330),(3,14332),(3,14338),(3,14344),(3,14352),(3,14358),(3,14359),(4,14101),(4,14106),(4,14107),(4,14108),(4,14110),(4,14112),(4,14124),(4,14125),(4,14129),(4,14132),(4,14136),(4,14141),(4,14155),(4,14157),(4,14220),(4,14221),(4,14223),(4,14226),(4,14231),(4,14232),(4,14242),(4,14252),(4,14253),(4,14258),(4,14260),(4,14301),(4,14303),(4,14310),(4,14311),(4,14318),(4,14327),(4,14333),(4,14335),(4,14336),(4,14339),(4,14342),(4,14343),(4,14345),(4,14348),(4,14355),(4,14356);
/*!40000 ALTER TABLE `correct_answer_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int DEFAULT NULL,
  `QUESTION_TYPE_ID` tinyint DEFAULT NULL,
  `DI_LEVEL` tinyint DEFAULT NULL,
  `TI_LEVEL` tinyint DEFAULT NULL,
  `EDI` decimal(4,2) DEFAULT NULL,
  `IS_TEXT` tinyint DEFAULT NULL,
  `QUESTION_TEXT` varchar(4000) DEFAULT NULL,
  `OLE_TEXT` int DEFAULT NULL,
  `OLE_IMAGE` int DEFAULT NULL,
  `IS_LINKED` tinyint DEFAULT NULL,
  `LINKED_TEXT_ID` int DEFAULT NULL,
  `IS_ACTIVE` tinyint DEFAULT NULL,
  `WRITER` varchar(16) DEFAULT NULL,
  `ENTER_BY` varchar(16) DEFAULT NULL,
  `ENTER_ON` datetime DEFAULT NULL,
  `MODIFY_BY` varchar(16) DEFAULT NULL,
  `MODIFY_ON` datetime DEFAULT NULL,
  `NO_OF_ACS` tinyint DEFAULT '5',
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (10141,90301,2,5,5,NULL,1,'Spontaneous reaction is one',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10142,90301,2,5,5,NULL,1,' Which one of the following solution has the highest boiling poirtely:',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10143,90301,2,5,5,NULL,1,' The pH of 0.005 molar solution of sulphuric acid is apprc',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10144,90301,2,5,5,NULL,1,'Given that heat of neutralization of strong acid and strong base as - 57.1 kg. The head produced when 0.25 mole of HCI is neutralized with 0.25 mole NaOH in aqueous solution is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10145,90301,2,5,5,NULL,1,'All Number of moles of NaOH present in 2L of 0.5 M NaOH is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10146,90301,2,5,5,NULL,1,'The molar solution of sulphuric acid is equal to N/2 solution N solution 2N solution 3N solution',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10147,90301,2,5,5,NULL,1,'Substances exist because they posses',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10148,90301,2,5,5,NULL,1,'The equilibrium constant for a reaction A+2B-> 2C is 40. The equilibrium constant for reaction   C->B +(1/2)A is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10149,90301,2,5,5,NULL,1,' In the reaction 2A +B -> A<sub>2</sub>B, if the concentration of A is doubled and that of B is halved, then the rate of the reaction will:',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10150,90301,2,5,5,NULL,1,'Correct order among the following is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10151,90301,2,5,5,NULL,1,' Which is the phenomenon who help us to calculate lattice energy of ionic crystals',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10152,90301,2,5,5,NULL,1,' The volatile metal is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10153,90301,2,5,5,NULL,1,'Gypsum on heating 120° C -130° C gives Anhydrous salt',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10154,90301,2,5,5,NULL,1,'Substances exit because they posses',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10155,90301,2,5,5,NULL,1,'0<sub>2</sub>, N<sub>2</sub> are present in the ratio of 1:4 by weight the ratio of number of molecules is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10156,90301,2,5,5,NULL,1,'Chlorine upon reaction with NaOH in cold yields',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10157,90301,2,5,5,NULL,1,'Farming\'s salt is ',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10158,90301,2,5,5,NULL,1,'Which of the following is least polarizable?',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10159,90301,2,5,5,NULL,1,'Transfer of heat from hot surrounding too cold refrigerator is an example of',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10160,90301,2,5,5,NULL,1,'Alkaline KMnO<sub>4</sub> converts ethylene into',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10161,90301,2,5,5,NULL,1,'Which one of the following is not an isotope of hydrogen?',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10162,90301,2,5,5,NULL,1,' Blue litmus turn s red in a solution of pH',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10163,90301,2,5,5,NULL,1,'Maximum ionization potential is of',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10164,90301,2,5,5,NULL,1,'Strongest acid among the following is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10165,90301,2,5,5,NULL,1,'Which molecule is planar?',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10166,90301,2,5,5,NULL,1,'A certain radioactive isotope has a half-life of 50 days. Fraction of the material left behind after lOOdays will be',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10167,90301,2,5,5,NULL,1,'The Rams speed at NTP of a gas can be calculated from the expression:',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10168,90301,2,5,5,NULL,1,'Prussian blue is',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10169,90301,2,5,5,NULL,1,'Following are fundamental ways of transferring energy',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(10170,90301,2,5,5,NULL,1,'A mixture of camphor and benzoic acid can be separated by',NULL,NULL,0,NULL,1,'NUST-PP4','ACES',NULL,'ACES',NULL,4),(14101,91141,2,5,5,NULL,1,'Isotopes differ in the:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14102,91141,2,5,5,NULL,1,'The number of moles of CO<sub>2</sub> which contain 8 g of oxygen:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14103,91141,2,5,5,NULL,1,'The largest number of molecules are present in:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14104,91141,2,5,5,NULL,1,'An insoluble solid can be separated from a liquid by:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14105,91141,2,5,5,NULL,1,'Comparative rates at which the solutes move in the paper chromatography depend on:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14106,91141,2,5,5,NULL,1,'Chose the  correct equation among the following given by Clausius to  understand the behaviour of molecules:    ',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14107,91141,2,5,5,NULL,1,'As gases can adopt the shape of the container. Therefore gases have:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14108,91141,2,5,5,NULL,1,'A gas has non-ideal behaviour at:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14109,91141,2,5,5,NULL,1,'London dispersion  forces, are  the only  forces present among the',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14110,91141,2,5,5,NULL,1,'Which of following acids is weak acid in liquid state',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14111,91141,2,5,5,NULL,1,'Which one of  the following is not a classical form of chemical bonding?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14112,91141,2,5,5,NULL,1,'Choose  the   value    of the   Redberg\'s   constant among the following',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14113,91141,2,5,5,NULL,1,'<p>Splitting   of   spectral    lines   when   atoms    are subjected to strong electric field is called:</p>',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14114,91141,2,5,5,NULL,1,'Radiation emitted by excited atoms is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14115,91141,2,5,5,NULL,1,'Which of the following  statement about positive ions is incorrect?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14116,91141,2,5,5,NULL,1,'Which one of the  following statements about negative ions is incorrect?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14117,91141,2,5,5,NULL,1,'The number of  fundamental ways of transferring energy into or out of the system is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14118,91141,2,5,5,NULL,1,'Sublimation,      vaporization,      melting      and photosynthesis all are examples of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14119,91141,2,5,5,NULL,1,'For which system does  the equilibrium a constant Kc has units of (concentration)<sup>-1</sup> ?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14120,91141,2,5,5,NULL,1,'Law of mass action states that rate of chemical reaction is directly  proportional to the product of active masses of the reactants. The term active  mass for solutions means',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14121,91141,2,5,5,NULL,1,'The solubility product of AgCI is 2 x 10<sup>-10</sup> mol<sup>2</sup> dm<sup>-6</sup> the  maximum concentration of Ag<sup>+</sup> in the solution is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14122,91141,2,5,5,NULL,1,'Which of the following solution has the highest boiling point?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14123,91141,2,5,5,NULL,1,'Dust particles in smoke is a solution of  type&nbspDust particles in smoke is a solution of  type',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14124,91141,2,5,5,NULL,1,'What  is the oxidation number of chromium in ionic compound Na<sub>2</sub>Cr<sub>2</sub>O<sub>7</sub>',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14125,91141,2,5,5,NULL,1,'Which  of the following is true about Galvanic cell?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14126,91141,2,5,5,NULL,1,'Which is the correct statement about the following reaction? <br> 2Fe + SCI, 2FeCI,',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14127,91141,2,5,5,NULL,1,'If initial concentration of reactant and half life period  of the reaction is known, then we can determine',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14128,91141,2,5,5,NULL,1,'The  chemical method used for the determination of the rate of reaction is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14129,91141,2,5,5,NULL,1,'In the periodic table, elements are arranged in a period strictly in sequence of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14130,91141,2,5,5,NULL,1,'The 14 elements have been placed in VI period and III group of the periodic table  which are called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14131,91141,2,5,5,NULL,1,'Mark  the incorrect statement about \'Li\'',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14132,91141,2,5,5,NULL,1,'Which one of the following sulphates is not soluble in water?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14133,91141,2,5,5,NULL,1,'The  metal used in the thermite process becauseof its  activity is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14134,91141,2,5,5,NULL,1,'Which  element form an ion with charge +3?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14135,91141,2,5,5,NULL,1,'Sulphuric  acid is manufactured commonly these days by',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14136,91141,2,5,5,NULL,1,'An element that has high ionization energy and tends to be chemically inactive would  most likely to be',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14137,91141,2,5,5,NULL,1,'Mark the halogen having greatest bond  energy',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14138,91141,2,5,5,NULL,1,'The  halogen which has only one oxidation state is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14139,91141,2,5,5,NULL,1,'Most  transition elements show',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14140,91141,2,5,5,NULL,1,'The %age of C in different types of iron products is in the order of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14141,91141,2,5,5,NULL,1,'The major portion of natural gas is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14142,91141,2,5,5,NULL,1,'The total coal resources of Pakistan are estimated to be',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14143,91141,2,5,5,NULL,1,'The   reactions    of  alkenes   with    halogens   is explosive in case of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14144,91141,2,5,5,NULL,1,'Alkynes     can    be    reduced     to    alkenes    by hydrogenation in the presence of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14145,91141,2,5,5,NULL,1,'Which of the following acid can be used as a catalyst in Friedel-Craft\'s reaction',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14146,91141,2,5,5,NULL,1,'Aromatic  compounds    burn with   sooty   flame because',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14147,91141,2,5,5,NULL,1,'The reaction of alcohol with HX gives',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14148,91141,2,5,5,NULL,1,'The   reaction  of alcohol  with   SOCI<sub>2</sub>   in  the presence  of pyridine solvent gives',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14149,91141,2,5,5,NULL,1,'Which of the following is known as wood  spirit?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14150,91141,2,5,5,NULL,1,'Bakelite   is   a    polymer   obtained   from    two monomers&nbsp;',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14151,91141,2,5,5,NULL,1,'The reaction in which acetaldehyde is formed from ethanol is called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14152,91141,2,5,5,NULL,1,'The conversion of acetaldehyde into lactic acid takes place by',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14153,91141,2,5,5,NULL,1,'The  solution of which acid is used for seasoning of  food',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14154,91141,2,5,5,NULL,1,'Which   one    of the  following   acids   does  not contain carboxylic group',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14155,91141,2,5,5,NULL,1,'In which of these processes are small organic molecules changed into macromolecules?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14156,91141,2,5,5,NULL,1,'The  molecular mass of a polymer is obtained by multiplying  mass of the monomer unit with the degree   of    polymerization.    The    degree     of polymerization   of    PVC    is    1000.   What    is molecular mass?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14157,91141,2,5,5,NULL,1,'Ammonium   nitrate  fertilizer  is  not  used  for which crop',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14158,91141,2,5,5,NULL,1,'Which  is the chemical formula of calcium super phosphate?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14159,91141,2,5,5,NULL,1,'The pH range of the acid rain is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14160,91141,2,5,5,NULL,1,'The gases in the atmosphere are essential for sustaining  life on earth. Thus oxygen is required for   breathing.    What   for   is    carbon   dioxide required?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14201,91142,2,5,5,NULL,1,'Isotopes differ in:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14202,91142,2,5,5,NULL,1,'The  relative atomic mass of oxygen is 16 what is the mass of 2 moles of oxygen gas:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14203,91142,2,5,5,NULL,1,'Which of the following is not related on a.m.u?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14204,91142,2,5,5,NULL,1,'Which  of the following  methods  is  the most suitable  to obtain   a pure  and  dry   sample of sodium chloride from a mixture of solid sodium chloride and sand?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14205,91142,2,5,5,NULL,1,'Choose the  pair of following components which can b,e  separated by sublimation process:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14206,91142,2,5,5,NULL,1,'At constant temperature, volume of a given  mass of  a gas is inversely proportional to pressure on it. This statement is according to:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14207,91142,2,5,5,NULL,1,'By increasing temperature, the transition from a gas to an ionized gas. free electrons is called:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14208,91142,2,5,5,NULL,1,'Which of the following laws study the  pressure-volume  relationship of a gas at constant temperature?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14209,91142,2,5,5,NULL,1,'Which one of the following statements about positive ion is incorrect?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14210,91142,2,5,5,NULL,1,'Which one of the following equations represents the l<sup>sl</sup> ionization energy of Na? ',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14211,91142,2,5,5,NULL,1,'Which one of the following pair of atoms is  most likely to form an ionic bond?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14212,91142,2,5,5,NULL,1,'Splitting   of   spectral   lines   when    atomsSplitting   of   spectral   lines   when    atoms   are subjected to strong electric field is called:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14213,91142,2,5,5,NULL,1,'Consider that in the position of an electron, the   uncertainty is zero. What will be uncertainty in its momentum?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14214,91142,2,5,5,NULL,1,'The shape of 2s orbital resembles',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14215,91142,2,5,5,NULL,1,'Which  of the following has the greatest covalent character?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14216,91142,2,5,5,NULL,1,'Nobel gases are',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14217,91142,2,5,5,NULL,1,'Calorie is equivalent to',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14218,91142,2,5,5,NULL,1,'The change in heat energy of a chemical reaction at constant temperature and pressure is called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14219,91142,2,5,5,NULL,1,'Chemical    equilibrium   involving  reactants   and products in more than one phase is known',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14220,91142,2,5,5,NULL,1,'Le-Chatelier\'s     principle    is    applied     on   the reversible reaction in  order to',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14221,91142,2,5,5,NULL,1,'Who studied the effect of temperature, pressure and concentration on equilibrium?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14222,91142,2,5,5,NULL,1,'The ratio of the number of moles of a particular component of the solution to the total number of moles of all the components of the solution is called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14223,91142,2,5,5,NULL,1,'The %age weight of NaCI, if 2.0g of NaCI is dissolved in 20g of H<sub>2</sub>O is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14224,91142,2,5,5,NULL,1,'Which    is   the   correct    statement   about   the following  reaction? <br> 2Fe + 3CI<sub>2-------- </sub>»2FeCI<sub>3</sub>',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14225,91142,2,5,5,NULL,1,'Which is the oxidation state of oxygen atom in sodium superoxide?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14226,91142,2,5,5,NULL,1,'An oxidation agent in a chemical reaction is the substance which',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14227,91142,2,5,5,NULL,1,'An increase in concentration of reactants',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14228,91142,2,5,5,NULL,1,'Rancidity produced in butter can be decreases by adding quinoline to the butter. This statement shows that',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14229,91142,2,5,5,NULL,1,'The elements in the periodic table with a to j nic number 30 is expected to be present  in',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14230,91142,2,5,5,NULL,1,'The number of elements in the fourth period isf periodic table is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14231,91142,2,5,5,NULL,1,'A common mineral of alkali metal sodium is borax which has  formula',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14232,91142,2,5,5,NULL,1,'Alkali earth metals have two electrons  outermost',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14233,91142,2,5,5,NULL,1,'Name the non-metallic element in III A  group of the periodic table',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14234,91142,2,5,5,NULL,1,'The oxides of boron and silicon are',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14235,91142,2,5,5,NULL,1,'The halogens  exist  as  halides.   Which    is  not common place where  they are found?&nbsp;',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14236,91142,2,5,5,NULL,1,'At room temperature fluorine is ',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14237,91142,2,5,5,NULL,1,'Which of the halogens fails to give a precipitate with AgNO<sub>3</sub>?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14238,91142,2,5,5,NULL,1,'In which  compound of xenon, Xe has maximum oxidation state?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14239,91142,2,5,5,NULL,1,'The impurities associated with ores are  called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14240,91142,2,5,5,NULL,1,'The colour of transition metal complex is due to',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14241,91142,2,5,5,NULL,1,'Which    one     of   the    following     is    alicyclic hydrocarbon?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14242,91142,2,5,5,NULL,1,'Which is not the characteristic property of organic compound',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14243,91142,2,5,5,NULL,1,'The process in which orbitals of  different energies  and shapes mix with each other to give equivalent hydrid orbitals is called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14244,91142,2,5,5,NULL,1,'Paraffins are also called',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14245,91142,2,5,5,NULL,1,'The electrophilie in aromatic sulphonation is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14246,91142,2,5,5,NULL,1,'Benzene is insoluble in',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14247,91142,2,5,5,NULL,1,'Alkyl halides are considered to be very reactive compounds towards  nucleophiles because ',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14248,91142,2,5,5,NULL,1,'Alkanes may be prepared by the reduction of alkylhalides with',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14249,91142,2,5,5,NULL,1,'Picric acid behaves like an acid but it is a',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14250,91142,2,5,5,NULL,1,'According to the Lewis concept ethers behave  as',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14251,91142,2,5,5,NULL,1,'Aldehydes are the oxidation product of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14252,91142,2,5,5,NULL,1,'Which of the  following will have the highest boiling  point',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14253,91142,2,5,5,NULL,1,'An aqueous solution of an organic compound reacts with sodium carbonate to produce carbon dioxide gas. Which one of the following could be the  organic compound?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14254,91142,2,5,5,NULL,1,'Acetyl    chloride     is    converted    into     acetic anhydride when treated with',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14255,91142,2,5,5,NULL,1,'Vegetables oils are',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14256,91142,2,5,5,NULL,1,'The structure of a polymer depends upon how the monomer  repeating unit joins to make a polymer. Which is not the type of structure of a polymer among the following?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14257,91142,2,5,5,NULL,1,'Fertilizers are usually',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14258,91142,2,5,5,NULL,1,'What element is not essential for the growth of plants  and is not required in the fertilizer?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14259,91142,2,5,5,NULL,1,'Which one of the following  is not a component of environment',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14260,91142,2,5,5,NULL,1,'Choose   the    chief   air   pollutant    among   the following which depletes ozone layer',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14301,91143,2,5,5,NULL,1,'A molecular ion is formed by:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14302,91143,2,5,5,NULL,1,'Who determined atomic masses of elements?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14303,91143,2,5,5,NULL,1,'What is correct relationship between  empirical and  molecular formulas?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14304,91143,2,5,5,NULL,1,'Sublimation is a separation technique used toremove a:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14305,91143,2,5,5,NULL,1,'Salvation extraction method is a  particularly useful technique for separation when the product to be separated is:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14306,91143,2,5,5,NULL,1,'Matter having no definite shape and volume is  called:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14307,91143,2,5,5,NULL,1,'The molar volume of CO<sub>2</sub> is maximum at:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14308,91143,2,5,5,NULL,1,'According to kinetic molecular theory, kinetic energy of molecules increases when they are:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14309,91143,2,5,5,NULL,1,'When water freezes at 0°C, its density decreases due to:',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14310,91143,2,5,5,NULL,1,'Ionic solids are characterized by',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14311,91143,2,5,5,NULL,1,'Which one of the following statements about sodium chloride is incorrect?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14312,91143,2,5,5,NULL,1,'Rutherford\'s model of atom failed because',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14313,91143,2,5,5,NULL,1,'The effective charge for an atom is less than the  actual nuclear charge, this is due to',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14314,91143,2,5,5,NULL,1,'<span style=\"letter-spacing:.25pt; font-size:11.0pt; color:black; \">Which  of  the  following, particles  would,    on losing an electron, have a half-filled set of p oribtals?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14315,91143,2,5,5,NULL,1,'Molecular orbital picture of O<sub>2</sub> indicates',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14316,91143,2,5,5,NULL,1,'<span style=\"letter-spacing:.3pt; font-size:11.0pt; color:black; \">The atomic radius of hydrogen is 37.7 _____ . Choose  the correct unit among the following',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14317,91143,2,5,5,NULL,1,'According   to   SI.   System, heat   contents   are measured in units  of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14318,91143,2,5,5,NULL,1,'The energy required to break 1 mole of bonds to form neutral atoms is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14319,91143,2,5,5,NULL,1,'The pressure of a gas will____ when the volume is decreased and will <u>       </u> when the absolute temperature is decreased',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14320,91143,2,5,5,NULL,1,'Which substance, in  1 mol dm&quot;<sup>3</sup> aqueous solution, would have the same hydrogen ion concentration as 1 mol dm&quot;<sup>3</sup> of  hydrochloric acid?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14321,91143,2,5,5,NULL,1,'Which statement concerning the equilibrium reaction~below is true?  STATEMENT MISSING',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14322,91143,2,5,5,NULL,1,'One of the following ways of  expressing the concentration of a solution dose not  depend on temperature.  It is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14323,91143,2,5,5,NULL,1,'A 20% solution of NaCI by weight means that',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14324,91143,2,5,5,NULL,1,'A dry alkaline cell has  porous Zn anode &amp; MnO<sub>2 </sub>as  cathode the electrolyte used is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14325,91143,2,5,5,NULL,1,'Alkaline battery has voltage of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14326,91143,2,5,5,NULL,1,'Which statement is correct about the life period of a galvanic cell?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14327,91143,2,5,5,NULL,1,'The enzyme which can catalyse the conversion of glucose to ethanol is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14328,91143,2,5,5,NULL,1,'A student started to work on 100g of a compound whose  half-life is 5 hours, how much compound is left after 25 hours',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14329,91143,2,5,5,NULL,1,'Germanium is a ',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14330,91143,2,5,5,NULL,1,'The attempt of  classification of elements on the basis of atomic number of  elements is due to',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14331,91143,2,5,5,NULL,1,'The least reactive metal among the following is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14332,91143,2,5,5,NULL,1,'Setting of plaster of paris is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14333,91143,2,5,5,NULL,1,'Borax bead test is responded by ',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14334,91143,2,5,5,NULL,1,'Choose the amphoteric  oxide?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14335,91143,2,5,5,NULL,1,'Which statement about oxygenWhich statement about oxygen and sulphur is not true?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14336,91143,2,5,5,NULL,1,'Which one among the following is more  stable?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14337,91143,2,5,5,NULL,1,'The strongest acid among the following oxyacids is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14338,91143,2,5,5,NULL,1,'Mark the element which is found in solid  state',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14339,91143,2,5,5,NULL,1,'The most stable oxidation state of Mn is',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14340,91143,2,5,5,NULL,1,'d-block elements are',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14341,91143,2,5,5,NULL,1,'<span style=\"letter-spacing:.2pt; font-size:10.5pt; color:black; \">A  molecular orbital  is   formed  by the  linear combination of two atomic orbitals. A  molecular orbital  must accommodate<u>        </u>electrons',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14342,91143,2,5,5,NULL,1,'Ether shows the phenomenon of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14343,91143,2,5,5,NULL,1,'Acetylene is used in the manufacture of',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14344,91143,2,5,5,NULL,1,'Which reaction occurs when ethane and chlorine are mixed in diffused  sunlight?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14345,91143,2,5,5,NULL,1,'Which is the C-C  bond length in benzene among the following',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14346,91143,2,5,5,NULL,1,'Identify the compounds formed, when benzene reacts with CH<sub>3</sub>CI  in the presence of A1C1<sub>3</sub>',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14347,91143,2,5,5,NULL,1,'Reduction of alkyl halides gives',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14348,91143,2,5,5,NULL,1,'Alkyl halides can be prepared by',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14349,91143,2,5,5,NULL,1,'Oxidation of primary alcohol gives',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14350,91143,2,5,5,NULL,1,'Which one of the following organic acids is made from methanol?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14351,91143,2,5,5,NULL,1,'Which  of  the  following reagents  is   used to distinguish        between      acetophenone      and benzophenone?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14352,91143,2,5,5,NULL,1,'Which of these reactions is shown by butanone, CH<sub>3</sub>COCH<sub>2</sub>CH<sub>3</sub>?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14353,91143,2,5,5,NULL,1,'A -amino acids react with nitrous acid to give  cc- hydroxy carboxylic acid and',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14354,91143,2,5,5,NULL,1,'Essential   amino acids are those amino acids which',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14355,91143,2,5,5,NULL,1,'Which one of the following statements about, glucose and sucrose is incorrect?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14356,91143,2,5,5,NULL,1,'A   fat  or   oil   is   characterized   for   extent  of unsaturation by one of the following number. Which one is?',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14357,91143,2,5,5,NULL,1,'Which  three elements are needed for the healthy growth  of plants',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14358,91143,2,5,5,NULL,1,'Which is nat argillaceous material',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14359,91143,2,5,5,NULL,1,'The concentration of dissolved molecular oxygen in   water   which   acts   as    the   most   important oxidizing agent ranges from',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4),(14360,91143,2,5,5,NULL,1,'Which  one of the following is used as coagulant for  purification of potable water',NULL,NULL,0,NULL,1,'ILMI','ACES',NULL,'ACES',NULL,4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_paper`
--

DROP TABLE IF EXISTS `question_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_paper` (
  `QP_ID` int NOT NULL,
  `QP_DESC` varchar(512) DEFAULT NULL,
  `NODE_ID` int DEFAULT NULL,
  `EDI` decimal(10,2) DEFAULT NULL,
  `TEST_SESSION` int DEFAULT NULL,
  `TEST_CENTER` int DEFAULT NULL,
  `USER_ID` varchar(18) DEFAULT NULL,
  `COMPUTER_ID` varchar(64) DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`QP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_paper`
--

LOCK TABLES `question_paper` WRITE;
/*!40000 ALTER TABLE `question_paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rqp_specification`
--

DROP TABLE IF EXISTS `rqp_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rqp_specification` (
  `TS_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `SUBJECT_ID` int NOT NULL,
  `NODE_NAME` varchar(128) DEFAULT NULL,
  `NOQ` smallint DEFAULT NULL,
  `WTG` decimal(6,2) DEFAULT NULL,
  `DISCIPLINE` int DEFAULT NULL,
  `TIME_ALLOCATED` smallint DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `COMPUTER_ID` varchar(64) DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  `SA_ID` int DEFAULT NULL,
  `IS_NEGATIVE_MARKING` tinyint DEFAULT '0',
  `BATCH` int DEFAULT '2025',
  `PROGRAMME` int DEFAULT NULL,
  PRIMARY KEY (`TS_ID`,`QP_ID`,`SUBJECT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rqp_specification`
--

LOCK TABLES `rqp_specification` WRITE;
/*!40000 ALTER TABLE `rqp_specification` DISABLE KEYS */;
INSERT INTO `rqp_specification` VALUES (6100,811223,6101,'Advance Mathematics',60,30.00,2,45,'Saleem',NULL,NULL,91141,0,2017,1),(6100,811223,6102,'Basic Mathematics',20,10.00,2,15,'Saleem',NULL,NULL,91142,0,2017,1),(6100,811223,6103,'English',30,15.00,2,15,'Saleem',NULL,NULL,91143,0,2017,1),(6100,811223,6104,'Chemistry',30,15.00,2,15,'Saleem',NULL,NULL,90301,0,2017,1),(6000,811162,6001,'Advance Mathematics',40,40.00,2,50,'Saleem','A1306 AAVMWS3SE1Administrator Saleem',NULL,732,0,2017,1),(6100,811224,6101,'Advance Mathematics',60,30.00,2,45,'Saleem',NULL,NULL,732,0,2017,1),(6100,811224,6102,'Basic Mathematics',20,10.00,2,15,'Saleem',NULL,NULL,779,0,2017,1),(6100,811224,6103,'English',30,15.00,2,15,'Saleem',NULL,NULL,4000,0,2017,1),(6100,811224,6104,'Chemistry',30,15.00,2,15,'Saleem',NULL,NULL,91100,0,2017,1),(6100,811224,6105,'Physics',60,30.00,2,30,'Saleem',NULL,NULL,6000,0,2017,1),(5100,811159,5101,'Chemistry',25,25.00,1,30,'Saleem',NULL,NULL,90000,0,2017,1),(5100,811159,5102,'IQ and Analytical Skills',15,15.00,1,15,'Saleem',NULL,NULL,5000,0,2017,1),(5100,811160,5101,'Chemistry',25,25.00,1,30,'Saleem',NULL,NULL,90000,0,2017,1),(5100,811160,5102,'IQ and Analytical Skills',15,15.00,1,15,'Saleem',NULL,NULL,5000,0,2017,1),(6000,811162,6002,'Basic Mathematics',10,10.00,2,10,'Saleem','A1306 AAVMWS3SE1Administrator Saleem',NULL,779,0,2017,1),(6000,811162,6003,'English',10,10.00,2,15,'Saleem','A1306 AAVMWS3SE1Administrator Saleem',NULL,4000,0,2017,1),(6000,811162,6004,'Chemistry',20,20.00,2,20,'Saleem','A1306 AAVMWS3SE1Administrator Saleem',NULL,90000,0,2017,1),(6000,811162,6005,'Physics',30,30.00,2,30,'Saleem','A1306 AAVMWS3SE1Administrator Saleem',NULL,6000,0,2017,1);
/*!40000 ALTER TABLE `rqp_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_question_paper`
--

DROP TABLE IF EXISTS `scheduled_question_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_question_paper` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `IS_SUBJECT_SWAPPING` tinyint NOT NULL DEFAULT '0',
  `IS_QUESTION_SWAPPING` tinyint NOT NULL DEFAULT '0',
  `IS_ANSWER_SWAPPING` tinyint NOT NULL DEFAULT '0',
  `IS_ASSIGNED` tinyint NOT NULL DEFAULT '0',
  `TEST_CENTER` int DEFAULT NULL,
  `SESSION_ID` int DEFAULT NULL,
  `TS_ID` int DEFAULT NULL,
  PRIMARY KEY (`SQP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_question_paper`
--

LOCK TABLES `scheduled_question_paper` WRITE;
/*!40000 ALTER TABLE `scheduled_question_paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_question_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_test_answer`
--

DROP TABLE IF EXISTS `scheduled_test_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_test_answer` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `ANS_CHOICE_ORDER` tinyint NOT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`,`QP_ID`,`SQP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_test_answer`
--

LOCK TABLES `scheduled_test_answer` WRITE;
/*!40000 ALTER TABLE `scheduled_test_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_test_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_test_question`
--

DROP TABLE IF EXISTS `scheduled_test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_test_question` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  `QUESTION_ORDER` smallint NOT NULL,
  `SUBJECT_ORDER` smallint DEFAULT NULL,
  PRIMARY KEY (`SQP_ID`,`QP_ID`,`QUESTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_test_question`
--

LOCK TABLES `scheduled_test_question` WRITE;
/*!40000 ALTER TABLE `scheduled_test_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_test_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_question`
--

DROP TABLE IF EXISTS `test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_question` (
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  PRIMARY KEY (`QP_ID`,`QUESTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_question`
--

LOCK TABLES `test_question` WRITE;
/*!40000 ALTER TABLE `test_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 16:04:01
