# Generated by Django 2.2.20 on 2021-06-01 16:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("triggers", "0019_auto_20210601_1625"),
    ]

    operations = [
        migrations.AlterField(
            model_name="trigger",
            name="referrer_id",
            field=models.CharField(max_length=255, null=True),
        ),
    ]
