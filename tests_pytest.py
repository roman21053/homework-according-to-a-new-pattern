import pytest

from main import numbers, Taras


@pytest.fixture
def taras():
    return Taras(age=18, sex="male")


def test_taras_age(taras):
    assert taras.age == 18


def test_taras_sex(taras):
    assert taras.sex != "female"


def test_number_zero():
    assert numbers(0) == "zero"


def test_number_string():
    assert isinstance(numbers(0), str)


def test_number_unexpected():
    assert numbers(5) == "unexpected"
