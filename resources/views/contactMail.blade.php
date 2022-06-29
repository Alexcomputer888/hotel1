<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title th:remove="all">Contact</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="https://fonts.googleapis.com/css?family=Mulish" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
            font-family: 'Mulish';
            font-size: 18px;
        }

        .footer {
            bottom: 0;
            width: 100%;
            padding-top: 45px;
        }

    </style>
</head>

<body style="background-color: #f2f2f2; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
    <table style="width:800px;text-align:left;margin:0 auto;background-color: #FFFFFF;">
        <tbody>
            <tr>
                <td>
                    <div align="center"><img class="big" src="images/banner.png"
                            style="display: block; height: auto; border: 0; width: 800px; max-width: 100%; background-repeat: no-repeat;"
                            width="500" /></div>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="padding-left: 120px; padding-right: 120px">
                        <tbody>
                            <tr>
                                <td>
                                    <h5 style="font-family: Mulish;
                    font-style: normal;
                    font-weight: 900;
                    font-size: 26px;
                    line-height: 40px;
                    margin: 28px 0 35px 0;
                    color: #A500BD"> Contact
                                    </h5>


                                </td>
                            </tr>
                            <tr>
                                {{-- //Sửa tai đây --}}
                                <td>Bạn đã nhận được một email từ : {{ $email_form }} <br><br> </td>
                            </tr>
                            <tr style="padding: 0px  20px 37px 20px">
                                <td>Tên người dùng: <span
                                        style="font-size:18px;font-weight:600;color:#A500BD;padding-top:20px"> {{ $name }}</span>
                                        {{--  //Sửa tai đây --}}
                                    <p style="margin: 0;"> Email:  {{ $email_form }}
                                    </p>
                                    <p style="margin: 0;"> Số điện thoại:  {{ $phone }}
                                    </p>
                                    {{-- <p style="margin: 0;"> Mã vùng:  {{ $country }}
                                    </p> --}}
                                    <p style="margin: 0;"> Nội dung cần hổ trợ:  {{ $messages }}
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Mulish;
                    font-style: normal;
                    font-weight: normal;
                    font-size: 18px;
                    line-height: 28px;
                    color: #4C4C4C;">
                                    <p>
                                        <hr style="border: 1px solid #414141;" />
                                        *Rất mong nhận được sự hỗ trợ!
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td style=" display: block; height: auto; border: 0; width: 800px; max-width: 100%;padding-top:70px;">
                    <div align="center"><img class="big" src="images/17_song_to_file_tr.png" /></div>
                    <div
                        style="padding-left: 120px; padding-right: 120px; background-image: url('images/footer.png'); min-height: 130px; background-repeat: no-repeat; ">
                        <div class="footer">
                            <p style="font-size:14px;font-weight:400;color:#FFFFFF;">Terms | Privacy policy</p>
                            <p style="font-size:14px;font-weight:400;color:#B3B3B3;">Copyright © 2021 Thango Viet Nam
                                TVN. All Rights Reserved</p>
                        </div>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>