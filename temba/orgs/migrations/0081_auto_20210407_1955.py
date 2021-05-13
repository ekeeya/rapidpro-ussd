# Generated by Django 2.2.19 on 2021-04-07 19:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("orgs", "0080_auto_20210325_1059"),
    ]

    operations = [
        migrations.AlterField(
            model_name="org",
            name="language",
            field=models.CharField(
                choices=[
                    ("en-us", "English"),
                    ("pt-br", "Portuguese"),
                    ("fr", "French"),
                    ("es", "Spanish"),
                    ("ru", "Russian"),
                ],
                default="en-us",
                help_text="The default website language for new users.",
                max_length=64,
                null=True,
                verbose_name="Default Language",
            ),
        ),
    ]
