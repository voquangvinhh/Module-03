//import thư viện react và react-dom/client
import React from "react";
import ReactDOM from "react-dom/client";

//Sử dụng const để tạo biến name mang giá trị là “Your name”
const name = "Hello people";


//Nhúng tên của bạn vào React Element tạo bởi JSX
//Sử dụng JSX để khởi tạo element mang giá trị hiển thị tên của bạn
<h1 style={{ textAlign: "center" }}>
  {name}
</h1>

//Khai báo biến root và khởi tạo với ReactDOM.createRoot()
const root1 = ReactDOM.createRoot(document.getElementById("root1"));
//Truyền element ở Bước 4 vào hàm root.render()
root1.render(
  <h1 style={{ textAlign: "center" }}>
    {name}
  </h1>
);


//Nhúng tên của bạn vào React Element tạo bởi React.createElement
//Sử dụng hàm React.createElement để khởi tạo element mang giá trị hiển thị tên của bạn
React.createElement("h1", { style: { textAlign: "center" } }, name)


//Khai báo biến root và khởi tạo với ReactDOM.createRoot()
const root = ReactDOM.createRoot(document.getElementById("root"));

//Truyền element ở Bước 4 vào hàm root.render()
root.render(
  React.createElement("h1", { style: { textAlign: "center" } }, name)
);