import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

from app03.settings.base import SMTP_PASSWORD, SMTP_USERNAME, SMTP_PORT, SMTP_SERVER, RECEIVER_EMAIL

def elige_choices(obj_choice, str):
    valor = ""
    for key, value in obj_choice:
        if key == str:
            valor = value
    return valor

def send_email(sender_email, subject, message):
    # Crea un objeto de mensaje MIME
    msg = MIMEMultipart()
    msg['From'] = sender_email
    msg['To'] = RECEIVER_EMAIL
    msg['Subject'] = subject

    # Agrega el mensaje al cuerpo del correo electrónico
    msg.attach(MIMEText(message, 'plain'))

    try:
        # Establece una conexión segura con el servidor SMTP
        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SMTP_USERNAME, SMTP_PASSWORD)

        # Envía el correo electrónico
        server.sendmail(sender_email, RECEIVER_EMAIL, msg.as_string())
        print("Correo electrónico enviado correctamente")
    except Exception as e:
        print("Error al enviar el correo electrónico:", str(e))
    finally:
        # Cierra la conexión con el servidor SMTP
        server.quit()