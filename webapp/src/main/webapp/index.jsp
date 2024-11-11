<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cricket Turf Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- FontAwesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, #FF7F50, #FFD700, #32CD32);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .container {
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        .login-container, .confirmation-container {
            background: #ffffff;
            border-radius: 8px;
            padding: 40px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        .login-container {
            display: block; /* Show registration form initially */
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .input-field:focus {
            outline: none;
            border-color: #32CD32;
        }

        .submit-btn {
            background-color: #32CD32;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: all 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #28a745;
        }

        .confirmation-btn {
            background-color: #32CD32;
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }

        .confirmation-btn:hover {
            background-color: #28a745;
        }

        .message {
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
            font-weight: 500;
        }

        .social-link {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        /* Styling for social media logos */
        .social-link a {
            text-decoration: none;
            padding: 12px;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            margin: 0 10px;
            font-size: 25px; /* Icon size */
        }

        /* Change color on hover */
        .social-link a:hover {
            background-color: #4682B4;
        }

        /* Specific icons styling */
        .social-link a.facebook {
            color: #3b5998;
        }

        .social-link a.twitter {
            color: #1DA1F2;
        }

        .social-link a.google {
            color: #db4437;
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Registration Form -->
    <div class="login-container">
        <h2>Turf Registration</h2>
        <form id="registrationForm">
            <input type="text" name="username" class="input-field" placeholder="Enter your name" required>
            <input type="email" name="email" class="input-field" placeholder="Enter your email" required>
            <input type="password" name="password" class="input-field" placeholder="Create a password" required>
            <input type="text" name="phone" class="input-field" placeholder="Enter your phone number" required>
            <button type="submit" class="submit-btn">Register</button>
        </form>
    </div>

    <!-- Confirmation Page -->
    <div class="confirmation-container" style="display: none;">
        <h2>Registration Successful!</h2>
        <p class="message">Thank you for registering for the Cricket Turf. Your registration has been successfully completed.</p>
        <button class="confirmation-btn" onclick="goToHome()">Go to Home</button>
        
        <div class="social-link">
            <!-- Facebook Icon -->
            <a href="https://www.facebook.com/" target="_blank" class="facebook">
                <i class="fab fa-facebook-f"></i>
            </a>
            <!-- Twitter Icon -->
            <a href="https://www.twitter.com/" target="_blank" class="twitter">
                <i class="fab fa-twitter"></i>
            </a>
            <!-- Google Icon -->
            <a href="https://www.google.com/" target="_blank" class="google">
                <i class="fab fa-google"></i>
            </a>
        </div>
    </div>
</div>

<script>
    // Handle form submission
    document.getElementById('registrationForm').addEventListener('submit', function(e) {
        e.preventDefault();  // Prevent form from reloading the page
        
        // Hide the registration form and show the confirmation message
        document.querySelector('.login-container').style.display = 'none';
        document.querySelector('.confirmation-container').style.display = 'block';
    });

    // Reset to the registration page
    function goToHome() {
        // Clear form fields
        document.getElementById('registrationForm').reset();

        // Hide confirmation message and show registration form again
        document.querySelector('.confirmation-container').style.display = 'none';
        document.querySelector('.login-container').style.display = 'block';
    }
</script>

</body>
</html>

