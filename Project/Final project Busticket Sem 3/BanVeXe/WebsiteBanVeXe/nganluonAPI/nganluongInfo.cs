using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteBanVeXe.nganluonAPI
{
    public class nganluongInfo
    {
        public static readonly string Merchant_id = "49652"; // mã Merchant
        public static readonly string Merchant_password = "123456";  //Merchant password
        public static readonly string Receiver_email = "minhlhth2002022@fpt.edu.vn";// email nhan tien
        public static readonly string UrlNganLuong = "https://sandbox.nganluong.vn:8088/nl35/checkout.api.nganluong.post.php";
        // dường dẫn khi thanh tán thành công
        public static readonly string return_url = "http://localhost:54015/confirm-orderPaymentOnline";
        // dường dẫn khi thanh tán thất bại
        public static readonly string cancel_url = "http://localhost:54015/cancel-order";

    }
}