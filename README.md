# String Calculator TDD Kata

This repository contains a TDD (Test-Driven Development) Kata exercise for creating a simple string calculator. The goal of this Kata is to develop a calculator that can handle basic arithmetic operations on strings, using TDD principles.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Tests](#tests)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The string calculator should handle the following requirements:

1. **Empty String**: An empty string should return `0`.
2. **Single Number**: A single number should return the number itself.
3. **Two Numbers**: Two numbers separated by a comma should return their sum.
4. **Multiple Numbers**: Multiple numbers separated by commas should return their sum.
5. **Newline as Separator**: Numbers can be separated by newline characters (`\n`) in addition to commas.
6. **Custom Delimiters**: The calculator should support custom delimiters specified at the beginning of the string, e.g., `//[delimiter]\n[numbers]`.
7. **Negative Numbers**: The calculator should throw an exception when negative numbers are used.

## Installation

To get started with this project, navigate to the project directory and install the necessary dependencies.

### Dependencies

- **Ruby**: 3.2.4
- **Bundler**: 2.5.17

This project uses Ruby and the RSpec testing framework. Ensure you have Ruby installed, and then install the required gems:

    bundle install

## Usage

To use the string calculator, you can run the tests using RSpec. The tests will validate the implementation against the requirements.

    rspec

## Tests

To run the test suite, use the following command:

    rspec

The test suite covers various scenarios including:

- Empty string
- Single number
- Two numbers
- Multiple numbers
- Newline as separator
- Custom delimiters
- Handling negative numbers
