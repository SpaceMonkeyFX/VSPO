# VSPO projektna naloga
Powershell skripta za predmet VSPO

Ustavl sem powershell monitoring skripto, ki zabeleži vse nameščene porgrame, vse programe, ki se zaženejo ob zagonu ter vsa trenutno odprta okna (ta zadnja se pa tudi osveži in doda v log datoteko vsakih 10 minut). Ko se uporabnik izpiše oziroma ugasne računalnik pa se ta log datoteka pošlje administratorju.

Skripti je potrebno dodati v gpedit.msc

![Image of GPEDIT](https://i.imgur.com/UzrUFrU.png)

Skripto ustvari_log.ps1 dodamo v logon.

![Image of GPEDIT logon](https://i.imgur.com/rqMBoIJ.png)

Skripto poslji_email.ps1 dodamo v logoff.

![Image of GPEDIT logoff](https://i.imgur.com/TXd89hf.png)
