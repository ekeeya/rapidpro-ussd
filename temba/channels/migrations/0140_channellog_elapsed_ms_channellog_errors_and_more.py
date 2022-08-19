# Generated by Django 4.0.7 on 2022-08-17 15:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("channels", "0139_channel_is_system"),
    ]

    operations = [
        migrations.AddField(
            model_name="channellog",
            name="elapsed_ms",
            field=models.IntegerField(null=True),
        ),
        migrations.AddField(
            model_name="channellog",
            name="errors",
            field=models.JSONField(null=True),
        ),
        migrations.AddField(
            model_name="channellog",
            name="http_logs",
            field=models.JSONField(null=True),
        ),
        migrations.AddField(
            model_name="channellog",
            name="log_type",
            field=models.CharField(
                choices=[
                    ("msg_send", "Message Send"),
                    ("msg_update", "Message Update"),
                    ("msg_receive", "Message Receive"),
                    ("ivr_start", "IVR Start"),
                    ("ivr_callback", "IVR Callback"),
                    ("contact_update", "Contact Update"),
                    ("token_refresh", "Token Refresh"),
                ],
                max_length=16,
                null=True,
            ),
        ),
    ]