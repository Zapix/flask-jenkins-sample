# -*- coding: utf-8 -*-
from app import app

from flask.ext.testing import TestCase


class IndexTestCase(TestCase):

    def create_app(self):
        app.config['TESTING'] = True
        return app

    def test_sum(self):
        self.assertEquals(2+2, 4)