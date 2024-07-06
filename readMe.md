# The Learning Chat Documentation and Instructions of Use

**Created By:** Regina Garfias and Lucia Medina

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Copyright

© 2024 The Learning Chat Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions, and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions, and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. Neither the name of The Learning Chat Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

## The Learning Chat Documentation of Instructions and Help

Welcome to the The Learning Chat repository! This document will guide you through the steps required to set up and run the project.

## Table of Contents

1. Prerequisites
2. Installation
3. Setting Up Environment Variables
4. Running the Project
5. Usage
6. Testing
7. Other Commands
8. Contributing
9. License

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed Git.
- You have installed Python (preferably Python 3.7 or later).
- You have installed `pip` (Python package installer).

### Installing Git

**Windows:**

Download the installer from Git for Windows.

Run the installer and follow the instructions.

**macOS:**

Open Terminal and run:

brew install git

**Linux:**

Open Terminal and run:

sudo apt-get update

sudo apt-get install git

### Installing Python and Pip

**Windows and macOS:**

Download the installer from Python's official website.

Run the installer and ensure you check the box that says "Add Python to PATH."

**Linux:**

Open Terminal and run:

sudo apt-get update

sudo apt-get install python3

sudo apt-get install python3-pip

## Installation

Clone the repository and install the necessary Python packages:

Open Terminal.

Clone the repository:

git clone https://github.com/your-username/the-learning-chat.git

or use the ssh directory:

git@github.com:your-username/the-learning-chat.git

Navigate to the project directory:

cd the-learning-chat

Install the required Python packages:

pip install -r requirements.txt

**Note:** Ensure you have installed all necessary dependencies specified in the `requirements.txt` file. These dependencies are crucial for the proper functioning of the project.

Examples of what you should install:

pip install openai

pip install --upgrade openai

pip install python

## Setting Up Environment Variables

This project requires an OpenAI API key to function. You need to create a `.env` file in the root directory of the project and add your OpenAI API key.

Create a `.env` file in the project root directory:

touch .env

Open the `.env` file and add the following line, replacing `your_openai_api_key` with your actual OpenAI API key:

OPENAI_API_KEY=your_openai_api_key

## Running the Project

After setting up the environment variables, you can run the project:

Open Terminal.

Navigate to the project directory:

cd the-learning-chat

Now run the program:

python run.py

## Usage

Running the main script:

python the_learning_chat/main.py

This script prompts you to enter a prompt and a model type if desired.

Example input:

Enter the prompt (default: Hello World!): Riddle of the day!

Enter the model (default: gpt-3.5-turbo): gpt-4-turbo

Example output:

Sure, I'd love to give you a riddle! Here's one for you: I speak without a mouth and hear without ears. I have no body, but I come alive with the wind. What am I?

## Testing

To run tests, use the following commands:

python -m unittest discover tests

This command will discover and run all tests in the `tests` directory.

## Other Commands

pip run lint: Run linting checks.

pip run format: Format code using a formatter.

pip run typing: Check typing using mypy.

pip run docs: Generate documentation.

pip run build: Build the package for distribution.

pip run publish: Publish to PyPI.

## Contributing

Contributions are welcome! Please follow these steps to contribute:

Fork the repository.

Create a new branch:

git checkout -b feature-branch

Make your changes and commit them:

git commit -m 'Add some feature'

Push to the branch:

git push origin feature-branch

Create a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
