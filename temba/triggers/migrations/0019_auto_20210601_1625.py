# Generated by Django 2.2.20 on 2021-06-01 16:25

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("contacts", "0131_contactimport_group_name"),
        ("triggers", "0018_auto_20210531_1503"),
    ]

    operations = [
        migrations.AddField(
            model_name="trigger",
            name="exclude_groups",
            field=models.ManyToManyField(related_name="triggers_excluded", to="contacts.ContactGroup"),
        ),
        migrations.AlterField(
            model_name="trigger",
            name="contacts",
            field=models.ManyToManyField(related_name="triggers", to="contacts.Contact"),
        ),
        migrations.AlterField(
            model_name="trigger",
            name="groups",
            field=models.ManyToManyField(related_name="triggers_included", to="contacts.ContactGroup"),
        ),
        migrations.AlterField(
            model_name="trigger",
            name="schedule",
            field=models.OneToOneField(
                null=True, on_delete=django.db.models.deletion.PROTECT, related_name="trigger", to="schedules.Schedule"
            ),
        ),
    ]
