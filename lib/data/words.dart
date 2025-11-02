import '../models/word.dart';

final List<Word> words = [

// --- Chủ đề: Beach (Bãi biển) ---
  Word(topic: 'Beach', vietnamese: 'Đồ bơi', character: 'Swimsuit', transcription: '/ˈswɪm.suːt/'),
  Word(topic: 'Beach', vietnamese: 'Kem chống nắng', character: 'Sunscreen', transcription: '/ˈsʌn.skriːn/'),
  Word(topic: 'Beach', vietnamese: 'Khăn tắm', character: 'Towel', transcription: '/ˈtaʊ.əl/'),
  Word(topic: 'Beach', vietnamese: 'Bãi cát', character: 'Sand', transcription: '/sænd/'),
  Word(topic: 'Beach', vietnamese: 'Đại dương', character: 'Ocean', transcription: '/ˈəʊ.ʃən/'),
  Word(topic: 'Beach', vietnamese: 'Sóng', character: 'Wave', transcription: '/weɪv/'),

  // --- Chủ đề: Tourism (Du lịch) ---
  Word(topic: 'Tourism', vietnamese: 'Hộ chiếu', character: 'Passport', transcription: '/ˈpɑːs.pɔːt/'),
  Word(topic: 'Tourism', vietnamese: 'Khách sạn', character: 'Hotel', transcription: '/həʊˈtel/'),
  Word(topic: 'Tourism', vietnamese: 'Hành lý', character: 'Luggage', transcription: '/ˈlʌɡ.ɪdʒ/'),
  Word(topic: 'Tourism', vietnamese: 'Chuyến bay', character: 'Flight', transcription: '/flaɪt/'),
  Word(topic: 'Tourism', vietnamese: 'Du khách', character: 'Tourist', transcription: '/ˈtʊə.rɪst/'),
  Word(topic: 'Tourism', vietnamese: 'Bản đồ', character: 'Map', transcription: '/mæp/'),

  // --- Chủ đề: Cuisine (Ẩm thực) ---
  Word(topic: 'Cuisine', vietnamese: 'Mì Ý', character: 'Spaghetti', transcription: '/spəˈɡet.i/'),
  Word(topic: 'Cuisine', vietnamese: 'Pizza', character: 'Pizza', transcription: '/ˈpiːt.sə/'),
  Word(topic: 'Cuisine', vietnamese: 'Rau trộn', character: 'Salad', transcription: '/ˈsæl.əd/'),
  Word(topic: 'Cuisine', vietnamese: 'Bánh mì', character: 'Bread', transcription: '/bred/'),
  Word(topic: 'Cuisine', vietnamese: 'Phô mai', character: 'Cheese', transcription: '/tʃiːz/'),

  // --- Chủ đề: School (Trường học) ---
  Word(topic: 'School', vietnamese: 'Giáo viên', character: 'Teacher', transcription: '/ˈtiː.tʃər/'),
  Word(topic: 'School', vietnamese: 'Học sinh', character: 'Student', transcription: '/ˈstjuː.dənt/'),
  Word(topic: 'School', vietnamese: 'Sách', character: 'Book', transcription: '/bʊk/'),
  Word(topic: 'School', vietnamese: 'Bài tập về nhà', character: 'Homework', transcription: '/ˈhəʊm.wɜːk/'),
  Word(topic: 'School', vietnamese: 'Thư viện', character: 'Library', transcription: '/ˈlaɪ.brər.i/'),
  Word(topic: 'School', vietnamese: 'Lớp học', character: 'Classroom', transcription: '/ˈklɑːs.ruːm/'),

  // --- Chủ đề: Technology (Công nghệ) ---
  Word(topic: 'Technology', vietnamese: 'Máy tính', character: 'Computer', transcription: '/kəmˈpjuː.tər/'),
  Word(topic: 'Technology', vietnamese: 'Điện thoại', character: 'Smartphone', transcription: '/ˈsmɑːt.fəʊn/'),
  Word(topic: 'Technology', vietnamese: 'Internet', character: 'Internet', transcription: '/ˈɪn.tə.net/'),
  Word(topic: 'Technology', vietnamese: 'Phần mềm', character: 'Software', transcription: '/ˈsɒft.weər/'),
  Word(topic: 'Technology', vietnamese: 'Bàn phím', character: 'Keyboard', transcription: '/ˈkiː.bɔːd/'),

  // --- Chủ đề: Sports (Thể thao) ---
  Word(topic: 'Sports', vietnamese: 'Bóng đá', character: 'Football', transcription: '/ˈfʊt.bɔːl/'),
  Word(topic: 'Sports', vietnamese: 'Bơi lội', character: 'Swimming', transcription: '/ˈswɪm.ɪŋ/'),
  Word(topic: 'Sports', vietnamese: 'Bóng rổ', character: 'Basketball', transcription: '/ˈbɑː.skɪt.bɔːl/'),
  Word(topic: 'Sports', vietnamese: 'Chạy bộ', character: 'Running', transcription: '/ˈrʌn.ɪŋ/'),
  Word(topic: 'Sports', vietnamese: 'Quần vợt', character: 'Tennis', transcription: '/ˈten.ɪs/'),

  // --- Chủ đề: Family (Gia đình) ---
  Word(topic: 'Family', vietnamese: 'Cha mẹ', character: 'Parents', transcription: '/ˈpeə.rənts/'),
  Word(topic: 'Family', vietnamese: 'Anh chị em', character: 'Siblings', transcription: '/ˈsɪb.lɪŋz/'),
  Word(topic: 'Family', vietnamese: 'Mẹ', character: 'Mother', transcription: '/ˈmʌð.ər/'),
  Word(topic: 'Family', vietnamese: 'Cha', character: 'Father', transcription: '/ˈfɑː.ðər/'),
  Word(topic: 'Family', vietnamese: 'Bà', character: 'Grandmother', transcription: '/ˈɡræn.mʌð.ər/'),
  Word(topic: 'Family', vietnamese: 'Ông', character: 'Grandfather', transcription: '/ˈɡræn.fɑː.ðər/'),

  // --- Chủ đề: Animals (Động vật) ---
  Word(topic: 'Animals', vietnamese: 'Con chó', character: 'Dog', transcription: '/dɒɡ/'),
  Word(topic: 'Animals', vietnamese: 'Con mèo', character: 'Cat', transcription: '/kæt/'),
  Word(topic: 'Animals', vietnamese: 'Sư tử', character: 'Lion', transcription: '/ˈlaɪ.ən/'),
  Word(topic: 'Animals', vietnamese: 'Con voi', character: 'Elephant', transcription: '/ˈel.ɪ.fənt/'),
  Word(topic: 'Animals', vietnamese: 'Con khỉ', character: 'Monkey', transcription: '/ˈmʌŋ.ki/'),

  // --- Chủ đề: Birds (Các loài chim) ---
  Word(topic: 'Birds', vietnamese: 'Đại bàng', character: 'Eagle', transcription: '/ˈiː.ɡəl/'),
  Word(topic: 'Birds', vietnamese: 'Chim sẻ', character: 'Sparrow', transcription: '/ˈspær.əʊ/'),
  Word(topic: 'Birds', vietnamese: 'Bồ câu', character: 'Pigeon', transcription: '/ˈpɪdʒ.ən/'),
  Word(topic: 'Birds', vietnamese: 'Con cú', character: 'Owl', transcription: '/aʊl/'),

  // --- Chủ đề: Nature (Thiên nhiên) ---
  Word(topic: 'Nature', vietnamese: 'Cây cối', character: 'Tree', transcription: '/triː/'),
  Word(topic: 'Nature', vietnamese: 'Hoa', character: 'Flower', transcription: '/ˈflaʊ.ər/'),
  Word(topic: 'Nature', vietnamese: 'Núi', character: 'Mountain', transcription: '/ˈmaʊn.tɪn/'),
  Word(topic: 'Nature', vietnamese: 'Sông', character: 'River', transcription: '/ˈrɪv.ər/'),
  Word(topic: 'Nature', vietnamese: 'Bầu trời', character: 'Sky', transcription: '/skaɪ/'),

  // --- Chủ đề: Weather (Thời tiết) ---
  Word(topic: 'Weather', vietnamese: 'Trời mưa', character: 'Rainy', transcription: '/ˈreɪ.ni/'),
  Word(topic: 'Weather', vietnamese: 'Nắng', character: 'Sunny', transcription: '/ˈsʌn.i/'),
  Word(topic: 'Weather', vietnamese: 'Nhiều mây', character: 'Cloudy', transcription: '/ˈklaʊ.di/'),
  Word(topic: 'Weather', vietnamese: 'Có tuyết', character: 'Snowy', transcription: '/ˈsnəʊ.i/'),
  Word(topic: 'Weather', vietnamese: 'Có gió', character: 'Windy', transcription: '/ˈwɪn.di/'),

  // --- Chủ đề: Feeling (Cảm xúc) ---
  Word(topic: 'Feeling', vietnamese: 'Hạnh phúc', character: 'Happy', transcription: '/ˈhæp.i/'),
  Word(topic: 'Feeling', vietnamese: 'Buồn', character: 'Sad', transcription: '/sæd/'),
  Word(topic: 'Feeling', vietnamese: 'Tức giận', character: 'Angry', transcription: '/ˈæŋ.ɡri/'),
  Word(topic: 'Feeling', vietnamese: 'Mệt mỏi', character: 'Tired', transcription: '/taɪəd/'),
  Word(topic: 'Feeling', vietnamese: 'Hào hứng', character: 'Excited', transcription: '/ɪkˈsaɪ.tɪd/'),

  // --- Chủ đề: Colors (Màu sắc) ---
  Word(topic: 'Colors', vietnamese: 'Đỏ', character: 'Red', transcription: '/red/'),
  Word(topic: 'Colors', vietnamese: 'Xanh dương', character: 'Blue', transcription: '/bluː/'),
  Word(topic: 'Colors', vietnamese: 'Xanh lá', character: 'Green', transcription: '/ɡriːn/'),
  Word(topic: 'Colors', vietnamese: 'Vàng', character: 'Yellow', transcription: '/ˈjel.əʊ/'),
  Word(topic: 'Colors', vietnamese: 'Đen', character: 'Black', transcription: '/blæk/'),
  Word(topic: 'Colors', vietnamese: 'Trắng', character: 'White', transcription: '/waɪt/'),

  // --- Chủ đề: Vehicles (Phương tiện) ---
  Word(topic: 'Vehicles', vietnamese: 'Ô tô', character: 'Car', transcription: '/kɑːr/'),
  Word(topic: 'Vehicles', vietnamese: 'Xe đạp', character: 'Bicycle', transcription: '/ˈbaɪ.sɪ.kəl/'),
  Word(topic: 'Vehicles', vietnamese: 'Xe buýt', character: 'Bus', transcription: '/bʌs/'),
  Word(topic: 'Vehicles', vietnamese: 'Tàu hỏa', character: 'Train', transcription: '/treɪn/'),
  Word(topic: 'Vehicles', vietnamese: 'Xe máy', character: 'Motorcycle', transcription: '/ˈməʊ.tə.saɪ.kəl/'),
  Word(topic: 'Vehicles', vietnamese: 'Máy bay', character: 'Airplane', transcription: '/ˈeə.pleɪn/'),

  // --- Chủ đề: Costumes (Trang phục) ---
  Word(topic: 'Costumes', vietnamese: 'Áo sơ mi', character: 'Shirt', transcription: '/ʃɜːt/'),
  Word(topic: 'Costumes', vietnamese: 'Giày', character: 'Shoes', transcription: '/ʃuːz/'),
  Word(topic: 'Costumes', vietnamese: 'Quần dài', character: 'Trousers', transcription: '/ˈtraʊ.zəz/'),
  Word(topic: 'Costumes', vietnamese: 'Váy (liền thân)', character: 'Dress', transcription: '/dres/'),
  Word(topic: 'Costumes', vietnamese: 'Mũ', character: 'Hat', transcription: '/hæt/'), 
  Word(topic: 'Costumes', vietnamese: 'Áo khoác', character: 'Jacket', transcription: '/ˈdʒæk.ɪt/'),

  // --- Chủ đề: Jobs (Nghề nghiệp) ---
  Word(topic: 'Jobs', vietnamese: 'Đầu bếp', character: 'Chef', transcription: '/ʃef/'),
  Word(topic: 'Jobs', vietnamese: 'Bác sĩ', character: 'Doctor', transcription: '/ˈdɒk.tər/'),
  Word(topic: 'Jobs', vietnamese: 'Y tá', character: 'Nurse', transcription: '/nɜːs/'),
  Word(topic: 'Jobs', vietnamese: 'Kỹ sư', character: 'Engineer', transcription: '/ˌen.dʒɪˈnɪər/'), 
  Word(topic: 'Jobs', vietnamese: 'Cảnh sát', character: 'Police Officer', transcription: '/pəˈliːs ɒf.ɪ.sər/'), 
  Word(topic: 'Jobs', vietnamese: 'Nông dân', character: 'Farmer', transcription: '/ˈfɑː.mər/'),
];