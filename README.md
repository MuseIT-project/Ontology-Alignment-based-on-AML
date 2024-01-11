# **Ontology Alignment**

This project focuses on aligning ontologies by using the output of the AgreementMakerLight (AML) tool and a custom Python script for automated processing of the alignment. 

The AML tool can be installed locally on the host machine while the Ontology Aligment is supposed to be performed by employing a Docker Container on the host machine.

## **Setting Up AML**

 **Prerequisites**
 - Ensure Oracle Java (version 1.7, 1.8 or 1.9) is installed on the host machine.

**Download and Install AML:**

- AML GitHub repository:
 https://github.com/AgreementMakerLight/AML-Project


**Steps for Running AML for Ontology Alignment**

 Run AML's user interface

    
    $ java -jar AgreementMakerLight.jar
    

1) Download the two ontologies you want to align.

2) Open and Align Ontologies in AML:
    - Open the downloaded ontologies using AML's interface
    - Run the alignment process in AML.
3) Review and Validate Mappings:
    - Manually review the proposed mappings in AML.
    - Mark mappings as correct or incorrect based on your review.
    - After reviewing, go to Filter > Remove Incorrect Mappings in AML and apply this filter.
    - Save the resulting alignment (RDF file with only the correct mappings).

## **Aligning the ontologies:**

This step involves the utilization of the mapping file produced from AML, in order to actually perform the changes to the target ontology.

 **Prerequisites**

Ensure that Docker is installed on the host machine.

**Running the Docker Container**

First navigate to the folder containing the dockerfile and yaml files, and then use the following commands to set up the image and employ the container:

 ```
$ sudo docker compose up
 ```

The above command will also automatically start the python script (inside the container) that contains the auto_alignment function. The function will apply the mappings from the AML output to the source ontology. The code will automatically save the updated ontology to the specified location.

-----

<p style="text-align:center">Copyright &copy;2024 - <a href="https://catalink.eu/"> Catalink Ltd </a> - All Rights Reserved </p>
