-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 07:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_mgnt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `state_id`) VALUES
(3335, 'Hyderabad', 732),
(3336, 'Vishakhapatnam', 732),
(3337, 'Vijayawada', 732),
(3338, 'Guntur', 732),
(3339, 'Warangal', 732),
(3340, 'Rajahmundry', 732),
(3341, 'Nellore', 732),
(3342, 'Kakinada', 732),
(3343, 'Nizamabad', 732),
(3344, 'Kurnool', 732),
(3345, 'Ramagundam', 732),
(3346, 'Eluru', 732),
(3347, 'Kukatpalle', 732),
(3348, 'Anantapur', 732),
(3349, 'Tirupati', 732),
(3350, 'Secunderabad', 732),
(3351, 'Vizianagaram', 732),
(3352, 'Machilipatnam (Masulipatam)', 732),
(3353, 'Lalbahadur Nagar', 732),
(3354, 'Karimnagar', 732),
(3355, 'Tenali', 732),
(3356, 'Adoni', 732),
(3357, 'Proddatur', 732),
(3358, 'Chittoor', 732),
(3359, 'Khammam', 732),
(3360, 'Malkajgiri', 732),
(3361, 'Cuddapah', 732),
(3362, 'Bhimavaram', 732),
(3363, 'Nandyal', 732),
(3364, 'Mahbubnagar', 732),
(3365, 'Guntakal', 732),
(3366, 'Qutubullapur', 732),
(3367, 'Hindupur', 732),
(3368, 'Gudivada', 732),
(3369, 'Ongole', 732),
(3370, 'Guwahati (Gauhati)', 733),
(3371, 'Dibrugarh', 733),
(3372, 'Silchar', 733),
(3373, 'Nagaon', 733),
(3374, 'Patna', 734),
(3375, 'Gaya', 734),
(3376, 'Bhagalpur', 734),
(3377, 'Muzaffarpur', 734),
(3378, 'Darbhanga', 734),
(3379, 'Bihar Sharif', 734),
(3380, 'Arrah (Ara)', 734),
(3381, 'Katihar', 734),
(3382, 'Munger (Monghyr)', 734),
(3383, 'Chapra', 734),
(3384, 'Sasaram', 734),
(3385, 'Dehri', 734),
(3386, 'Bettiah', 734),
(3387, 'Chandigarh', 735),
(3388, 'Raipur', 736),
(3389, 'Bhilai', 736),
(3390, 'Bilaspur', 736),
(3391, 'Durg', 736),
(3392, 'Raj Nandgaon', 736),
(3393, 'Korba', 736),
(3394, 'Raigarh', 736),
(3395, 'Delhi', 737),
(3396, 'New Delhi', 737),
(3397, 'Delhi Cantonment', 737),
(3398, 'Ahmedabad', 738),
(3399, 'Surat', 738),
(3400, 'Vadodara (Baroda)', 738),
(3401, 'Rajkot', 738),
(3402, 'Bhavnagar', 738),
(3403, 'Jamnagar', 738),
(3404, 'Nadiad', 738),
(3405, 'Bharuch (Broach)', 738),
(3406, 'Junagadh', 738),
(3407, 'Navsari', 738),
(3408, 'Gandhinagar', 738),
(3409, 'Veraval', 738),
(3410, 'Porbandar', 738),
(3411, 'Anand', 738),
(3412, 'Surendranagar', 738),
(3413, 'Gandhidham', 738),
(3414, 'Bhuj', 738),
(3415, 'Godhra', 738),
(3416, 'Patan', 738),
(3417, 'Morvi', 738),
(3418, 'Vejalpur', 738),
(3419, 'Faridabad', 739),
(3420, 'Rohtak', 739),
(3421, 'Panipat', 739),
(3422, 'Karnal', 739),
(3423, 'Hisar (Hissar)', 739),
(3424, 'Yamuna Nagar', 739),
(3425, 'Sonipat (Sonepat)', 739),
(3426, 'Gurgaon', 739),
(3427, 'Sirsa', 739),
(3428, 'Ambala', 739),
(3429, 'Bhiwani', 739),
(3430, 'Ambala Sadar', 739),
(3431, 'Srinagar', 740),
(3432, 'Jammu', 740),
(3433, 'Ranchi', 741),
(3434, 'Jamshedpur', 741),
(3435, 'Bokaro Steel City', 741),
(3436, 'Dhanbad', 741),
(3437, 'Purnea (Purnia)', 741),
(3438, 'Mango', 741),
(3439, 'Hazaribag', 741),
(3440, 'Purulia', 741),
(3441, 'Bangalore', 742),
(3442, 'Hubli-Dharwad', 742),
(3443, 'Mysore', 742),
(3444, 'Belgaum', 742),
(3445, 'Gulbarga', 742),
(3446, 'Mangalore', 742),
(3447, 'Davangere', 742),
(3448, 'Bellary', 742),
(3449, 'Bijapur', 742),
(3450, 'Shimoga', 742),
(3451, 'Raichur', 742),
(3452, 'Timkur', 742),
(3453, 'Gadag Betigeri', 742),
(3454, 'Mandya', 742),
(3455, 'Bidar', 742),
(3456, 'Hospet', 742),
(3457, 'Hassan', 742),
(3458, 'Cochin (Kochi)', 743),
(3459, 'Thiruvananthapuram (Trivandrum', 743),
(3460, 'Calicut (Kozhikode)', 743),
(3461, 'Allappuzha (Alleppey)', 743),
(3462, 'Kollam (Quilon)', 743),
(3463, 'Palghat (Palakkad)', 743),
(3464, 'Tellicherry (Thalassery)', 743),
(3465, 'Indore', 744),
(3466, 'Bhopal', 744),
(3467, 'Jabalpur', 744),
(3468, 'Gwalior', 744),
(3469, 'Ujjain', 744),
(3470, 'Sagar', 744),
(3471, 'Ratlam', 744),
(3472, 'Burhanpur', 744),
(3473, 'Dewas', 744),
(3474, 'Murwara (Katni)', 744),
(3475, 'Satna', 744),
(3476, 'Morena', 744),
(3477, 'Khandwa', 744),
(3478, 'Rewa', 744),
(3479, 'Bhind', 744),
(3480, 'Shivapuri', 744),
(3481, 'Guna', 744),
(3482, 'Mandasor', 744),
(3483, 'Damoh', 744),
(3484, 'Chhindwara', 744),
(3485, 'Vidisha', 744),
(3486, 'mumbai ', 745),
(3487, 'Nagpur', 745),
(3488, 'Pune', 745),
(3489, 'Kalyan', 745),
(3490, 'Thane', 745),
(3491, 'Nashik', 745),
(3492, 'Solapur (Sholapur)', 745),
(3493, 'Shambajinagar (Aurangabad)', 745),
(3494, 'Pimpri-Chinchwad', 745),
(3495, 'Amravati', 745),
(3496, 'Kolhapur', 745),
(3497, 'Bhiwandi', 745),
(3498, 'Ulhasnagar', 745),
(3499, 'Malegaon', 745),
(3500, 'Akola', 745),
(3501, 'New Bombay', 745),
(3502, 'Dhule (Dhulia)', 745),
(3503, 'Nanded (Nander)', 745),
(3504, 'Jalgaon', 745),
(3505, 'Chandrapur', 745),
(3506, 'Ichalkaranji', 745),
(3507, 'Latur', 745),
(3508, 'Sangli', 745),
(3509, 'Parbhani', 745),
(3510, 'Ahmadnagar', 745),
(3511, 'Mira Bhayandar', 745),
(3512, 'Jalna', 745),
(3513, 'Bhusawal', 745),
(3514, 'Miraj', 745),
(3515, 'Bhir (Bid)', 745),
(3516, 'Gondiya', 745),
(3517, 'Yeotmal (Yavatmal)', 745),
(3518, 'Wardha', 745),
(3519, 'Achalpur', 745),
(3520, 'Satara', 745),
(3521, 'Imphal', 746),
(3522, 'Shillong', 747),
(3523, 'Aizawl', 748),
(3524, 'Bhubaneswar', 749),
(3525, 'Cuttack', 749),
(3526, 'Raurkela', 749),
(3527, 'Brahmapur', 749),
(3528, 'Raurkela Civil Township', 749),
(3529, 'Sambalpur', 749),
(3530, 'Puri', 749),
(3531, 'Pondicherry', 750),
(3532, 'Ludhiana', 751),
(3533, 'Amritsar', 751),
(3534, 'Jalandhar (Jullundur)', 751),
(3535, 'Patiala', 751),
(3536, 'Bhatinda (Bathinda)', 751),
(3537, 'Pathankot', 751),
(3538, 'Hoshiarpur', 751),
(3539, 'Moga', 751),
(3540, 'Abohar', 751),
(3541, 'Lahore', 751),
(3542, 'Faisalabad', 751),
(3543, 'Rawalpindi', 751),
(3544, 'Multan', 751),
(3545, 'Gujranwala', 751),
(3546, 'Sargodha', 751),
(3547, 'Sialkot', 751),
(3548, 'Bahawalpur', 751),
(3549, 'Jhang', 751),
(3550, 'Sheikhupura', 751),
(3551, 'Gujrat', 751),
(3552, 'Kasur', 751),
(3553, 'Rahim Yar Khan', 751),
(3554, 'Sahiwal', 751),
(3555, 'Okara', 751),
(3556, 'Wah', 751),
(3557, 'Dera Ghazi Khan', 751),
(3558, 'Chiniot', 751),
(3559, 'Kamoke', 751),
(3560, 'Mandi Burewala', 751),
(3561, 'Jhelum', 751),
(3562, 'Sadiqabad', 751),
(3563, 'Khanewal', 751),
(3564, 'Hafizabad', 751),
(3565, 'Muzaffargarh', 751),
(3566, 'Khanpur', 751),
(3567, 'Gojra', 751),
(3568, 'Bahawalnagar', 751),
(3569, 'Muridke', 751),
(3570, 'Pak Pattan', 751),
(3571, 'Jaranwala', 751),
(3572, 'Chishtian Mandi', 751),
(3573, 'Daska', 751),
(3574, 'Mandi Bahauddin', 751),
(3575, 'Ahmadpur East', 751),
(3576, 'Kamalia', 751),
(3577, 'Vihari', 751),
(3578, 'Wazirabad', 751),
(3579, 'Jaipur', 752),
(3580, 'Jodhpur', 752),
(3581, 'Kota', 752),
(3582, 'Bikaner', 752),
(3583, 'Ajmer', 752),
(3584, 'Udaipur', 752),
(3585, 'Alwar', 752),
(3586, 'Bhilwara', 752),
(3587, 'Ganganagar', 752),
(3588, 'Bharatpur', 752),
(3589, 'Sikar', 752),
(3590, 'Pali', 752),
(3591, 'Beawar', 752),
(3592, 'Tonk', 752),
(3593, 'Chennai (Madras)', 753),
(3594, 'Madurai', 753),
(3595, 'Coimbatore', 753),
(3596, 'Tiruchirapalli', 753),
(3597, 'Salem', 753),
(3598, 'Tiruppur (Tirupper)', 753),
(3599, 'Ambattur', 753),
(3600, 'Thanjavur', 753),
(3601, 'Tuticorin', 753),
(3602, 'Nagar Coil', 753),
(3603, 'Avadi', 753),
(3604, 'Dindigul', 753),
(3605, 'Vellore', 753),
(3606, 'Tiruvottiyur', 753),
(3607, 'Erode', 753),
(3608, 'Cuddalore', 753),
(3609, 'Kanchipuram', 753),
(3610, 'Kumbakonam', 753),
(3611, 'Tirunelveli', 753),
(3612, 'Alandur', 753),
(3613, 'Neyveli', 753),
(3614, 'Rajapalaiyam', 753),
(3615, 'Pallavaram', 753),
(3616, 'Tiruvannamalai', 753),
(3617, 'Tambaram', 753),
(3618, 'Valparai', 753),
(3619, 'Pudukkottai', 753),
(3620, 'Palayankottai', 753),
(3621, 'Agartala', 754),
(3622, 'Kanpur', 755),
(3623, 'Lucknow', 755),
(3624, 'Varanasi (Benares)', 755),
(3625, 'Agra', 755),
(3626, 'Allahabad', 755),
(3627, 'Meerut', 755),
(3628, 'Bareilly', 755),
(3629, 'Gorakhpur', 755),
(3630, 'Aligarh', 755),
(3631, 'Ghaziabad', 755),
(3632, 'Moradabad', 755),
(3633, 'Saharanpur', 755),
(3634, 'Jhansi', 755),
(3635, 'Rampur', 755),
(3636, 'Muzaffarnagar', 755),
(3637, 'Shahjahanpur', 755),
(3638, 'Mathura', 755),
(3639, 'Firozabad', 755),
(3640, 'Farrukhabad-cum-Fatehgarh', 755),
(3641, 'Mirzapur-cum-Vindhyachal', 755),
(3642, 'Sambhal', 755),
(3643, 'Noida', 755),
(3644, 'Hapur', 755),
(3645, 'Amroha', 755),
(3646, 'Maunath Bhanjan', 755),
(3647, 'Jaunpur', 755),
(3648, 'Bahraich', 755),
(3649, 'Rae Bareli', 755),
(3650, 'Bulandshahr', 755),
(3651, 'Faizabad', 755),
(3652, 'Etawah', 755),
(3653, 'Sitapur', 755),
(3654, 'Fatehpur', 755),
(3655, 'Budaun', 755),
(3656, 'Hathras', 755),
(3657, 'Unnao', 755),
(3658, 'Pilibhit', 755),
(3659, 'Gonda', 755),
(3660, 'Modinagar', 755),
(3661, 'Orai', 755),
(3662, 'Banda', 755),
(3663, 'Meerut Cantonment', 755),
(3664, 'Kanpur Cantonment', 755),
(3665, 'Dehra Dun', 756),
(3666, 'Hardwar (Haridwar)', 756),
(3667, 'Haldwani-cum-Kathgodam', 756),
(3668, 'Calcutta [Kolkata]', 757),
(3669, 'Haora (Howrah)', 757),
(3670, 'Durgapur', 757),
(3671, 'Bhatpara', 757),
(3672, 'Panihati', 757),
(3673, 'Kamarhati', 757),
(3674, 'Asansol', 757),
(3675, 'Barddhaman (Burdwan)', 757),
(3676, 'South Dum Dum', 757),
(3677, 'Barahanagar (Baranagar)', 757),
(3678, 'Siliguri (Shiliguri)', 757),
(3679, 'Bally', 757),
(3680, 'Kharagpur', 757),
(3681, 'Burnpur', 757),
(3682, 'Uluberia', 757),
(3683, 'Hugli-Chinsurah', 757),
(3684, 'Raiganj', 757),
(3685, 'North Dum Dum', 757),
(3686, 'Dabgram', 757),
(3687, 'Ingraj Bazar (English Bazar)', 757),
(3688, 'Serampore', 757),
(3689, 'Barrackpur', 757),
(3690, 'Naihati', 757),
(3691, 'Midnapore (Medinipur)', 757),
(3692, 'Navadwip', 757),
(3693, 'Krishnanagar', 757),
(3694, 'Chandannagar', 757),
(3695, 'Balurghat', 757),
(3696, 'Berhampore (Baharampur)', 757),
(3697, 'Bankura', 757),
(3698, 'Titagarh', 757),
(3699, 'Halisahar', 757),
(3700, 'Santipur', 757),
(3701, 'Kulti-Barakar', 757),
(3702, 'Barasat', 757),
(3703, 'Rishra', 757),
(3704, 'Basirhat', 757),
(3705, 'Uttarpara-Kotrung', 757),
(3706, 'North Barrackpur', 757),
(3707, 'Haldia', 757),
(3708, 'Habra', 757),
(3709, 'Kanchrapara', 757),
(3710, 'Champdani', 757),
(3711, 'Ashoknagar-Kalyangarh', 757),
(3712, 'Bansberia', 757),
(3713, 'Baidyabati', 757);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(100, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `address` varchar(225) NOT NULL,
  `check_in` varchar(12) NOT NULL,
  `check_out` varchar(12) NOT NULL,
  `bill_no` int(50) NOT NULL,
  `room_no` int(50) NOT NULL,
  `hotel_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`first_name`, `last_name`, `phone_no`, `address`, `check_in`, `check_out`, `bill_no`, `room_no`, `hotel_id`) VALUES
('satyam', 'gupta', '882884488', 'bhandup(w),mumbai-78', '01/11/2020', '27/12/2020', 1, 21, 6),
('yogesh', 'hole', '9702886666', 'mulund.thane', '17/11/2020', '20/11/2020', 2, 22, 8),
('harshit', 'shetty', '1234567890', 'dombivli', '4/12/2020', '5/12/2020', 18, 22, 6);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_location`
--

CREATE TABLE `hotel_location` (
  `hotel_id` int(100) NOT NULL,
  `city_id` int(5) NOT NULL,
  `state` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `room1` varchar(50) NOT NULL,
  `room2` varchar(30) NOT NULL,
  `room3` varchar(30) NOT NULL,
  `room4` varchar(30) NOT NULL,
  `room5` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_location`
--

INSERT INTO `hotel_location` (`hotel_id`, `city_id`, `state`, `location`, `room1`, `room2`, `room3`, `room4`, `room5`) VALUES
(1, 3486, 'maharashtra', 'mumbai', 'single', 'double', 'triple', 'quad', 'queen'),
(2, 3490, 'maharashtra', 'thane', 'single', 'double', '', '', ''),
(3, 3491, 'maharashtra', 'nashik', 'single', 'double', 'triple', 'quad', ''),
(4, 3395, 'delhi', 'delhi', 'single', 'double', 'triple', '', ''),
(5, 3629, 'uttar pradesh', 'gorakhpur', 'single', 'double', 'triple', 'quad', 'queen'),
(6, 3579, 'rajasthan', 'jaipur', 'single', 'double', 'triple', '', ''),
(8, 3580, 'rajasthan', 'jodhpur', 'single', 'double', '', '', 'queen'),
(9, 3524, 'odisha', 'bhubaneswar', 'single', 'double', '', '', ''),
(10, 3525, 'odisha', 'cuttack', 'single', 'double', 'triple', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `manager_id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`manager_id`, `name`, `email_id`, `password`) VALUES
(1, 'alok', 'alokpanda@gmail.com', 'admin'),
(2, 'rahul', 'rahul@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `country_id`) VALUES
(732, 'Andhra Pradesh', 100),
(733, 'Assam', 100),
(734, 'Bihar', 100),
(735, 'Chandigarh', 100),
(736, 'Chhatisgarh', 100),
(737, 'Delhi', 100),
(738, 'Gujarat', 100),
(739, 'Haryana', 100),
(740, 'Jammu and Kashmir', 100),
(741, 'Jharkhand', 100),
(742, 'Karnataka', 100),
(743, 'Kerala', 100),
(744, 'Madhya Pradesh', 100),
(745, 'Maharashtra', 100),
(746, 'Manipur', 100),
(747, 'Meghalaya', 100),
(748, 'Mizoram', 100),
(749, 'Orissa', 100),
(750, 'Pondicherry', 100),
(751, 'Punjab', 100),
(752, 'Rajasthan', 100),
(753, 'Tamil Nadu', 100),
(754, 'Tripura', 100),
(755, 'Uttar Pradesh', 100),
(756, 'Uttaranchal', 100),
(757, 'West Bengal', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_fk` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`bill_no`),
  ADD KEY `hotel_fk` (`hotel_id`);

--
-- Indexes for table `hotel_location`
--
ALTER TABLE `hotel_location`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `city_fk` (`city_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_fk` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6178;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `bill_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hotel_location`
--
ALTER TABLE `hotel_location`
  MODIFY `hotel_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `manager_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1652;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `state_fk` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `hotel_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_location` (`hotel_id`);

--
-- Constraints for table `hotel_location`
--
ALTER TABLE `hotel_location`
  ADD CONSTRAINT `city_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `country_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
