let config = {
  minZoom: 7,  // Mức zoom nhỏ nhất của bản đồ là 7
  maxZoom:18,  // Mức zoom lớn nhất của bản đồ là 18
};


// Xác định vị trí và mức zoom ban đầu
const zoom = 18;
const lat = 10.796501883372228;
const lng = 106.666880416611385;


const map = L.map("map", config).setView([lat, lng], zoom);
map.attributionControl.setPrefix(false);

//Tạo một bản đồ mới trong phần tử HTML có id="map" và áp dụng cấu hình config.
//Thiết lập vị trí trung tâm của bản đồ với tọa độ [lat, lng] và mức zoom = 18.
//Tắt hiển thị attribution mặc định của Leaflet

L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  attribution:
      '&copy; <a href="#">LT GIS</a> cơ bản',
}).addTo(map);

//1.KHOI TAO MOT MARKER TREN BAN DO
L.marker([lat, lng]).addTo(map).bindPopup("Đại học Tài Nguyên và Môi Trường TP.HCM");
 //Tạo một marker (điểm đánh dấu) tại tọa độ [lat, lng] và thêm vào bản đồ
 //Khi người dùng bấm vào marker, popup hiển thị nội dung "Đại học Tài Nguyên và Môi Trường TP.HCM"

map.on("click", function(e){ //Khi người dùng click vào bản đồ, một sự kiện được kích hoạt.
  alert(e.latlng); //Hiển thị thông báo chứa tọa độ của điểm được click
});

//2.TAO NHIEU MARKER TREN BAN DO
let points = [
  [10.796277842333827, 106.66692171944823, "CỐ Tea House & Coffee"],
  [10.79607043221434, 106.6674328521939, "Cội Xưa Cafe"],
  [10.795703256889937, 106.66683564293746, "BINISUN COFFEE & TEA"],
  [10.795117136725134, 106.66643199662028, "Sung Cà Phê"],
]; //mảng chứa danh sách các quán cafe

// Tạo 1 vòng lặp để thực hiện thêm nhiều marker vào bản đồ

for (let i = 0; i < points.length; i++) {
  const [lat, lng, popupText] = points[i];
                                           //lấy từng giá trị trong mảng points[i] và gán vào 3 biến
                                           // i = 0 => points[0] => points[10.796277842333827, 106.66692171944823, "CỐ Tea House & Coffee"]
  marker = new L.marker([lat, lng]).bindPopup(popupText).addTo(map);
}

//3. TẠO MARKER CÓ THỂ KÉO THẢ
for (let i = 0; i < points.length; i++) {
  const lat = points[i][0];
  const lng = points[i][1];
  const popupText = points[i][2];

  // Thêm marker đến bản đồ
  // Mỗi marker có thể kéo thả
  const marker = new L.marker([lat, lng], {
      draggable: true, //draggable: true: Cho phép kéo thả marker trên bản đồ
      autoPan: true,   //autoPan: true: Khi kéo marker, bản đồ sẽ tự động di chuyển theo
  })
      .bindPopup(popupText)
      .addTo(map);

  // Kéo thả marker
  marker.on("dragend", function (e) { //Lắng nghe sự kiện "dragend", tức là khi người dùng kéo marker xong và thả ra.
const markerPlace = document.querySelector(".marker-position"); //biến markerPlace sẽ đại diện cho phần tử <div> này.
      markerPlace.textContent = `${marker.getLatLng().lat}, ${marker.getLatLng().lng}`;
  });
}