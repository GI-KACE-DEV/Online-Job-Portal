-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 07:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_job_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Healthcare', 'healthcare', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(2, 'Medical Services', 'medical-services', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(3, 'Technology', 'technology', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(4, 'Software Development', 'software-development', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(5, 'Education', 'education', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(6, 'Engineering', 'engineering', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(7, 'Creative and Design', 'creative-and-design', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(8, 'Research and Development', 'research-and-development', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(9, 'Hospitality and Tourism', 'hospitality-and-tourism', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(10, 'Business and Management', 'business-and-management', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(11, 'Finance and Accounting', 'finance-and-accounting', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(12, 'Sales and Marketing', 'sales-and-marketing', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(13, 'Legal Services', 'legal-services', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(14, 'Media and Communication', 'media-and-communication', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(15, 'Manufacturing and Production', 'manufacturing-and-production', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(16, 'Transportation and Logistics', 'transportation-and-logistics', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(17, 'Environmental Services', 'environmental-services', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(18, 'Social Services', 'social-services', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(19, 'Agriculture and Farming', 'agriculture-and-farming', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(20, 'Construction and Skilled Trades', 'construction-and-skilled-trades', '1', '2024-08-06 17:10:42', '2024-08-06 17:10:42'),
(21, 'Customer Service', 'customer-service', '1', '2024-08-07 14:15:01', '2024-08-07 14:15:01'),
(22, 'Manufacturing and Production Management', 'manufacturing-and-production-management', '1', '2024-08-23 17:20:09', '2024-08-23 17:20:09'),
(23, 'Utility Services', 'utility-services', '1', '2024-08-23 17:57:51', '2024-08-23 17:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `cname`, `slug`, `address`, `phone`, `website`, `logo`, `banner`, `slogan`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'National Information Technology Agency', 'national-information-technology-agency', 'Ministry of Communications Office Complex\n \n3rd Floor\n \nAbdul Diof Road, Ridge. Accra', ' +233-0302-95339', 'https://nita.gov.gh/', 'nita.jpeg', 'banner.png', 'To be a world-class ICT organization with a secure infrastructure, systems and services.', 'NITA exists to create an enabling environment for effective deployment and use of ICT by all sectors, through the implementations of sound policies and regulatory framework.', '2024-08-06 16:42:00', '2024-08-06 16:42:00'),
(2, 4, 'Kwame Nkrumah University of Science and Technology', 'kwame-nkrumah-university-of-science-and-technology', 'The Deputy Registrar\nAcademic Affairs Division\nRegistrar\'s offices\nKNUST', '+233-3224-99897', 'https://www.knust.edu.gh/', 'knust.jpeg', 'banner.png', 'KNUST is the first choice of countless prospective students seeking quality', 'The KNUST has, since January 2005, transformed from its previous centralized system of administration into significantly decentralized one called the Collegiate system. Under this system, the various faculties have been condensed into six colleges. Since its inception, the University has been administered on the Faculty-based system.', '2024-08-06 16:42:00', '2024-08-06 16:42:00'),
(3, 5, 'Tullow Oil Ghana', 'tullow-iol-ghana', '9 Chiswick Park\n566 Chiswick High Road\nLondon, W4 5XT\nUnited Kingdom', '+44 (0)20 3249 9000', 'https://www.tullowoil.com/', 'tullow.jpeg', 'banner.png', 'To build a better future through responsible oil and gas development.', 'Tullow is an independent energy company that is building a better future through responsible oil and gas development in Africa.', '2024-08-06 16:42:00', '2024-08-06 16:42:00'),
(4, 6, 'Fan Milk Limited - Ghana', 'fan-milk-ghana', '9 Chiswick Park\n566 Chiswick High Road\nLondon, W4 5XT\nUnited Kingdom', ' 0204312932', 'https://fanmilk.danone.com/our-footprint/ghana/fmg-about-ghana.html', 'fanmilk.jpeg', 'banner.png', 'To build a better future through responsible oil and gas development.', 'Founded by a Danish entrepreneur (Erik Emborg), Fan Milk Limited has been in existence since 1962. The company was converted to a public limited liability in 1969, and is currently engaged in the production and distribution of quality refreshing milk-based and fruit-based products.', '2024-08-06 17:10:39', '2024-08-06 17:10:39'),
(5, 7, 'Electricity Company of Ghana', 'electricity-company-of-ghana', 'Electro-Volta House\nP. O. Box 521 \nAccra, Ghana', '+233-302-611-611', 'https://ecg.com.gh/', 'ecg.jpeg', 'banner.png', 'To provide quality, reliable and safe electricity services to support the economic growth and development of Ghana', 'The primary objective of the Company is to supply/distribute electrical energy to the people of Ghana within the Company’s operational areas. The Company aims at operating on sound commercial lines in the discharge of its duties. It also aims at judicious supervision of rural electrification projects on behalf of the Government of Ghana', '2024-08-06 17:10:39', '2024-08-06 17:10:39'),
(6, 8, 'Ghana Commercial Bank', 'ghana-commercial-bank', '1004 Turner Land\nWest Ernestina, RI 83059-0022', '(678) 329-7328', 'https://www.gcbbank.com.gh/', 'gcb.jpeg', 'banner.png', 'Your bank for life.', 'GCB Bank PLC is Ghana’s first and largest indigenous bank with the vision to be the leading Bank in all our markets and the mission to provide first class banking solutions for customers and value for all stakeholders. This year, the Bank celebrates Seventy (70) years of providing unrivalled financial solutions towards socio-economic development of Ghana.', '2024-08-06 17:10:39', '2024-08-06 17:10:39'),
(7, 9, 'Toyoto Ghana', 'toyota-ghana', '211 Hills Manors Apt. 243\nJenkinsstad, AZ 56075', '+1.478.803.8784', 'https://www.toyotaghana.com/', 'toyota.jpeg', 'banner.png', 'We take you there safe', 'Toyota Ghana Company Ltd (TGCL) was incorporated in Ghana in January 1998 by the investment of Marubeni Corporation, Japan and Marubeni Auto Europe S.A., Belgium. The company started operations in April 1998. In 2008, Marubeni Corporation, Japan became the sole shareholder of the company.', '2024-08-06 17:10:39', '2024-08-06 17:10:39'),
(8, 10, 'MTN Ghana', 'mtn-ghana', '82535 Green Skyway\nAccra, Kasoa Highway', '+1-610-867-2771', 'https://mtn.com.gh/', 'mtn.jpeg', 'banner.png', 'Everywhere you go', 'MTN’s history began in 1994 with the registration of Scancom Limited as a company in Ghana and the launch of operations two years later, in November 1996, under the trade name, Spacefon.', '2024-08-06 17:10:39', '2024-08-06 17:10:39'),
(9, 11, 'ZOOMLION GHANA LTD', 'zoomlion-ghana-ltd', '92572 Shields Pass Apt. 551\nAubreestad, NJ 81659', '(419) 457-8735', 'https://zoomlionghana.com/', 'zoomlion.jpeg', 'banner.png', 'Championing Sustainability Through Waste Management', 'Zoomlion Ghana Limited has over the years emerged as a leader in providing sustainable waste management and environmental sanitation services across Ghana and beyond. Our integrated waste management solutions aim to achieve a sustainable world', '2024-08-06 17:10:39', '2024-08-06 17:10:39'),
(10, 103, 'Ghana-Kofi Annan Centre of Excellence in ICT', 'gi-kace', 'Haile Selassie St., opp. Council of State', '+233 55 666 0355', 'https://gi-kace.gov.gh/', '1724613824.jpg', '1722980721.jpg', 'We serve you better', 'The core aim of the Centre is to promote individual and institutional capacity building; research and innovation; consultancy and advisory services in the area of ICT', '2024-08-06 21:35:03', '2024-08-25 19:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(2, 301, 401, '2024-08-06 21:59:40', '2024-08-06 21:59:40'),
(3, 301, 212, '2024-08-27 17:09:02', '2024-08-27 17:09:02'),
(4, 301, 16, '2024-08-27 17:09:37', '2024-08-27 17:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `company_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `roles` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `featured` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `last_date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_of_vacancy` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `company_id`, `title`, `slug`, `description`, `roles`, `category_id`, `position`, `address`, `featured`, `type`, `status`, `last_date`, `deleted_at`, `created_at`, `updated_at`, `number_of_vacancy`, `experience`, `gender`, `salary`) VALUES
(1, '1', '4', 'Dairy Product Development Manager', 'dairy-product-development-manager', 'The Dairy Product Development Manager drives innovation in dairy product offerings, focusing on creating new flavors, improving existing products, and exploring new categories within the dairy segment. They conduct market research to identify consumer preferences and industry trends, using these insights to develop products that align with the brand\'s goals and market demand. The manager leads the product development process, working closely with R&amp;D to formulate and test new products, ensuring they meet safety and quality standards. They also collaborate with marketing teams to create compelling product launch strategies and with production teams to ensure smooth manufacturing processes. Additionally, the manager is responsible for managing the product development budget and timelines, ensuring projects are completed efficiently and effectively. Qualifications. A Bachelor’s degree in Food Science, Dairy Technology, or a related field, with 1-2 years of experience in product development within the dairy or food industry. Strong knowledge of dairy processing, market research, and consumer trends is essential. The role requires excellent project management, communication, and collaboration skills, with experience in leading cross-functional teams to bring products from concept to market.', 'The Dairy Product Development Manager is responsible for leading the creation and enhancement of dairy-based products within the Fan Milk industry. This role involves researching market trends, developing new product ideas, and overseeing the entire product development process from concept to launch. The manager collaborates with cross-functional teams, including R&D, marketing, and production, to ensure that new products meet consumer needs, quality standards, and regulatory requirements.', 22, 'Dairy Product Development Manager', 'North Industrial Area, Near TV Africa', 1, 'Fulltime', 1, '2024-09-17', NULL, '2023-08-16 16:42:03', '2024-08-23 17:23:50', 2, 2, 'any', '10000-20000'),
(2, '1', '5', 'Field Service Technician', 'field-service-technician', 'The Field Service Technician performs on-site inspections, maintenance, and repairs of electrical systems, including transformers, circuit breakers, and power lines. They respond to service calls, diagnose faults, and carry out necessary repairs to ensure uninterrupted power supply. The technician also performs routine checks to prevent potential issues and ensures compliance with safety standards and regulations. They maintain accurate records of service activities and provide technical support to other team members as needed. Qualifications. A diploma or degree in Electrical Engineering or a related field, with practical experience in electrical maintenance and repair. Strong problem-solving skills, attention to detail, and knowledge of safety regulations are required. A valid driver\'s license is essential for traveling to various job sites.', 'The Field Service Technician is responsible for maintaining and repairing electrical equipment and infrastructure within the company\'s service area. This role involves diagnosing electrical issues, performing routine inspections, and ensuring that all equipment operates efficiently and safely.', 23, 'Field Service Technician', 'Electro-Volta House P. O. Box 521  Accra, Ghana', 1, 'Partime', 0, '2024-10-31', NULL, '2023-11-14 16:42:04', '2024-08-23 18:00:54', 2, 2, 'any', '10000-20000'),
(3, '1', '6', 'Relationship Manager', 'relationship-manager', 'The Relationship Manager develops and maintains relationships with key clients, providing personalized financial advice and solutions. They analyze clients\' financial situations to offer appropriate banking products and services, such as loans, investments, and accounts. The manager also ensures high levels of customer service, resolves any issues or concerns, and works to meet or exceed sales targets. Regularly reviewing and updating client portfolios and staying informed about market trends and banking products is essential. Qualifications. A Bachelor\'s degree in Business, Finance, or a related field, with experience in client relationship management or financial services. Strong interpersonal, communication, and sales skills are required.', 'The Relationship Manager is responsible for managing and growing the bank\'s portfolio of high-value clients. This role involves building strong relationships with clients, understanding their financial needs, and offering tailored banking solutions to enhance client satisfaction and loyalty.', 11, 'Relationship Manager', 'HIGH STREET  Accra Highstreet Branch P O Box 2971, Accra', 1, 'Partime', 1, '2024-09-22', NULL, '2020-05-21 16:42:04', '2024-08-23 18:23:27', 3, 2, 'any', '50000-10000'),
(4, '1', '7', 'Sales and Marketing Manager', 'sales-and-marketing-manager', 'The Sales and Marketing Manager creates and executes strategies to boost vehicle sales and brand visibility. They manage the sales team, set sales targets, and develop marketing campaigns to promote Toyota\'s vehicles and services. The manager also analyzes market trends, oversees dealer relations, and coordinates promotional events. Monitoring sales performance, preparing reports, and ensuring alignment with the company\'s objectives are key responsibilities. Qualifications. A Bachelor\'s degree in Marketing, Business Administration, or a related field, with significant experience in sales and marketing within the automotive industry. Strong leadership, strategic planning, and communication skills are required.', 'The Sales and Marketing Manager is responsible for developing and implementing strategies to drive vehicle sales and enhance Toyota Ghana\'s market presence. This role involves managing sales teams, overseeing marketing campaigns, and building relationships with dealers and customers.', 16, 'Sales and Marketing Manager', 'HQ5G+MQM, Adjuma Cres, Accra', 1, 'Fulltime', 1, '2024-11-11', NULL, '2019-05-16 16:42:04', '2024-08-23 18:38:47', 2, 1, 'any', '10000-20000'),
(9, '1', '8', 'Network Operations Manager', 'network-operations-manager', 'The Network Operations Manager monitors and manages the performance of MTN Ghana\'s network infrastructure, ensuring minimal downtime and optimal service delivery. They lead a team of network engineers and technicians, coordinate maintenance activities, and respond to network issues promptly. The manager also develops and implements strategies to improve network performance, conducts regular audits, and ensures compliance with regulatory standards. Reporting on network health and performance metrics to senior management is a key responsibility.', 'The Network Operations Manager is responsible for overseeing the daily operations of MTN Ghana\'s telecommunications network. This role involves ensuring network reliability, managing technical teams, and implementing strategies to enhance network performance.', 3, 'Network Operations Manager', '25 Independence Ave.', 1, 'Fulltime', 1, '2024-12-10', NULL, '2023-04-19 16:42:04', '2024-08-23 19:02:22', 2, 1, 'any', '10000-20000'),
(10, '1', '9', 'Waste Management Operations Supervisor', 'waste-management-operations-supervisor', 'The Waste Management Operations Supervisor manages the scheduling and execution of waste collection routes, supervises waste collection teams, and ensures that all waste is disposed of in compliance with environmental regulations. The supervisor also monitors the performance of waste management equipment, addresses operational issues, and ensures that all safety protocols are followed. They are responsible for reporting on operational metrics and identifying opportunities to improve service delivery. Qualifications. A Bachelor\'s degree in Environmental Science, Waste Management, or a related field, with experience in operations management within the waste management industry. Strong leadership, organizational, and problem-solving skills are essential.', 'The Waste Management Operations Supervisor is responsible for overseeing daily waste collection and disposal operations. This role involves coordinating waste management teams, ensuring adherence to safety and environmental regulations, and optimizing operational efficiency.', 17, 'Waste Management Operations Supervisor', 'Nmai Djorn, Next to Ayensu River Estates, University Farm Road info@zoomlionghana.com', 1, 'Fulltime', 1, '2024-11-25', NULL, '2023-12-14 16:42:04', '2024-08-23 19:19:55', 2, 1, 'male', '10000-20000'),
(12, '1', '10', 'Procurement Officer', 'senior-procurement-officer', 'The Senior Procurement Officer manages the acquisition of technology-related goods and services, ensuring these purchases align with the organization\'s strategic goals. This role involves developing and implementing procurement strategies for IT hardware, software, and services, negotiating contracts, and managing relationships with vendors to secure the most favorable terms. The officer oversees the entire procurement process, ensuring it is efficient, compliant, and timely. They are also responsible for managing procurement risks, controlling costs within budgetary limits, and working closely with internal departments like IT and finance to ensure procurement activities support overall business needs. In addition, the Senior Procurement Officer prepares and presents procurement reports, using data analysis to identify opportunities for continuous improvement in procurement practices. Qualifications. The ideal candidate holds a Bachelor’s degree in a relevant field, such as Supply Chain Management, Business Administration, or Information Technology, with 5-7 years of experience in technology procurement. Certifications in procurement, such as CIPS or CPSM, are preferred. Strong negotiation, analytical, and communication skills are essential, along with familiarity with procurement software and ERP systems.</p><p><strong>Work Environment</strong>:<br>This role is primarily office-based in a fast-paced, technology-driven environment, with occasional travel to vendor sites as needed.</p>', 'The Senior Procurement Officer manages the procurement of technology-related goods and services, ensuring these align with the company\'s strategic objectives. This role involves developing and implementing procurement strategies for IT hardware, software, and services. The officer is responsible for identifying, evaluating, and negotiating with vendors to secure favorable terms while maintaining strong relationships. Additionally, they oversee the entire procurement process, ensuring compliance, efficiency, and timely delivery. They also focus on mitigating risks and ensuring cost-effectiveness within budget constraints, working closely with IT, finance, and other departments to ensure procurement activities support business needs. Reporting and data analysis are integral to the role, driving continuous improvement in procurement practices.', 3, 'Senior Procurement Officer', 'Haile Selassie St., opp. Council of State,PMB, State House, Accra – Ghana Digital Address: GA-079-3146', 1, 'Fulltime', 1, '2024-10-31', NULL, '2024-03-13 16:42:04', '2024-08-23 17:04:11', 1, 2, 'any', '10000-20000'),
(14, '1', '4', 'Dairy Operations Manager', 'dairy-operations-manager', 'The Dairy Operations Manager ensures the smooth running of dairy production facilities, focusing on optimizing production processes and maintaining high standards of product quality and safety. They oversee the management of production staff, equipment, and resources to meet production targets and efficiency goals. The manager coordinates with quality assurance teams to ensure compliance with safety and regulatory standards and works closely with supply chain and logistics teams to manage inventory and distribution. Additionally, they analyze production data to identify areas for improvement and implement strategies to enhance operational performance and reduce costs. Qualifications. A Bachelor’s degree in Dairy Science, Food Engineering, or a related field, with 3-4 years of experience in dairy operations or a similar role. Strong knowledge of dairy production processes, quality control, and industry regulations is essential. The role requires excellent leadership, problem-solving, and organizational skills, with experience in managing production teams and optimizing operational efficiency.</p><p> </p><p> </p>', 'The Dairy Operations Manager is responsible for overseeing and optimizing the daily operations of dairy production and distribution. This role involves managing production processes, ensuring product quality and safety, and coordinating with various departments to meet production goals. The manager also focuses on improving operational efficiency, managing resources, and ensuring compliance with industry regulations.', 22, 'Dairy Operations Manager', 'North Industrial Area, Near TV Africa', 1, 'Partime', 1, '2024-08-31', NULL, '2021-11-18 16:42:04', '2024-08-23 17:38:49', 2, 4, 'any', '50000-10000'),
(15, '1', '5', 'Power Systems Analyst', 'power-systems-analyst', 'The Power Systems Analyst evaluates data from the electrical grid to monitor system performance and identify areas for improvement. They analyze trends and system metrics to ensure optimal operation and reliability. The analyst also develops and implements strategies to enhance grid stability and efficiency, conducts simulations, and prepares reports for management. Collaboration with engineering teams to design and implement solutions to identified issues is a key aspect of the role. Qualifications. A degree in Electrical Engineering, Power Systems, or a related field, with experience in system analysis and optimization. Strong analytical skills, proficiency in data analysis tools, and knowledge of power systems are essential. Experience with grid management software is a plus.', 'The Power Systems Analyst is responsible for analyzing and optimizing the performance of the electrical grid and power systems. This role involves assessing system data, identifying inefficiencies, and recommending improvements to enhance reliability and efficiency.', 23, 'Power Systems Analyst', 'Electro-Volta House P. O. Box 521  Accra, Ghana', 1, 'Fulltime', 1, '2024-11-14', NULL, '2024-02-07 16:42:04', '2024-08-23 18:05:50', 3, 3, 'any', '50000-10000'),
(16, '1', '6', 'Credit Analyst', 'credit-analyst', 'The Credit Analyst reviews and assesses loan applications, including financial statements and credit histories, to determine the credit risk involved. They perform detailed analyses of borrowers\' financial conditions, prepare credit reports, and make recommendations for loan approvals or rejections. The analyst also monitors existing loans for any signs of potential default and provides recommendations for managing credit risk. Compliance with lending policies and regulatory requirements is a key aspect of the role. Qualifications. A Bachelor\'s degree in Finance, Accounting, or a related field, with experience in credit analysis or financial analysis. Strong analytical skills, attention to detail, and knowledge of credit assessment procedures are essential.', 'The Credit Analyst is responsible for evaluating the creditworthiness of loan applicants and making recommendations regarding credit approvals. This role involves analyzing financial data, assessing risks, and ensuring that lending decisions align with the bank\'s policies and regulations.', 11, 'Credit Analyst', 'HIGH STREET  Accra Highstreet Branch P O Box 2971, Accra', 1, 'Partime', 1, '2024-10-11', NULL, '2022-10-13 16:42:04', '2024-08-23 18:27:01', 2, 1, 'any', '50000-10000'),
(17, '1', '7', 'Automotive Service Manager', 'automotive-service-manager', 'The Automotive Service Manager is responsible for managing the service department, including supervising technicians and service advisors. They ensure that all repairs and maintenance work is performed to Toyota\'s standards and that customer service is exemplary. The manager also handles service scheduling, inventory management, and warranty claims. Improving operational efficiency, managing service budgets, and addressing customer concerns are key aspects of the role. Qualifications. A Bachelor\'s degree in Automotive Engineering, Business Administration, or a related field, with experience in automotive service management. Strong leadership, organizational, and customer service skills are essential.', 'The Automotive Service Manager oversees the service department, ensuring high-quality repair and maintenance services for Toyota vehicles. This role involves managing service staff, optimizing service operations, and ensuring customer satisfaction.', 16, 'Automotive Service Manager', 'HQ5G+MQM, Adjuma Cres, Accra', 1, 'Fulltime', 1, '2024-12-23', NULL, '2019-07-03 16:42:04', '2024-08-23 18:42:47', 1, 1, 'any', '10000-20000'),
(18, '1', '8', 'Digital Marketing Specialist', 'digital-marketing-specialist', 'The Digital Marketing Specialist creates and implements digital marketing campaigns across various platforms, including social media, email, and the MTN website. They develop engaging content, manage online advertising budgets, and analyze campaign performance to optimize results. The specialist also works to increase customer engagement through targeted promotions and online interactions. Staying updated on digital marketing trends and integrating new tools and strategies into campaigns is a key part of the role. Qualifications. A Bachelor\'s degree in Marketing, Communications, or a related field, with experience in digital marketing and social media management. Proficiency in digital marketing tools, strong creative and analytical skills, and a deep understanding of the telecom market are required.', 'The Digital Marketing Specialist is responsible for developing and executing digital marketing campaigns to promote MTN Ghana’s products and services. This role involves managing online advertising, social media strategies, and content creation to enhance brand visibility and customer engagement.', 3, 'Digital Marketing Specialist', '25 Independence Ave', 1, 'Partime', 1, '2024-10-21', NULL, '2022-06-09 16:42:04', '2024-08-23 19:08:05', 1, 1, 'any', '10000-20000'),
(19, '1', '9', 'Environmental Health and Safety (EHS) Officer', 'environmental-health-and-safety-officer', 'The EHS Officer develops and implements health and safety policies to protect employees and the environment. They conduct regular inspections and risk assessments of waste management sites, ensure compliance with environmental and safety regulations, and investigate any incidents or accidents. The officer also provides training to staff on health and safety practices, prepares reports on EHS performance, and works on continuous improvement of safety standards. Qualifications. A Bachelor\'s degree in Occupational Health and Safety, Environmental Science, or a related field, with experience in EHS management. Strong knowledge of health and safety regulations, attention to detail, and excellent communication skills are required.', 'The Environmental Health and Safety (EHS) Officer is responsible for ensuring that all waste management activities at Zoomlion adhere to health and safety regulations. This role involves conducting risk assessments, implementing safety protocols, and training staff on EHS best practices.', 17, 'Environmental Health and Safety (EHS) Officer', 'Nmai Djorn, Next to Ayensu River Estates, University Farm Road info@zoomlionghana.com', 1, 'Fulltime', 1, '2024-11-23', NULL, '2024-04-10 16:42:04', '2024-08-23 19:22:49', 2, 1, 'any', '2000-5000'),
(202, '56', '10', 'Technology Sourcing Manager', 'technology-sourcing-manager', 'The Technology Sourcing Manager develops and executes sourcing strategies for IT hardware, software, and services, managing vendor relationships to secure the best terms. They handle contract negotiations, monitor market trends, and ensure that all technology purchases are delivered on time and within budget. The manager collaborates with internal teams, such as IT and finance, to ensure that sourcing activities align with the organization’s needs. They are also responsible for assessing and mitigating risks associated with technology procurement and preparing reports on sourcing activities. Qualifications. A Bachelor’s degree in a relevant field, with 5-7 years of experience in technology sourcing or procurement, is required. Strong negotiation skills, market knowledge, and experience with procurement software are essential.', 'The Technology Sourcing Manager is responsible for identifying, evaluating, and securing technology-related products and services that meet the organization\'s needs. This role focuses on building strong vendor relationships, negotiating contracts, and ensuring that all technology acquisitions align with the company’s strategic goals. The manager oversees the sourcing process from initial request to final delivery, ensuring quality, cost-effectiveness, and compliance with company policies.', 3, 'Technology Sourcing Manager', 'Haile Selassie St., opp. Council of State,PMB, State House, Accra – Ghana Digital Address: GA-079-3146', 1, 'Partime', 1, '2024-11-28', NULL, '2020-02-19 17:10:41', '2024-08-23 17:10:47', 1, 4, 'any', '50000-10000'),
(203, '89', '4', 'Dairy Distribution Supervisor', 'dairy-distribution-supervisor', 'The Dairy Distribution Supervisor manages the logistics and transportation of dairy products, ensuring they are delivered on time and in optimal condition. They coordinate with transportation teams to plan and execute delivery schedules, oversee the loading and unloading of products, and ensure compliance with safety and quality standards during transportation. The supervisor also monitors inventory levels, manages relationships with distribution partners, and addresses any issues that arise in the distribution process. Additionally, they analyze distribution data to optimize routes, reduce costs, and improve overall efficiency. Qualifications. A Bachelor’s degree in Logistics, Supply Chain Management, or a related field, with 3-5 years of experience in distribution or logistics, preferably in the dairy or food industry. Strong organizational and communication skills are required, along with a good understanding of transportation and distribution processes. The role demands attention to detail, problem-solving abilities, and experience in managing distribution teams and coordinating with external partners.', 'The Dairy Distribution Supervisor is responsible for managing the distribution of dairy products from production facilities to retailers and customers. This role involves overseeing the logistics and transportation operations, ensuring timely and efficient delivery, and maintaining product quality throughout the distribution process.', 22, 'Dairy Distribution Supervisor', 'North Industrial Area, Near TV Africa', 1, 'Partime', 1, '2024-08-30', NULL, '2024-08-06 17:10:41', '2024-08-23 17:44:42', 1, 3, 'any', '10000-20000'),
(210, '76', '5', 'Customer Service Representative', 'customer-service-representative', '<p>The Customer Service Representative manages customer interactions through phone, email, or in-person, addressing inquiries about billing, service interruptions, and account issues. They provide accurate information about services, process service requests, and resolve complaints promptly. The representative also maintains records of customer interactions and feedback, working to improve service quality based on customer input and company policies. Qualifications. A degree or diploma in Business Administration, Customer Service, or a related field, with experience in a customer-facing role. Strong communication skills, problem-solving abilities, and proficiency in customer service software are required.</p>', 'The Customer Service Representative handles customer inquiries, complaints, and service requests related to electricity services. This role involves providing accurate information, resolving issues, and ensuring a high level of customer satisfaction.', 23, 'Customer Service Representative', 'Electro-Volta House P. O. Box 521  Accra, Ghana', 1, 'Fulltime', 1, '2024-09-12', NULL, '2024-08-06 17:10:42', '2024-09-04 17:21:06', 2, 2, 'any', '2000-5000'),
(211, '78', '6', 'Branch Operations Manager', 'branch-operations-manager', 'The Branch Operations Manager is responsible for managing all aspects of branch operations, including staff supervision, customer service, and transaction processing. They ensure that branch activities comply with bank policies and regulatory requirements, oversee the implementation of operational procedures, and address any operational issues. The manager also monitors branch performance, develops strategies to improve efficiency and customer satisfaction, and ensures that all staff are trained and motivated. Qualifications. A Bachelor\'s degree in Business Administration, Banking, or a related field, with experience in branch operations or management. Strong leadership, organizational, and problem-solving skills are required.', 'The Branch Operations Manager oversees the daily operations of a bank branch, ensuring efficient service delivery and adherence to banking policies and procedures. This role involves managing staff, optimizing branch performance, and enhancing customer satisfaction.', 11, 'Branch Operations Manager', 'HIGH STREET  Accra Highstreet Branch P O Box 2971, Accra', 1, 'Fulltime', 1, '2024-10-10', NULL, '2022-11-05 17:10:42', '2024-08-23 18:29:36', 2, 3, 'any', 'negotiable'),
(212, '65', '7', 'Product Quality Engineer', 'product-quality-engineer', 'The Product Quality Engineer monitors and evaluates the quality of Toyota vehicles, performing tests and inspections to ensure they meet company standards. They analyze quality data, identify areas for improvement, and work with engineering and manufacturing teams to implement solutions. The engineer also addresses customer feedback related to product quality and ensures compliance with industry regulations and standards. Preparing reports and participating in quality audits are key responsibilities. Qualifications. A Bachelor\'s degree in Mechanical Engineering, Automotive Engineering, or a related field, with experience in quality engineering or automotive manufacturing. Strong analytical skills, attention to detail, and knowledge of quality control processes are required.', 'The Product Quality Engineer is responsible for ensuring that Toyota vehicles meet the company\'s quality standards. This role involves monitoring and improving product quality, conducting tests, and addressing quality issues.', 16, 'Product Quality Engineer', 'HQ5G+MQM, Adjuma Cres, Accra', 1, 'Partime', 1, '2024-11-21', NULL, '2020-06-10 17:10:42', '2024-08-23 18:44:25', 1, 1, 'any', '10000-20000'),
(213, '88', '8', 'Customer Experience Manager', 'customer-experience-manager', 'The Customer Experience Manager analyzes customer feedback from various channels, including surveys, social media, and direct interactions, to identify areas for improvement. They develop strategies to enhance the customer experience, working closely with customer service, marketing, and product development teams. The manager also tracks and reports on customer satisfaction metrics, ensures that customer-facing staff are trained in best practices, and implements initiatives to resolve pain points in the customer journey. Qualification. A Bachelor\'s degree in Business Administration, Customer Service, or a related field, with experience in customer experience management. Strong analytical, communication, and project management skills are essential, along with a deep understanding of customer service principles.', 'The Customer Experience Manager is responsible for ensuring that MTN Ghana delivers a superior customer experience across all touchpoints. This role involves analyzing customer feedback, designing improvement strategies, and collaborating with various departments to enhance service quality.', 3, 'Customer Experience Manager', '25 Independence Ave', 1, 'Fulltime', 1, '2024-09-21', NULL, '2022-09-08 17:10:42', '2024-08-23 19:11:06', 2, 1, 'any', '10000-20000'),
(214, '93', '9', 'Fleet Manager', 'fleet-manager', 'The Fleet Manager oversees the maintenance, repair, and operation of Zoomlion’s fleet of vehicles, including waste collection trucks and other heavy-duty equipment. They manage vehicle scheduling, track fleet performance, and ensure that all vehicles comply with safety and environmental standards. The manager also works on optimizing fuel usage, reducing operational costs, and ensuring that vehicles are available to meet operational demands. Managing relationships with suppliers and service providers is also a key aspect of the role. Qualifications. A Bachelor\'s degree in Logistics, Mechanical Engineering, or a related field, with experience in fleet management. Strong organizational skills, technical knowledge of vehicle maintenance, and experience in the waste management industry are essential.', 'The Fleet Manager is responsible for managing Zoomlion’s fleet of waste collection and transportation vehicles. This role involves overseeing vehicle maintenance, optimizing fleet operations, and ensuring that all vehicles are operating efficiently and safely.', 17, 'Fleet Manager', 'Nmai Djorn, Next to Ayensu River Estates, University Farm Road info@zoomlionghana.com', 1, 'Partime', 1, '2024-11-12', NULL, '2023-07-12 17:10:42', '2024-08-23 19:24:41', 1, 1, 'any', '2000-5000'),
(215, '88', '10', 'Multimedia Production Manager', 'multimedia-production-manager', 'The Multimedia Production Manager leads the planning, production, and delivery of multimedia content across various platforms. They work closely with creative teams, including videographers, graphic designers, and editors, to produce high-quality content that aligns with the company’s brand and communication goals. The manager is responsible for managing production timelines, budgets, and resources, ensuring projects are completed on time and within budget. They also oversee the technical aspects of production, such as video editing, sound design, and animation, to ensure a polished final product. Additionally, the manager collaborates with marketing and communication teams to ensure that multimedia content effectively supports broader campaign strategies. Qualifications. A Bachelor’s degree in Multimedia Production, Film, Graphic Design, or a related field, with 5-7 years of experience in multimedia production. Strong project management skills, proficiency in multimedia software (e.g., Adobe Creative Suite), and a solid understanding of the production process are essential. Experience in managing creative teams and a strong portfolio of multimedia work are highly valued.', 'The Multimedia Production Manager oversees the creation and execution of multimedia projects, including video, audio, graphics, and interactive content. This role involves managing a team of creatives, coordinating production schedules, and ensuring that all multimedia content meets the organization\'s quality standards and strategic objectives. The manager is responsible for the entire production process, from concept development to final delivery.', 3, 'Multimedia Production Manager', 'Haile Selassie St., opp. Council of State,PMB, State House, Accra – Ghana Digital Address: GA-079-3146', 1, 'Fulltime', 1, '2024-09-30', NULL, '2024-01-17 17:10:42', '2024-08-23 17:14:28', 2, 7, 'any', '10000-20000'),
(256, '59', '3', 'Supply Chain Management', 'suppl-chain-management', 'Our Supply Chain Management team creates value and manages risk by providing an integrated supply chain, built on exceptional performance and empowered people. Making this happen is a team of over 200 personnel who look after our three core business areas: Contracts and Procurement, Logistics and Materials and Local Content.', 'Quasi dolore ipsam accusamus aut. Vero blanditiis atque sunt quo iure reprehenderit repudiandae perspiciatis. Minus sint distinctio reiciendis.', 1, 'Supply Chain Management', '4594 Gwendolyn Wall Suite 763\nPort Amina, NH 18411-7752', 1, 'Partime', 1, '1987-06-06', NULL, '2023-06-14 17:10:42', '2024-08-06 21:04:13', 5, 10, 'any', '45133'),
(257, '63', '8', 'Data Analyst', 'data-analyst', 'The Data Analyst collects, processes, and analyzes data from various sources within MTN Ghana to generate actionable insights. They create dashboards and reports that highlight trends, opportunities, and areas of concern, helping different departments make data-driven decisions. The analyst also works on predictive modeling and customer segmentation, using advanced analytics techniques to optimize marketing campaigns and improve network efficiency. Qualifications. A Bachelor\'s degree in Data Science, Statistics, Computer Science, or a related field, with experience in data analysis and visualization. Proficiency in data analysis tools (e.g., SQL, Python, R), strong analytical skills, and experience in the telecom industry are preferred', 'The Data Analyst is responsible for analyzing large datasets to provide insights that drive business decisions at MTN Ghana. This role involves data mining, trend analysis, and reporting on key performance indicators (KPIs) related to customer behavior, network usage, and business performance.', 3, 'Data Analyst', '25 Independence Ave', 1, 'Fulltime', 1, '2024-09-27', NULL, '2020-05-14 17:10:42', '2024-08-23 19:13:00', 3, 1, 'any', '600000 plus'),
(258, '54', '7', 'Supply Chain Coordinator', 'supply-chain-coordinator', 'The Supply Chain Coordinator oversees the logistics and supply chain activities, including procurement, inventory management, and distribution of parts and vehicles. They coordinate with suppliers to ensure timely delivery of components, manage stock levels to prevent shortages, and optimize supply chain processes to improve efficiency. The coordinator also tracks and analyzes supply chain performance, addresses any issues that arise, and works to enhance overall supply chain operations. Qualifications. A Bachelor\'s degree in Supply Chain Management, Logistics, or a related field, with experience in supply chain coordination or logistics. Strong organizational, problem-solving, and communication skills are essential.', 'The Supply Chain Coordinator manages the logistics and supply chain operations for Toyota Ghana, ensuring timely and efficient delivery of parts and vehicles. This role involves coordinating with suppliers, managing inventory, and optimizing supply chain processes.', 16, 'Supply Chain Coordinator', 'HQ5G+MQM, Adjuma Cres, Accra', 1, 'Fulltime', 1, '2024-10-24', NULL, '2022-12-16 17:10:42', '2024-08-23 18:47:24', 2, 1, 'any', '50000-10000'),
(260, '58', '4', 'Dairy Delivery Driver', 'dairy-delivery-driver', 'The Dairy Delivery Driver operates company vehicles to deliver dairy products to designated locations, including retail stores and customer premises. They ensure that deliveries are made on time and that products are handled and stored properly to maintain quality. The driver is responsible for checking the delivery load, completing necessary paperwork, and managing delivery routes efficiently. They also maintain the cleanliness and functionality of the delivery vehicle and address any issues that may arise during transportation. Providing courteous and professional customer service is a key aspect of the role, as the driver represents the company during interactions with customers. Qualifications. A valid driver\'s license appropriate for the vehicle being used, with a clean driving record. Previous experience in delivery driving, preferably in the food or dairy industry, is a plus. Strong organizational and time management skills are essential, along with good communication and customer service abilities. Physical stamina and the ability to handle and transport products safely are also required.', 'The Dairy Delivery Driver is responsible for transporting dairy products from the production facility to customers and retailers. This role involves ensuring timely and safe delivery of products, maintaining vehicle cleanliness, and providing excellent customer service during deliveries.', 22, 'Dairy Delivery Driver', 'North Industrial Area, Near TV Africa', 1, 'Partime', 1, '2024-10-24', NULL, '2020-06-25 17:10:42', '2024-08-23 17:50:36', 1, 2, 'any', '10000-20000'),
(261, '88', '5', 'Electrical Maintenance Supervisor', 'electrical-maintenance-supervisor', 'The Electrical Maintenance Supervisor supervises a team of maintenance technicians, coordinating and overseeing routine maintenance and repair activities for electrical systems. They develop maintenance schedules, ensure compliance with safety regulations, and monitor the quality of work performed. The supervisor also manages inventory for maintenance supplies, provides training to team members, and addresses any operational issues that arise. Reporting on maintenance activities and performance metrics to management is a key part of the role. Qualifications. A degree in Electrical Engineering or a related field, with significant experience in electrical maintenance and supervision. Strong leadership skills, knowledge of safety regulations, and experience with maintenance management are essential.', 'The Electrical Maintenance Supervisor oversees the maintenance and repair operations of electrical systems and infrastructure. This role involves managing a team of technicians, ensuring timely completion of maintenance tasks, and maintaining safety and quality standards.', 23, 'Electrical Maintenance Supervisor', 'Electro-Volta House P. O. Box 521  Accra, Ghana', 1, 'Fulltime', 1, '2024-12-30', NULL, '2024-05-08 17:10:42', '2024-08-23 18:13:49', 2, 3, 'any', '10000-20000'),
(262, '73', '6', 'Digital Banking Specialist', 'digital-banking-specialist', 'The Digital Banking Specialist manages the development and maintenance of the bank\'s digital banking channels, including online and mobile banking platforms. They work on improving user experience, implementing new digital solutions, and ensuring that digital services meet customer needs. The specialist also collaborates with IT teams to address technical issues, enhance cybersecurity measures, and stay updated on digital banking trends and technologies. Analyzing user feedback and performance metrics to drive continuous improvement is a key part of the role. Qualifications. A Bachelor\'s degree in Information Technology, Finance, or a related field, with experience in digital banking or IT services. Strong technical skills, knowledge of digital banking trends, and experience with user experience optimization are essential.', 'The Digital Banking Specialist focuses on developing and managing the bank\'s digital banking platforms and services. This role involves enhancing the user experience for online and mobile banking, implementing digital solutions, and ensuring cybersecurity.', 11, 'Digital Banking Specialist', 'HIGH STREET  Accra Highstreet Branch P O Box 2971, Accra', 1, 'Fulltime', 1, '2024-10-09', NULL, '2021-10-16 17:10:42', '2024-08-23 18:33:50', 3, 1, 'any', '600000 plus'),
(263, '97', '3', 'Crane and Tower Operator\n', 'crane-and-tower-operator', 'Modi iste aspernatur deleniti. Error reiciendis facilis sit pariatur magnam blanditiis labore consequatur. Animi error ullam beatae et placeat et. Et reprehenderit et suscipit corrupti ipsa ut. Molestiae molestiae vero laboriosam recusandae. Nam perferendis reprehenderit aut iusto blanditiis. Nihil inventore ut quia sint accusamus et nesciunt. Sint et autem quis incidunt quo reiciendis. Deleniti quo aliquam est voluptate deserunt eveniet. Dolores consequatur ea aspernatur eligendi possimus tempora architecto dolore.', 'Adipisci iusto voluptatem et autem itaque dolorem doloribus accusantium. Modi odit id perspiciatis modi sequi facere molestias. Accusantium deserunt est eum tenetur est est. Molestiae enim est eaque et consequatur perspiciatis aliquid. Quidem quia eveniet nobis voluptates. Doloremque facilis error rem sint. Explicabo reprehenderit earum quod quia quibusdam.', 18, 'Crane and Tower Operator', '8791 Albina Ports\nBalistreristad, ID 54782', 1, 'fulltime', 1, '2015-07-31', NULL, '2024-03-20 17:10:42', '2024-08-06 21:07:26', 7, 6, 'any', '69214'),
(265, '55', '2', 'Structural Iron and Steel Worker', 'structural-iron-and-steel-worker', 'Quia sit odio repellat suscipit magnam voluptatem dignissimos. Quia commodi porro nulla. Ducimus dolor quisquam minus veritatis accusamus voluptatum. In labore ab enim suscipit. Voluptatem alias praesentium voluptas pariatur suscipit. Enim doloremque non earum vero tenetur. Voluptatem nihil quisquam qui quia voluptates quis. Ut eius officia facilis eum velit consequuntur quo dicta.', 'Sed nihil quaerat tempora error dolores accusamus. Nulla architecto saepe enim. Odio aut voluptatem vitae praesentium aliquid necessitatibus omnis. Rerum nihil facere tempore quidem et. Rerum harum labore quo ab perferendis enim laboriosam vitae. Est facere nemo dolor et. Aut possimus animi saepe soluta dolores. Eius ab ut aut sequi dignissimos. Minima est omnis ullam aliquam. Minima ex quam aut. Quo minima et quia ipsum veniam eos mollitia. Velit ipsa nemo harum.', 13, 'Structural Iron and Steel Worker', '63135 Dejah Isle Apt. 446\nAglaemouth, AK 99513', 1, 'Partime', 1, '2023-11-19', NULL, '2019-11-15 17:10:42', '2024-08-06 21:07:40', 7, 4, 'female', '13709'),
(266, '59', '9', 'Public Relations and Communications Officer', 'public-relations-and-communications-officer', 'The Public Relations and Communications Officer develops and executes communication plans to enhance Zoomlion’s reputation and public image. They manage media relations, prepare press releases, and coordinate public outreach efforts. The officer also oversees the company’s social media presence, organizes events, and creates content that highlights the company’s commitment to environmental sustainability and community service. Monitoring public perception and responding to inquiries or concerns is also part of the role. Qualifications. A Bachelor\'s degree in Communications, Public Relations, Journalism, or a related field, with experience in public relations or corporate communications. Excellent communication skills, creativity, and experience in environmental or corporate PR are required.', 'The Public Relations and Communications Officer is responsible for managing Zoomlion’s public image and communication efforts. This role involves creating and implementing communication strategies, managing media relations, and promoting the company’s waste management initiatives.', 17, 'Public Relations and Communications Officer', 'Nmai Djorn, Next to Ayensu River Estates, University Farm Road info@zoomlionghana.com', 1, 'Fulltime', 1, '2024-12-31', NULL, '2024-04-02 17:10:42', '2024-08-23 19:29:07', 3, 1, 'male', '2000-5000'),
(401, '103', '10', 'Angular and React Frontend Developer', 'angular-and-react-frontend-developer', 'Proven Experience: 3+ years of experience in frontend development with a strong focus on Angular and React frameworks.\r\nTechnical Proficiency: Solid understanding of HTML5, CSS3, JavaScript (ES6+), and TypeScript. Experience with state management libraries (e.g., Redux, NgRx) is a plus.\r\nResponsive Design: Expertise in responsive web design principles and practices. Ability to ensure applications work seamlessly across various devices and screen sizes.\r\nAPIs: Experience with RESTful APIs and integrating frontend components with backend services.\r\nVersion Control: Proficiency in using version control systems such as Git.\r\nProblem-Solving: Strong analytical and problem-solving skills. Ability to troubleshoot complex issues and propose effective solutions.\r\nCommunication: Excellent verbal and written communication skills. Ability to collaborate effectively with cross-functional teams', 'As a Frontend Developer specializing in Angular and React, you will play a crucial role in developing and maintaining high-performance, scalable web applications. You will work closely with designers, backend developers, and product managers to deliver exceptional user experiences. Your expertise in both Angular and React will be critical in ensuring that our applications are not only functional but also efficient and user-friendly.', 4, 'Angular and React Frontend Developer', 'Haile Selassie Street, Accra Ghana', 1, 'Partime', 1, '2024-09-01', NULL, '2020-04-15 21:49:26', '2024-08-07 14:12:10', 1, 5, 'any', '10000-20000');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(2, 301, 401, '2024-08-06 21:59:43', '2024-08-06 21:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_17_185333_create_profiles_table', 1),
(7, '2023_08_17_185404_create_companies_table', 1),
(8, '2023_08_17_185453_create_categories_table', 1),
(9, '2023_08_17_185703_create_jobs_table', 1),
(10, '2023_08_17_185852_create_job_user_table', 1),
(11, '2023_08_17_185951_create_favorites_table', 1),
(12, '2023_08_24_110136_add_column_to_jobs', 1),
(13, '2023_08_26_091819_create_roles_table', 1),
(14, '2023_08_26_091900_create_role_user_table', 1),
(15, '2023_08_28_133322_create_posts_table', 1),
(16, '2023_08_30_134159_create_testimonials_table', 1),
(17, '2014_10_12_000001_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_thumbnail` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `experience` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `cover_letter` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `gender`, `dob`, `experience`, `phone`, `bio`, `cover_letter`, `resume`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 301, 'Bolga High Court', 'male', '2014-10-14', '5', '0553648750', 'Am a backend developer', 'public/files/6uqVM6hXDUM1ctYDs9mmFpfnOFjZwrRmL2ZtuONC.pdf', 'public/files/UtKFazNQLtyjnyxkJNURPPqff4gWJcDvek1PI7Pc.pdf', '1723320488.jpg', '2024-08-06 21:57:38', '2024-08-27 17:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-08-06 17:10:42', '2024-08-06 17:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 102, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(100) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `last_activity` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `video_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `profession`, `content`, `video_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'Software Developer', 'Navigating the job market as a software developer can be overwhelming, but connecting with a professional network made it much smoother. I joined this platform that offered insights into industry trends and networking opportunities. I highly recommend leveraging specialized networks and resources to accelerate your job search.', 28959265, 1, '2024-08-06 16:42:06', '2024-08-06 16:42:06'),
(2, 'Vickie Mueller DVM', 'Marketing Professional', 'I was feeling pretty lost in my job search until I found the right resources and support. I landed a fantastic marketing role at a company that perfectly aligns with my career goals. I’m grateful for the personalized guidance and encouragement throughout the process. It really boosted my confidence and made me realize my potential.', 28959265, 1, '2024-08-06 17:10:42', '2024-08-06 17:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prescott Ofori', 'admin', 'prescott@gmail.com', '2024-08-06 16:42:06', '$2y$10$24OuyWcFE9k/FSPhrb42OeEyorRkHQzTFXp8nrsrxzWjTUx0O78pa', '1', 'S3bcSeKwAQGZ5XCGU4MjPsSlEl1MMGE7YW1TFQmvW6sVQWSA7YcBTg0lYZk3', '2024-08-06 16:42:06', '2024-08-06 16:42:06'),
(2, 'System Admin', 'admin', 'admin@admin.com', '2024-08-06 16:42:06', '$2y$10$VhBS99pG3EUSkZpcxGDGn.s.M2OXvhEOE4By0W8bzNn6FalA.jY.a', '1', '0YmKL4eRDTry0JUCsUlFhLROF94HVGaeLWYm6EkvIbRD0kvH4u6lWXSgpCx1', '2024-08-06 16:42:06', '2024-08-06 16:42:06'),
(3, 'Penelope Terry DVM', 'employer', 'nmiller@example.net', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'Br7WTfzjws', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(4, 'Annabel Quitzon', 'employer', 'xnienow@example.org', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'dYNyGXVANz', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(5, 'Mr. Jacey Jakubowski Jr.', 'employer', 'monserrat.johnston@example.net', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'FCtgYa9FqS', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(6, 'Camren Brakus', 'employer', 'katelynn21@example.com', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'R8FsJB34G9', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(7, 'Oleta Bayer', 'employer', 'iwitting@example.org', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'CnU9GtqOEw', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(8, 'Ramona Pouros MD', 'employer', 'klindgren@example.org', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'htEys5MIQD', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(9, 'Carolanne McLaughlin', 'employer', 'kessler.alysa@example.org', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '09hqMPd3g2', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(10, 'Ahmed Quitzon', 'employer', 'hettinger.sim@example.net', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'qeNGetTguS', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(11, 'Krystina Ebert', 'employer', 'tyra.zemlak@example.net', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'ZOdIEoixPS', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(12, 'Charles Witting', 'seeker', 'monique.kulas@example.com', '2024-08-10 12:17:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '4KeGU5UI15', '2024-08-06 17:10:38', '2024-08-06 17:10:38'),
(103, 'Ghana-India Kofi Annan Centre of Excellence in ICT', 'employer', 'obwebsitedesign@gmail.com', '2024-08-10 12:17:01', '$2y$10$RY6MZpEI2JHUmUR8gMQNkOsKfoJoF8KYJnyS5h7tqLyvBtCJbPG8O', '1', 'gkqT1wXmhHUA6VqP4GRFddeObCQCmWDuACbh0GGXJVzVaU6itYxjC3n6nJZh', '2024-08-06 21:35:03', '2024-08-06 21:35:03'),
(301, 'Moses Annor Otu', 'seeker', 'mosesotu1355@gmail.com', '2024-08-06 21:58:00', '$2y$10$VhBS99pG3EUSkZpcxGDGn.s.M2OXvhEOE4By0W8bzNn6FalA.jY.a', '1', 'xDwNhK2ddu0sPMBywmlijk8hMEmHsws0uV4Ax0LQZnXWiWukVwyssE9T28Dl', '2024-08-06 21:57:38', '2024-08-06 21:57:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_foreign` (`user_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_user`
--
ALTER TABLE `job_user`
  ADD CONSTRAINT `job_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
