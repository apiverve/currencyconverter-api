from setuptools import setup, find_packages

setup(
    name='apiverve_currencyconverter',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Currency Converter is a simple tool for converting currency rates. It returns the converted currency rate based on the amount and currency provided.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://currencyconverter.apiverve.com?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
