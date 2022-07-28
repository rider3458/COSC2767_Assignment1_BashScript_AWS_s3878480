<%--RMIT University Vietnam--%>
<%--Course: COSC2767 Systems Deployment and Operations--%>
<%--Semester: 2022B--%>
<%--Assessment: Assignment 1--%>
<%--Author: Du Duc Manh--%>
<%--ID: 3878480--%>
<%--Created date: 12/07/2022--%>
<%--Last modified: 24/07/2022--%>
<%--Acknowledgement: AWS, AWS Java OpenJDK 11, Maven 3.8.6, Tomcat 10.0.22, fontawesome, font-mfizz-2.4.1--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/11d5819750.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="font-mfizz-2.4.1/font-mfizz.css">
    <link rel="stylesheet" href="styles/index.css">
    <title>Personal Website</title>
</head>
<body>
    <div class="App">
        <div class="PersonalInfo Frame">
            <div class="AvatarWrapper">
                <a href="https://github.com/rider3458"><img alt="avatar" class="Avatar" src="images/avatar.png"/></a>
            </div>
            <ul class="InfoList">
                <li class="Info-row Info-type"><i class="fa-solid fa-user"></i> Name</li>
                <li class="Info-row Info-value">Du Duc Manh</li>
                <li class="Info-row Info-type"><i class="fa-solid fa-hashtag"></i> SID</li>
                <li class="Info-row Info-value">s3878480</li>
                <li class="Info-row Info-type"><i class="fa-solid fa-book"></i>  Education</li>
                <li class="Info-row Info-value">IT (Cloud Technologies) at RMIT University Vietnam</li>
                <li class="Info-row Info-type"><i class="fa-solid fa-code"></i> IT Skills</li>
                <li class="Info-row Info-value">ReactJS, React Native, Java, Python, PHP, HTML, CSS, MongoDB, MySQL, AWS, Linux</li>
            </ul>
        </div>
        <div class="Project Frame">
            <span>
                <h1>
                    About this project
<!--                     <i class="icon-tomcat TitleIcon"></i>
                    <i class="icon-maven TitleIcon"></i>
                    <i class="icon-aws TitleIcon"></i> -->
                    #No more icons
                </h1>
            </span>
            <p>
                This project aims to practice deploying a Java Webapp to an AWS EC2 instance through port 8080 using the Tomcat service.
                The tool for building the WAR file is Maven. The project use AWS CloudFormation to create resources:
            </p>
            <ul>
                <li>
                    An EC2 instance with a bash script in the UserData property. The instance will run that script in the first launch.
                </li>
                <li>
                    A key to be associated with the EC2 instance. Since it is created by using CloudFormation, the private key will be stored
                    as secure string in AWS System Manager Parameter Store.
                </li>
                <li>
                    A security group that allows inbound data to port 22 for SSH and port 8080 for Tomcat.
                </li>
            </ul>
            <p>
                In the script, there is a "git clone" command to download the remote private repo. Therefore, there is a parameter called Token
                to access the Github access token stored in AWS System Manager Parameter Store. The token must be saved in AWS System Manager
                Parameter Store before running the AWS CloudFormation template as CloudFormation will check for it and will not start if it cannot
                find the parameter.
            </p>
            <p>
                In the first launch, the script will be executed. Initially, it downloads Java OpenJDK 11 version by AWS and git. It will
                install Tomcat and Maven from official websites of them and unarchive the files in "/opt". Then, the paths for Java OpenJDK
                and Maven will be added to the environment PATH so Maven can run in the webapp root folder to build the WAR artifact. With all
                needed services installed, the repo will be cloned and Maven will package the webapp. The artifact will be moved to "webapps" folder
                under the Tomcat directory. Finally, the instance run a script called "startup.sh" of tomcat to run the server. The website will
                be hosted under this URL: "URI of the EC2 Instance":8080/"name of the project directory"
            </p>
            <p>
                Behind this website:
            </p>
            <ul>
                <li><i class="icon-maven TitleIcon"></i> Maven 3.8.6</li>
                <li><i class="icon-tomcat TitleIcon"></i> Tomcat 10.0.22</li>
                <li><i class="icon-aws TitleIcon"></i> AWS EC2</li>
            </ul>
        </div>
    </div>
</body>
</html>
