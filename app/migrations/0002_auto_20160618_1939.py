# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-18 19:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='textvalue',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='item',
            name='value',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]