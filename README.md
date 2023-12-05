# Exosite-STING-ML-Prediction - `FB_Omage_etal_2023`

<img src="sting.jpg" style="width: 160px; float: right;"/>

<br/>

<p align="justify">

This repository contains the code and data for our machine learning model that predicts exosite forming residues (EFRs) in proteins. Exosites are secondary binding sites on protein surfaces that modulate and regulate diverse activities such as gene expression, conformational stabilization, transport, inhibition, and moonlighting. Understanding the characteristics of exosites and their interactions with other molecules is important for drug design and discovery, as well as for elucidating protein function and regulation.

## Overview

Our model is based on the nanoenvironment concept, which describes the local structural and physicochemical properties of a protein region. We use a set of 298 descriptors extracted from the Blue Star STING database and the IPN Dictionary to characterize the nanoenvironment of each amino acid residue in a protein. We then train a support vector machine (SVM) classifier to distinguish EFRs from non-EFRs based on their nanoenvironment features. Our model achieves an accuracy of 86.7% and an F1-score of 0.76 on a benchmark dataset of 50 proteins with known exosites.

## Data

The data folder contains the following files:

-   **`exosite_proteins.txt`**: A list of 50 protein IDs from the PDB database that have experimentally validated exosites. The IDs are in the format of **`<pdb_id>_<chain_id>`**.

-   **`exosite_residues.txt`**: A list of EFRs for each protein in the **`exosite_proteins.txt`** file. The residues are in the format of **`<pdb_id>_<chain_id>_<residue_number>_<residue_name>`**.

-   **`non_exosite_residues.txt`**: A list of non-EFRs for each protein in the **`exosite_proteins.txt`** file. The residues are in the same format as the **`exosite_residues.txt`** file.

-   **`nanoenvironment_features.csv`**: A table of nanoenvironment features for each residue in the **`exosite_residues.txt`** and **`non_exosite_residues.txt`** files. The features are extracted from the Blue Star STING database and the IPN Dictionary. The table has 299 columns: the first column is the residue ID, and the rest are the feature names and values.

## Code

The code folder contains the following files:

-   **`exosite_prediction.py`**: The main script that trains and evaluates the SVM model on the data. It also generates a confusion matrix and a ROC curve for the model performance.

-   **`exosite_utils.py`**: A module that contains some helper functions for data processing and feature extraction.

-   **`requirements.txt`**: A file that specifies the Python packages and versions required to run the code.

### SQL

- Confirm colinearity among same descriptors in the database before importing

``` console
git clone 
```

## Usage

To run the code, you need to have Python 3.7 or higher installed on your system. You also need to install the packages listed in the **`requirements.txt`** file. You can do this by running the following command in your terminal:

```         
pip install -r requirements.txt 
```

Then, you can run the **`exosite_prediction.py`** script by typing:

```         
python exosite_prediction.py 
```

The script will output the accuracy, precision, recall, and F1-score of the model on the test set. It will also save the confusion matrix and the ROC curve as **`confusion_matrix.png`** and **`roc_curve.png`** in the code folder.

## References

The following papers and websites are the sources of the data and the methods used in this project:

-   Neshich, G., Togawa, R. C., Mancini, A. L., Kuser, P. R., Yamagishi, M. E., Pappas, G., Torres, W. V., Campos, F. F., Ferreira, L. L., Luna, F. M., Oliveira, A. G., Miura, R. T., Inoue, M. K., Horita, L. G., de Souza, D. F., Dominiquini, F., Alvaro, A., Lima, C. S., Ogawa, F. O., Gomes, G. B., Palandrani, J. F., dos Santos, G. F., de Freitas, E. M., Mattiuz, A. R., Costa, I. C., de Almeida, C. L., Souza, S., Baudet, C., Higa, R. H. (2003). STING Millennium: a web-based suite of programs for comprehensive and simultaneous analysis of protein structure and sequence. Nucleic Acids Res, 31(13), 3386-3392. [Link]

-   Open Terminal on Linux/MacOS or Command Prompt on Windows

-   Enter the following into the console (one line at a time)

``` console
git clone 
jupyter notebook
```

<br/>
