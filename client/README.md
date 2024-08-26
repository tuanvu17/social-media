https://www.youtube.com/watch?v=K8YELRmUb5o&t=1811s

npx creat-react-app client

npm i react-redux @reduxjs/toolkit react-dropzone dotenv  formik yup react-router-dom @mui/material @emotion/react @emotion/styled @mui/material


Thư viện quản lý trạng thái:
react-redux: Kết nối React với Redux, cho phép quản lý trạng thái toàn cục của ứng dụng.
@reduxjs/toolkit: Cung cấp các công cụ tiện lợi để tạo và quản lý store Redux, bao gồm createSlice, createAsyncThunk và các phương thức khác.
Thư viện xử lý tải lên tệp:
react-dropzone: Cho phép người dùng kéo thả tệp lên một khu vực xác định trên giao diện.
Thư viện quản lý biến môi trường:
dotenv: Đọc các biến môi trường từ một tệp .env và đưa chúng vào quá trình xây dựng ứng dụng.
Thư viện quản lý form:
formik: Cung cấp một cách đơn giản để quản lý các form trong React, bao gồm việc xác thực dữ liệu, xử lý submit và cập nhật trạng thái form.
yup: Thư viện xác thực dữ liệu, được sử dụng cùng với Formik để kiểm tra tính hợp lệ của dữ liệu nhập vào form.
Thư viện định tuyến:
react-router-dom: Cho phép định tuyến giữa các trang khác nhau trong ứng dụng React, tạo ra các URL tương ứng.
Thư viện giao diện người dùng:
@mui/material: Thư viện cung cấp các thành phần giao diện người dùng (UI) được thiết kế sẵn, giúp xây dựng giao diện ứng dụng một cách nhanh chóng và nhất quán.
@emotion/react: Thư viện cung cấp các công cụ để tạo và quản lý các styles trong React, cho phép tùy chỉnh giao diện một cách linh hoạt.
@emotion/styled: Thư viện tạo các thành phần styled-components, kết hợp giữa React và CSS để tạo ra các thành phần có kiểu dáng tùy chỉnh.


TODO: 1:54:44

useMemo là một hook của React, được sử dụng để memoize (nhớ kết quả) một giá trị. Điều này có nghĩa là hàm bên trong useMemo chỉ được gọi lại khi các dependency (ở đây là mode) thay đổi.