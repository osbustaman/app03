# Generated by Django 3.2 on 2023-05-15 15:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='plugins',
            name='plu_page',
            field=models.IntegerField(blank=True, choices=[(1, 'Home'), (2, 'About'), (3, 'WhyChooseUs'), (4, 'OurServices'), (5, 'Contact')], null=True, verbose_name='nombre de la página elemento'),
        ),
    ]
