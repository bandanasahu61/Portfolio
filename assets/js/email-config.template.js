// EmailJS Configuration Template
// Copy this file to config.js and update with your actual EmailJS credentials

const emailConfig = {
    // Get these from your EmailJS dashboard
    publicKey: "YOUR_PUBLIC_KEY_HERE",
    serviceId: "YOUR_SERVICE_ID_HERE", 
    templateId: "YOUR_TEMPLATE_ID_HERE"
};

// EmailJS Template Variables (for reference)
// Use these variable names in your EmailJS template:
// {{from_name}} - Sender's name
// {{from_email}} - Sender's email
// {{message}} - Message content
// {{to_name}} - Your name (Bandana Sahu)

// Steps to setup EmailJS:
// 1. Go to https://www.emailjs.com/
// 2. Create a free account
// 3. Add an email service (Gmail, Outlook, etc.)
// 4. Create an email template
// 5. Get your Public Key, Service ID, and Template ID
// 6. Replace the values above
// 7. Update script.js with these values

export default emailConfig;