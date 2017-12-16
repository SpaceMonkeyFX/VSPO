$Datum = $(get-date -f dd.MM.yyyy)

$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Username = "monitoring@"
$Password = "***geslo***"

$to = "moj@gmail.com"
#$cc = "user2@domain.com"
$subject = "Log $Datum"
$body = "Dodal sem priponko log."
$attachment = "C:\$datum.log" 

$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
#$message.cc.add($cc)
$message.from = $username
$message.attachments.add($attachment)

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)