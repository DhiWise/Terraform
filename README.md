

# HashiCorp's Terraform 

  

<div>

<h3 align="left">Terraform Flutter app using DhiWise, Terraform and OneSignal</h1>

<strong>

Generated with ❤️ from [DhiWise](https://www.dhiwise.com)

</strong>

<p>

This is the documentation of Flutter Applications.

</p>

</div>


### About App
Using a mobile app, configure Terraform. you can create an organization, create workspaces, run the task, or cancel the task, and if you cancel the job, you will be notified through SMS and more.

### Features
-  Create new organization
-   Create a new workspace within the organization
-   Add configuration version
-   Upload configuration file to Terraform
-  Check examples of different configurations file with their providers(kreuzwerker/docker for docker)
-   Run the task
-  Add the comments and check the comments
-   List of all the organization
-  Cancel the task
-  Send SMS on canceling the task

### Third party packages Used
1. fluttertoast
2. clipboard
3. file_picker

### Screenshots
![alt text](https://github.com/kajal1598/image_01/blob/master/Frame%203.png?raw=true)


### Table of Contents

-  [System Requirements](#system-requirements)

-  [Figma design guideline for better accuracy](#figma-design-guideline-for-better-accuracy)

-  [App Navigations](#app-navigations)

-  [Project Structure](#project-structure)

-  [How you can do code formatting?](#how-you-can-do-code-formatting)
-  [Get more about app?](#get-more-about-app)

  

### System Requirements

- Dart SDK Version 2.17.0 or greater.
- Flutter SDK Version 3.0.0 or greater.

 

### Figma design guideline for better accuracy

  

Read our guidelines to increase the accuracy of design conversion to code by optimizing Figma designs.

https://docs.dhiwise.com/knowledgehub/reference-guide-and-tools/figma

  

### App Navigations

  
Check your app's UI from the AppNavigation screen of your app.


### Project Structure

  

After successful build, your application structure should look like this:

  

```

├── android - contains files and folders required for running the application on an Android operating system.

├── assets - contains all images and fonts of your application.

├── ios - contains files required by the application to run the dart code on iOS platforms.

├── lib - Most important folder in the project, used to write most of the Dart code.

├── main.dart - starting point of the application

├── core

│ ├── app_export.dart - contains commonly used file imports

│ ├── constants - contains all constants classes

│ ├── errors - contains error handling classes

│ ├── network - contains network related classes

│ └── utils - contains common files and utilities of project

├── data

│ ├── apiClient - contains API calling methods

│ ├── models - contains request/response models

│ └── repository - network repository

├── localization - contains localization classes

├── presentation - contains all screens and screen controllers

│ └── screens - contains all screens

├── routes - contains all the routes of application

└── theme - contains app theme and decoration classes

└── widgets - contains all custom widget classes
```

  


### How you can do code formatting?

  

- if your code is not formatted then run following command in your terminal to format code

```

dart format .

```
### How to run 
- Add Terraform token in TerraformConstant.dart file
- Add appId, smsFrom and Token in SMSConstant.dart file
- Add UserId and TeamId in api_client.dart file
  
  Steps for run
  1. Create organization
  2. Create workspace
  3. Add configuration version
  4. upload configuration.tf file
  5. run the app
  6. add comment or cancel the task


### Get more about app?
- Documetation - 
- Medium blog- 



### MIT License

Copyright (c) 2022 DhiWise

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Join our community

- [DhiWise Discord Community](https://discord.gg/hTuNauNjyJ)
- [Github](https://github.com/DhiWise)
