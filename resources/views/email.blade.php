<!DOCTYPE html>
<html>
<head>
    <title>Contact Form Submission</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .email-container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            line-height: 1.5;
            color: #555555;
            margin: 10px 0;
        }
        .info-label {
            font-weight: bold;
            color: #333333;
        }
        .divider {
            margin: 20px 0;
            border-top: 1px solid #dddddd;
        }
        .footer {
            margin-top: 30px;
            font-size: 14px;
            color: #777777;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <h1>Contact Form Submission from {{ $firstName }} {{ $lastName }}</h1>
        <p><span class="info-label">Email:</span> {{ $email }}</p>
        <p><span class="info-label">Phone:</span> {{ $phone }}</p>
        <p><span class="info-label">Service:</span> {{ $service }}</p>
        <div class="divider"></div>
        <p><span class="info-label">Message:</span></p>
        <p>{{ $messageContent }}</p>
    </div>
</body>
</html>
