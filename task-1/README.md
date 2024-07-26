# First task is about Azure resource as follow! 

Please write automation for infrastructure creation in Azure Cloud for:

    1. Azure Resource Group
        - name – sre-challenge-flashenpost
        - tag – department: SRE
    2. Azure Storage account
        - name – srechallengeforflaschenpost
        - resource-group - sre-challenge-flashenpost
        - SKU – Standard_LRS
        - Access tier HOT
        - tag – department: SRE
    3. Storage Account Container
        - name – sre
        - type - private
        - storage account name – srechallengeforflaschenpost
    4. Please add outputs to expose
        - Storage account ID
        - Storage account Primary access key
        - Storage account Primary connection string
        - Container ID


# How to run?  
Terraform need to be installted 

    terraform init
    terraform workspace new dev
    terraform plan
    terraform apply 

# Problems? 
    The name of resources was not compliance with Azure standards
    