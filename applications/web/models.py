from django.db import models
from model_utils.models import TimeStampedModel

# Create your models here.
class Company(TimeStampedModel):

    OPTIONS = (
        (1, 'active'),
        (2, 'off'),
    )

    IS = (
        (1, 'yes'),
        (2, 'no'),
    )

    com_id = models.AutoField("Key", primary_key=True)
    com_namecompany = models.CharField("nombre compañia", max_length=100)
    com_imagecompany = models.ImageField("imagen compañia", upload_to='company_images/')
    com_imagecompanyicon = models.ImageField("icon imagen compañia", upload_to='company_images/')
    com_title = models.CharField("title del home", max_length=150)
    com_address = models.CharField("title del home", max_length=150)

    inq_title = models.CharField("title survey", max_length=150)
    inq_name = models.CharField("name survey", max_length=150)
    inq_initdate = models.DateTimeField("date start survey")
    inq_finishdate = models.DateTimeField("date finish survey")
    client = models.ForeignKey(Client, verbose_name="Client", on_delete=models.PROTECT, db_column="inq_client_id")
    inq_status = models.IntegerField("status survey", choices=OPTIONS, default=0)
    inq_tokens = models.IntegerField("survey from login?", choices=IS, default=1)
    inq_languaje = models.CharField("language survey", max_length=150, null=True, blank=True)
    inq_private = models.IntegerField("survey is private?", choices=IS, default=1)
    inq_timelimit = models.IntegerField("time limit in minutes", default=0)
    inq_responseporcentage = models.IntegerField("percentage survey carried out", default=0)

    def __int__(self):
        return self.inq_id

    def save(self, *args, **kwargs):
        super(Inquist, self).save(*args, **kwargs)

    class Meta:
        db_table = 'inq_inquist'
        ordering = ['inq_id']
